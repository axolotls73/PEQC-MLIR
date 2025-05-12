/*
 * AIEConverter.h: This file is part of the PEQC-MLIR project.
 *
 * Copyright (C) 2025 Colorado State University
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
#include "mlir/Dialect/ControlFlow/IR/ControlFlow.h"
#include "mlir/Dialect/ControlFlow/IR/ControlFlowOps.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Async/IR/Async.h"

#include "aie/Dialect/AIE/IR/AIEDialect.h"
#include "aie/Dialect/AIEX/IR/AIEXDialect.h"
#include "aie/Dialect/AIE/IR/AIETargetModel.h"

#include "VerifAirPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif::air {

class AIEConverter {

private:

  MLIRContext* context;
  ModuleOp module;
  xilinx::AIE::DeviceOp device = nullptr;
  OpBuilder::InsertPoint module_insertion_point;

  std::unordered_map<Value, int64_t> tile_id_map;
  std::string* global_semaphore_array_name;
  MemRefType global_semaphore_array_type;
  std::unordered_map<std::pair<Value, int>, std::string*, pair_hash> tile_dma_in_buffer_names;
  std::unordered_map<std::pair<Value, int>, int32_t, pair_hash> tile_dma_in_semaphore_indices;
  std::unordered_multimap<std::pair<Value, int>, std::string*, pair_hash> tile_dma_out_buffer_names;
  std::unordered_multimap<std::pair<Value, int>, int, pair_hash> tile_dma_out_semaphore_indices;
  std::unordered_map<Value, Type> tile_dma_elt_type;

  uint32_t current_global_sem_index = 0;
  uint32_t current_tile_id = 0;
  uint32_t current_buffer_id = 0;
  uint32_t current_semaphore_id = 0;
  uint32_t mem_id = 0;


  std::string getChannelSemaphoreArr(std::string channel_name) {
    return channel_name + "_semaphore";
  }

  // lookup in device (if exists) first, then in module
  template <typename T>
  T lookupSymbol(llvm::StringRef name) {
    if (device) {
      auto sym = device.lookupSymbol<T>(name);
      if (sym) return sym;
    }
    return module.lookupSymbol<T>(name);
  }

  std::string getTileStr(Value tile) {
    auto tileop = dyn_cast<xilinx::AIE::TileOp>(tile.getDefiningOp());
    assert(tileop);
    return std::to_string(tileop.getCol()) + "_" + std::to_string(tileop.getRow());
  }


  // assign each tile value a unique id, remove tile ops
  LogicalResult processTiles();

  LogicalResult processCores();

  LogicalResult processFlows();

  LogicalResult processLock(xilinx::AIE::LockOp op);
  LogicalResult processCountingLock(xilinx::AIE::LockOp op);
  LogicalResult processLocks();

  LogicalResult processBuffers();

  LogicalResult createDMABDCopy(Operation* op, Value tile, int32_t channel, TypedValue<MemRefType> memref, xilinx::AIE::DMAChannelDir dir, OpBuilder builder,
        std::optional<int64_t> dma_offset, SmallVector<int64_t>& dma_offsets, SmallVector<int64_t>& dma_sizes, SmallVector<int64_t>& dma_strides);
  LogicalResult processDMABD(xilinx::AIE::DMABDOp op, Value tile, int32_t channel, xilinx::AIE::DMAChannelDir dir);
  std::optional<func::FuncOp> getDMAStartOpFunc(xilinx::AIE::DMAStartOp op, Operation* memop, int dmaindex, Value tile);

  LogicalResult processCountSemProducerConsumers(func::FuncOp producer, SmallVector<func::FuncOp>& consumers, Value lock_pr_begin, Value lock_pr_end);
  void convertCountingSemaphorePatternToSpawn(SmallVector<func::FuncOp>& memfuncs);

  LogicalResult processMemOp(Operation* op, Value tile);
  LogicalResult processMem();

  LogicalResult processShimOp(xilinx::AIE::ShimDMAAllocationOp shimop);
  LogicalResult processShim();

public:

  AIEConverter(mlir::MLIRContext* context, ModuleOp module) : context(context), module(module) {
    OpBuilder b = OpBuilder(context);
    b.setInsertionPointToStart(module.getBody());
    module_insertion_point = b.saveInsertionPoint();

    module.walk([&] (xilinx::AIE::DeviceOp deviceop) {
      device = deviceop;
      return WalkResult::interrupt();
    });
  };

  LogicalResult convertAIE();
};

} //namespace mlir::verif
