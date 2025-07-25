/*
 * ConvertAirChannel.cpp: This file is part of the PEQC-MLIR project.
 *
 * Copyright (C) 2024 Colorado State University
 *
 * This program can be redistributed and/or modified under the terms
 * of the license specified in the LICENSE.txt file at the root of the
 * project.
 *
 * Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
 *          Emily Tucker <emily.tucker@colostate.edu>
 * Author: Emily Tucker <emily.tucker@colostate.edu>
 *
 */

#include "llvm/ADT/STLExtras.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Support/LogicalResult.h"

#include "mlir/IR/BuiltinDialect.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Async/IR/Async.h"
#include "air/Dialect/AIR/AIRDialect.h"

#include "VerifAirPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif::air {
#define GEN_PASS_DEF_VERIFCONVERTCHANNEL
#include "VerifAirPasses.h.inc"

#define DEBUG_TYPE "verif-channel"

#define READY_TO_PUT 0
#define READY_TO_GET 1

namespace {

///FIXME: put this somewhere it can be reused
void addAirTokenConversion(TypeConverter& tc, MLIRContext* context) {
  tc.addConversion([&](Type type) -> Type {
    // convert air::AsyncTokenType to async::TokenType
    if (auto t = mlir::dyn_cast<xilinx::air::AsyncTokenType>(type))
      return async::TokenType::get(context);
    return type;
  });
  auto addUnrealizedCast = [](OpBuilder &builder, Type type,
                              ValueRange inputs, Location loc) {
    auto cast = builder.create<UnrealizedConversionCastOp>(loc, type, inputs);
    return cast.getResult(0);
  };
  tc.addSourceMaterialization(addUnrealizedCast);
  tc.addTargetMaterialization(addUnrealizedCast);
}

// creates new async op, sets builder's insertion point to async body
///TODO: can I use more of the existing conversion stuff to do this?
void handleAsync(MLIRContext* context, Location loc,
      OpBuilder& builder, Value res, ValueRange deps) {
  TypeConverter converter;
  addAirTokenConversion(converter, context);

  SmallVector<Value> newdeps = llvm::map_to_vector(deps, [&](Value v) {
    return converter.materializeTargetConversion(builder, loc, async::TokenType::get(context), v);
  });

  auto asyncExec = builder.create<async::ExecuteOp>(
      loc, SmallVector<Type>{}, newdeps, SmallVector<Value>{},
      [&](OpBuilder &b, Location loc, ValueRange v) {
    b.create<async::YieldOp>(loc, SmallVector<Value>{});
  });

  Value newres = converter.materializeSourceConversion
      (builder, loc, xilinx::air::AsyncTokenType::get(context), asyncExec.getResult(0));
  res.replaceAllUsesWith(newres);

  builder.setInsertionPointToStart(asyncExec.getBody());
}


class ChannelConverter {

public:

ChannelConverter(MLIRContext* context, ModuleOp module, xilinx::air::ChannelOp chop) :
    context(context), module(module), chop(chop) {}

private:

MLIRContext* context;
ModuleOp module;

xilinx::air::ChannelOp chop;
xilinx::air::LaunchOp launchop = nullptr;

Type elt_type = nullptr;
std::string bufarr_name;
MemRefType bufarr_type = nullptr;
std::string semarr_name;
MemRefType semarr_type = nullptr;
SmallVector<int64_t> launchsizes;


std::optional<Type> getChannelEltType() {
  Type elt_type = IntegerType::get(context, 64); // default type if no uses
  auto uses = chop.getSymbolUses(module);
  if (!uses.has_value()) return elt_type;
  Type* current_type = nullptr;
  for (auto use : uses.value()) {
    auto useop = use.getUser();
    MemRefType usemr;
    if (auto putop = mlir::dyn_cast<xilinx::air::ChannelPutOp>(useop)) {
      usemr = mlir::dyn_cast<MemRefType>(putop.getMemref().getType());
    }
    else if (auto getop = mlir::dyn_cast<xilinx::air::ChannelGetOp>(useop)) {
      usemr = mlir::dyn_cast<MemRefType>(getop.getMemref().getType());
    }
    Type usetype = usemr.getElementType();
    if (!current_type) {
      current_type = &usetype;
      elt_type = usetype;
    }
    if (usetype != *current_type) {
      chop.emitError("expected all uses to have the same memref element type");
      return {};
    }
  }
  return elt_type;
}


LogicalResult getLaunchSizes() {
  auto usesopt = chop.getSymbolUses(module);
  if (!usesopt.has_value()) {
    launchsizes.append({1, 1});
    return success();
  }
  auto uses = usesopt.value();
  std::optional<xilinx::air::LaunchOp> launchopt = {};
  for (auto [i, use] : llvm::enumerate(uses)) {
  auto currentlaunch = use.getUser()->getParentOfType<xilinx::air::LaunchOp>();
    if (i != 0 && (launchopt.has_value() != (currentlaunch != nullptr)
          || (currentlaunch && launchopt.has_value() && currentlaunch != launchopt.value()))) {
      use.getUser()->emitError("expected channel uses to share the same launch");
      return failure();
    }
    if (currentlaunch) {
      launchopt = currentlaunch;
    }
  }
  if (!launchopt.has_value()) {
    launchsizes.append({1, 1});
    return success();
  }
  launchop = launchopt.value();
  if (launchop.getSizes().size() == 0) {
    launchsizes.append({1, 1});
    return success();
  }
  if (launchop.getSizes().size() != 2) {
    launchop.emitError("expected launch to have 2 sizes");
    return failure();
  }
  for (auto size : launchop.getSizes()) {
    std::optional<int64_t> csize = getConstantIntValue(size);
    if (!csize.has_value()) {
      launchop.emitError("expected launch to have constant sizes");
    }
    launchsizes.push_back(csize.value());
  }
  return success();
}


void buildChannelInit(SmallVector<int64_t>& sizes) {
  auto loc = chop.getLoc();
  auto builder = OpBuilder(chop.getOperation());

  // create memrefs to store channel buffers and semaphores
  builder.create<memref::GlobalOp>(loc, StringAttr::get(context, bufarr_name),
      StringAttr::get(context, "private"),TypeAttr::get(bufarr_type),
      Attribute{}, UnitAttr{}, IntegerAttr{});
  builder.create<memref::GlobalOp>(loc, StringAttr::get(context, semarr_name),
      StringAttr::get(context, "private"), TypeAttr::get(semarr_type),
      Attribute{}, UnitAttr{}, IntegerAttr{});

  // create nested for loops to initialize semaphores (and channel buffers?)
  auto loop_iters = SmallVector<Value, 2>();
  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
  Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();
  Value channel_semarr = builder.create<memref::GetGlobalOp>(loc, semarr_type, semarr_name).getResult();
  for (int64_t size : sizes) {
    Value sizeval = builder.create<arith::ConstantIndexOp>(loc, size).getResult();
    auto loop = builder.create<scf::ForOp>(loc, cst_0, sizeval, cst_1);
    loop_iters.push_back(loop.getInductionVar());
    builder.setInsertionPointToStart(loop.getBody());
  }
  Value semarr_init_sem = builder.create<SemaphoreOp>(loc,
      IntegerAttr::get(IndexType::get(context), READY_TO_PUT)).getResult();
  builder.create<memref::StoreOp>(loc, semarr_init_sem, channel_semarr, loop_iters);
  ///TODO: doesn't work bc we don't know the memref size
  // Value bufarr_init_mr = builder.create<memref::AllocOp>(loc, dynamic_elt_type);
  // builder.create<memref::StoreOp>(loc, bufarr_init_mr, channel_bufarr, loop_iters);
}

// also passes down launches through segments and herds
///TODO: keep a map so these aren't replicated for each channel put/get
std::pair<Value, Value> getLaunchIndices(Operation* op) {
  assert(op);
  // base case launch, go back down the tree
  if (auto launchop = dyn_cast<xilinx::air::LaunchOp>(op)) {
    auto iters = launchop.getIds();
    assert(iters.size() == 2);
    return {iters[0], iters[1]};
  }

  auto iters = getLaunchIndices(op->getParentOp());
  if (auto segmentop = mlir::dyn_cast<xilinx::air::SegmentOp>(op)) {
    segmentop.getSegmentOperandsMutable().append({iters.first, iters.second});
    auto  &segmentblock = segmentop.getBody().getBlocks().front();
    return {segmentblock.addArgument(iters.first.getType(), launchop.getLoc()),
        segmentblock.addArgument(iters.second.getType(), launchop.getLoc())};
  }
  else if (auto herdop = mlir::dyn_cast<xilinx::air::HerdOp>(op)) {
    herdop.getHerdOperandsMutable().append({iters.first, iters.second});
    auto  &herdblock = herdop.getBody().getBlocks().front();
    return {herdblock.addArgument(iters.first.getType(), launchop.getLoc()),
        herdblock.addArgument(iters.second.getType(), launchop.getLoc())};
  }
  return iters;
}


void buildCopy(Operation* putgetop, bool isput, ValueRange asyncDeps,
      TypedValue<MemRefType> mref, SmallVector<int64_t>& ch_sizes, SmallVector<int64_t>& ch_bsizes,
      const ValueRange opindices, const ValueRange opoffsets, const ValueRange opsizes, const ValueRange opstrides) {
  auto loc = putgetop->getLoc();
  auto builder = OpBuilder(putgetop);
  auto mrtype = mref.getType();

  // results -> async channel
  if (putgetop->getResults().size() > 0) {
    assert(putgetop->getResults().size() == 1);
    handleAsync(context, loc, builder, putgetop->getResult(0), asyncDeps);
  }

  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
  Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();

  // get canonical indices: 0 x 2 if not present
  ValueRange indices = opindices;
  SmallVector<Value> indvec;
  if (opindices.size() == 0) {
    indvec.append({cst_0, cst_0});
    indices = indvec;
  }

  // get canonical offsets: 0 x memref rank if not present
  ValueRange offsets = opoffsets;
  SmallVector<Value> offvec;
  if (offsets.size() == 0) {
    for (size_t i = 0; i < mrtype.getShape().size(); i++) {
      offvec.push_back(cst_0);
    }
    offsets = offvec;
  }

  // get canonical sizes: memref sizes if not present
  ValueRange sizes = opsizes;
  SmallVector<Value> sizevec;
  if (sizes.size() == 0) {
    for (auto size : mrtype.getShape()) {
      Value sizeval = builder.create<arith::ConstantIndexOp>(loc, size).getResult();
      sizevec.push_back(sizeval);
    }
    sizes = sizevec;
  }

  // get canonical strides: if not present, use memref sizes
  ValueRange strides = opstrides;
  SmallVector<Value> stridevec;
  if (strides.size() == 0) {
    int64_t prev = 1;
    for (auto size : llvm::reverse(mrtype.getShape())) {
      Value prevval = builder.create<arith::ConstantIndexOp>(loc, prev).getResult();
      stridevec.push_back(prevval);
      prev = size;
    }
    strides = stridevec;
  }

  // get launch indices: if not present, use 0
  SmallVector<Value> launchindices;
  assert(launchsizes.size() == 2);
  if (launchop && !(launchsizes[0] == 1 && launchsizes[1] == 1)) {
    auto indices = getLaunchIndices(putgetop);
    launchindices.append({indices.first, indices.second});
  }
  else {
    launchindices.append({cst_0, cst_0});
  }

  assert(offsets.size() == sizes.size() && sizes.size() == strides.size());
  auto numsizes = sizes.size();

  LLVM_DEBUG(
    llvm::errs() << "PROCESS PUT/GET\n";
    llvm::errs() << "  offsets: ";
    for (auto i : offsets) {
      llvm::errs() << i << " ";
    }
    llvm::errs() << "\n";
    llvm::errs() << "  sizes: ";
    for (auto i : sizes) {
      llvm::errs() << i << " ";
    }
    llvm::errs() << "\n";
    llvm::errs() << "  strides: ";
    for (auto i : strides) {
      llvm::errs() << i << " ";
    }
    llvm::errs() << "\n";
  );

  Value bufarr = builder.create<memref::GetGlobalOp>(loc, bufarr_type, bufarr_name);
  Value semarr = builder.create<memref::GetGlobalOp>(loc, semarr_type, semarr_name);

  // generate for loops, save list of iterators, insertion point to innermost
  SmallVector<Value> iterators;
  for (Value size : sizes) {
    auto forop = builder.create<scf::ForOp>(loc, cst_0, size, cst_1);
    iterators.push_back(forop.getInductionVar());
    builder.setInsertionPointToStart(forop.getBody());
  }

  // create affine map w/ iterators to linearize index
  AffineExpr indexexpr = builder.getAffineConstantExpr(0);
  SmallVector<Value> affsyms;
  for (size_t i = 0, offi = 0, stri = 1; i < numsizes; i++, offi += 2, stri += 2) {
    auto offset = builder.getAffineSymbolExpr(offi);
    auto stride = builder.getAffineSymbolExpr(stri);
    auto iter = builder.getAffineDimExpr(i);
    indexexpr = indexexpr + ((iter + offset) * stride);
    affsyms.push_back(offsets[i]);
    affsyms.push_back(strides[i]);
  }
  ///TODO: concatenate ranges instead somehow
  SmallVector<Value> affoperands;
  affoperands.append(iterators);
  affoperands.append(affsyms);
  AffineMap indexmap = AffineMap::get(numsizes, numsizes * 2, indexexpr, context);
  Value linearindex = builder.create<affine::AffineApplyOp>(loc, indexmap, affoperands).getResult();

  // delinearize index
  // auto getConstantVector
  auto delinop = builder.create<affine::AffineDelinearizeIndexOp>(loc,
      linearindex, mrtype.getShape());
  ValueRange delinindices = delinop.getResults();

  // handle broadcast, i.e. when ch_bsize > ch_size
  ValueRange ch_indices = indices;
  SmallVector<bool> eqvec = llvm::map_to_vector(llvm::zip_equal(ch_sizes, ch_bsizes),
    [](std::tuple<int64_t&, int64_t&> t){
      return std::get<0>(t) == std::get<1>(t);});
  SmallVector<Value> broadcast_indices;
  // not all ch_sizes == ch_bsizes pairwise
  if (isput && !llvm::all_of(eqvec, [](bool b){return b;})) {
    SmallVector<Value> lbs;
    SmallVector<Value> ubs;
    SmallVector<Value> steps;
    for (auto [bsize, eq] : llvm::zip_equal(ch_bsizes, eqvec)) {
      if (eq) continue;
      Value ub = builder.create<arith::ConstantIndexOp>(loc, bsize).getResult();
      ubs.push_back(ub);
      lbs.push_back(cst_0);
      steps.push_back(cst_1);
    }
    auto parop = builder.create<scf::ParallelOp>(loc, lbs, ubs, steps, SmallVector<Value>{});

    // interleave parallel iterators w/ existing indices
    size_t pariter = 0;
    for (auto [eq, index] : llvm::zip_equal(eqvec, indices)) {
      if (eq) {
        broadcast_indices.push_back(index);
        continue;
      }
      broadcast_indices.push_back(parop.getInductionVars()[pariter++]);
    }
    assert(pariter == parop.getInductionVars().size());
    ch_indices = broadcast_indices;
    builder.setInsertionPointToStart(parop.getBody());
  }

  SmallVector<Value> allindices;
  allindices.append(launchindices);
  for (auto i : ch_indices) {
    allindices.push_back(i);
  }

  // wait for semaphore
  Value sem = builder.create<memref::LoadOp>(loc, semarr, allindices).getResult();
  int wait = isput ? READY_TO_PUT : READY_TO_GET;
  int set = isput ? READY_TO_GET : READY_TO_PUT;
  Value waitval = builder.create<arith::ConstantIndexOp>(loc, wait);
  builder.create<SemaphoreWaitOp>(loc, sem, waitval);

  // handle put: copy to channel
  if (isput) {
    Value srcval = builder.create<memref::LoadOp>(loc, mref, delinindices).getResult();
    builder.create<memref::StoreOp>(loc, srcval, bufarr, allindices);
  }
  // handle get: copy from channel
  else {
    Value bufval = builder.create<memref::LoadOp>(loc, bufarr, allindices).getResult();
    builder.create<memref::StoreOp>(loc, bufval, mref, delinindices);
  }

  // set semaphore
  Value setval = builder.create<arith::ConstantIndexOp>(loc, set);
  builder.create<SemaphoreSetOp>(loc, sem, setval);
}


// check put and get ops
bool putgetWellFormed(Operation* op, BaseMemRefType mrtype, SmallVector<int64_t>& sizes, SmallVector<int64_t>& bsizes,
      ValueRange opoffsets, ValueRange opsizes, ValueRange opstrides, ValueRange opindices) {
  LLVM_DEBUG(
    llvm::errs() << "CHANNEL PUT/GET:\nindices size: " << opindices.size() << "\noffsets size: " << opoffsets.size()
        << "\nsizes size: " << opsizes.size() << "\nstrides size: " << opstrides.size() << "\n";
  );

  if (!isa<MemRefType>(mrtype) || !mrtype.hasRank() || mrtype.getNumDynamicDims() > 0) {
    op->emitError("expected air.channel.put/get to take a ranked memref of static size as input");
    return false;
  }

  if (opsizes.size() != opoffsets.size() || opoffsets.size() != opstrides.size()) {
    op->emitError("expected air.channel.put/get to have equal numbers of offsets, sizes, and strides");
    return false;
  }

  if (auto putop = dyn_cast<xilinx::air::ChannelPutOp>(op)) {
    // for put: sizes not all 1s -> same # of indices and sizes
    if (!(llvm::all_of(sizes, [](int64_t n) {return n == 1;}) || putop.getIndices().size() == sizes.size())) {
      op->emitError("expected air.channel.put to have indices equal to the number of channel sizes");
      return false;
    }
  }
  else if (auto getop = dyn_cast<xilinx::air::ChannelGetOp>(op)) {
    // for get: bsizes not all 1s -> same # of indices and bsizes
    if (!(llvm::all_of(bsizes, [](int64_t n) {return n == 1;}) || getop.getIndices().size() == bsizes.size())) {
      op->emitError("expected air.channel.get to have indices equal to the number of channel broadcast sizes");
      return false;
    }
  }
  else {
    op->emitError("uses of air.channel must be air.channel.put or air.channel.get");
    return false;
  }
  return true;
}


LogicalResult processUse(SymbolTable::SymbolUse use, SmallVector<int64_t>& sizes, SmallVector<int64_t>& bsizes) {
  auto op = use.getUser();

  // handle put and get

  if (auto putop = mlir::dyn_cast<xilinx::air::ChannelPutOp>(op)) {
    if (!putgetWellFormed(op, putop.getSrc().getType(), sizes, bsizes,
        putop.getOffsets(), putop.getSizes(), putop.getStrides(), putop.getIndices()))
      return failure();

    buildCopy(putop.getOperation(), true, putop.getAsyncDependencies(), dyn_cast<TypedValue<MemRefType>>(putop.getSrc()),
        sizes, bsizes, putop.getIndices(), putop.getOffsets(), putop.getSizes(), putop.getStrides());
  }

  else if (auto getop = mlir::dyn_cast<xilinx::air::ChannelGetOp>(op)) {
    if (!putgetWellFormed(getop.getOperation(), getop.getDst().getType(),
        sizes, bsizes, getop.getOffsets(), getop.getSizes(), getop.getStrides(), getop.getIndices()))
      return failure();

    buildCopy(getop.getOperation(), false, getop.getAsyncDependencies(), dyn_cast<TypedValue<MemRefType>>(getop.getDst()),
        sizes, bsizes, getop.getIndices(), getop.getOffsets(), getop.getSizes(), getop.getStrides());
  }

  op->erase();
  LLVM_DEBUG(
    module.emitRemark();
  );
  return success();
}


public:

LogicalResult processChannel() {
  LLVM_DEBUG(
    chop.emitRemark();
  );

  // find memref element type: needs to be the same for all uses
  auto elt_type_opt = getChannelEltType();
  if (!elt_type_opt.has_value()) return failure();
  elt_type = elt_type_opt.value();

  // get launch sizes
  if (getLaunchSizes().failed()) return failure();

  // get channel sizes
  ArrayAttr sizes_attr = chop.getSize();
  auto bsizes_attr = chop.getBroadcastShape();
  if (!bsizes_attr) bsizes_attr = chop.getSize();

  auto sizes = SmallVector<int64_t>();
  auto bsizes = SmallVector<int64_t>();
  if (sizes_attr.size() == 0 || bsizes_attr.size() == 0) {
    sizes.append({1, 1});
    bsizes.append({1, 1});
  }
  else if (sizes_attr.size() == 2 && bsizes_attr.size() == 2) {
    for (auto [size, bsize] :
          llvm::zip_equal(sizes_attr.getAsRange<IntegerAttr>(), bsizes_attr.getAsRange<IntegerAttr>())) {
      ///FIXME: assert (bsize != size) -> (size == 1)
      sizes.push_back(size.getInt());
      bsizes.push_back(bsize.getInt());
    }
  }
  else {
    chop.emitError("expected air.channel to have two sizes");
    return failure();
  }

  SmallVector<int64_t> allsizes;
  allsizes.append(launchsizes);
  allsizes.append(bsizes);
  bufarr_type = MemRefType::get(allsizes, elt_type);
  semarr_type = MemRefType::get(allsizes, SemaphoreType::get(context));
  bufarr_name = chop.getSymName().str() + "_buffer";
  semarr_name = chop.getSymName().str() + "_sem";

  buildChannelInit(allsizes);

  auto uses = chop.getSymbolUses(module);
  if (!uses.has_value()) return success();

  // handle channel put/get ops: look at all uses of channel
  for (auto use : uses.value()) {
    auto res = processUse(use, sizes, bsizes);
    if (res.failed()) return failure();
  }

  chop.erase();
  return success();
}

}; // class ChannelConverter


class VerifConvertChannel
    : public impl::VerifConvertChannelBase<VerifConvertChannel> {
public:
  using impl::VerifConvertChannelBase<VerifConvertChannel>::VerifConvertChannelBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    // process channels
    WalkResult res = module.walk([&] (xilinx::air::ChannelOp chop) {
      ChannelConverter converter = ChannelConverter(context, module, chop);
      return converter.processChannel().succeeded() ? WalkResult::advance() : WalkResult::interrupt();
    });

    if (res.wasInterrupted())
      return signalPassFailure();

    ///FIXME: check for channel put and get, fail if present (not checked by air verifier)
  }
};


} //namespace
} //namespace mlir::verif
