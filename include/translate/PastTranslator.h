/*
 * PastTranslator.h: This file is part of the PEQC-MLIR project.
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

#ifndef PASTTRANSLATOR_H
#define PASTTRANSLATOR_H


#include "past/past.h"

#include "mlir/IR/Dialect.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/ControlFlow/IR/ControlFlow.h"
#include "mlir/Dialect/ControlFlow/IR/ControlFlowOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Async/IR/Async.h"

#include "mlir/Tools/mlir-translate/MlirTranslateMain.h"
#include "mlir/Tools/mlir-translate/Translation.h"

#include "VerifDialect.h"
#include "VerifUtil.h"
#include "VerifOps.h"

#define DEBUG_TYPE "verif-translate"


namespace mlir::verif {

class PastTranslator {
  using NodeVec = std::vector<s_past_node_t*>;

  public:

  PastTranslator(bool allow_unsupported_ops, bool declare_variables, bool all_arrays_global):
      allow_unsupported_ops(allow_unsupported_ops),
      declare_variables(declare_variables),
      all_arrays_global(all_arrays_global)
      {};

  s_past_node_t* translate(Operation* op);

  private:

  //options
  bool allow_unsupported_ops;
  bool declare_variables;
  bool all_arrays_global;

  symbol_table_t* symbolTable = symbol_table_malloc();
  std::unordered_map<Value, s_symbol_t*> valueNames;
  std::unordered_map<Block*, s_symbol_t*> blockNames;

  s_past_node_t* mainFunction = nullptr;

  std::unordered_map<std::string, std::vector<s_symbol_t*>*> functionReturnVars;

  std::unordered_map<Value, s_symbol_t*> asyncGroupIndex;

  NodeVec globalDecls;
  NodeVec functionDecls;

  // if value is declared in block, add this statement to the end of the block.
  // dumb hack for subview copy back.
  std::unordered_map<Value, s_past_node_t*> blockAddAtEnd;

  int varSuffix = 0;
  int blockSuffix = 0;
  int semaphoreId = 0;

  s_symbol_t* getSymbol(std::string name);
  s_symbol_t* getVarSymbol(Value val, std::string name = "var");
  s_symbol_t* getBlockSymbol(Block* block);
  s_symbol_t* getAndMapSymbol(s_symbol_t* exists, Value newval);
  // give the second value the same symbol as the first, return symbol
  s_symbol_t* getAndMapSymbol(Value exists, Value newval);
  s_symbol_t* getTempVarSymbol(std::string name = "var");

  s_past_node_t* getVarDecl(s_symbol_t* type, s_symbol_t* var);
  s_past_node_t* declareVar(s_symbol_t* type, s_symbol_t* var);
  s_past_node_t* getVarDecl(Value val, std::string name = "var");
  s_past_node_t* declareVar(Value val, std::string name = "var");

  s_symbol_t* getTypeSymbol(const Type& t);
  std::string getTypeName(const Type& t);
  e_past_value_type_t getTypePast(const Type& t);

  // returns node at start of list
  s_past_node_t* nodeChain(NodeVec nodes);
  void nodeUnChain(s_past_node_t* nodelist, NodeVec& v);
  s_past_node_t* getNodeListEnd(s_past_node_t* nodeList);
  void nodeListClone(NodeVec& list);

  // type varname = assignval;
  s_past_node_t* getDeclareAndAssign(Type type, const char* varname,
            Value varvalue, s_past_node_t* assignval);

  s_past_node_t* getArrayAccess(s_symbol_t* arr, NodeVec ops);
  s_past_node_t* getArrayAccess(Value arr, OperandRange ops);

  s_past_node_t* getArrayCopy(s_symbol_t* src, s_symbol_t* dst,
        NodeVec src_offsets, NodeVec dst_offsets,
        NodeVec src_strides, NodeVec dst_strides,
        NodeVec sizes);

  s_past_node_t* getArrayCopy(s_symbol_t* src, s_symbol_t* dst,
      NodeVec src_offsets, NodeVec dst_offsets,
      NodeVec sizes);

  // macro call: COPY_[N]D(src, 0, [size of dim 1], ... 0, [size of dim N], dst, 0, [size of dim 1], ... 0, [size of dim N])
  s_past_node_t* getArrayCopy(const MemRefType& type, s_symbol_t* src, s_symbol_t* dst);

  s_past_node_t* getPastWaitSemaphore(s_symbol_t* semaphore, s_symbol_t* val);
  s_past_node_t* getPastWaitSemaphoreAll(s_symbol_t* semaphore_arr, s_symbol_t* size, s_symbol_t* val);
  s_past_node_t* getPastSetSemaphore(s_symbol_t* semaphore, s_symbol_t* val);
  s_past_node_t* getPastReleaseSemaphore(s_symbol_t* semaphore, s_symbol_t* val);
  s_past_node_t* getPastAcquireSemaphore(s_symbol_t* semaphore, s_symbol_t* val);
  s_past_node_t* getPastNewSemaphore(s_symbol_t* semaphoreName, s_past_node_t* initval);
  s_past_node_t* getPastNewCountingSemaphore(s_symbol_t* semaphoreName, s_past_node_t* initval);

  s_past_node_t* wrapInAsyncBlock(s_past_node_t* node);


  // builtin

  s_past_node_t* translate(ModuleOp op);


  // func

  s_past_node_t* translate(func::FuncOp op);
  s_past_node_t* translate(func::ReturnOp op);
  s_past_node_t* translate(func::CallOp op);


  // arith

  s_past_node_t* translateConstant(arith::ConstantOp op,
      const Type& type, u_past_value_data_t val, int displayval);
  s_past_node_t* translate(arith::ConstantIntOp op);
  s_past_node_t* translate(arith::ConstantIndexOp op);
  s_past_node_t* translate(arith::ConstantFloatOp op);

  s_past_node_t* translateArithBinop
            (const char* resultName, const cs_past_node_type_t* pastType,
             Value res, Value lhs, Value rhs);
  s_past_node_t* translate(arith::AddIOp op);
  s_past_node_t* translate(arith::SubIOp op);
  s_past_node_t* translate(arith::MulIOp op);
  s_past_node_t* translate(arith::DivSIOp op);
  s_past_node_t* translate(arith::DivUIOp op);
  s_past_node_t* translate(arith::FloorDivSIOp op);
  s_past_node_t* translate(arith::RemSIOp op);
  s_past_node_t* translate(arith::AndIOp op);
  s_past_node_t* translate(arith::OrIOp op);
  s_past_node_t* translate(arith::MaxSIOp op);
  s_past_node_t* translate(arith::MinSIOp op);
  s_past_node_t* translate(arith::AddFOp op);
  s_past_node_t* translate(arith::SubFOp op);
  s_past_node_t* translate(arith::MulFOp op);
  s_past_node_t* translate(arith::DivFOp op);
  s_past_node_t* translate(math::PowFOp op);

  s_past_node_t* translateArithUnaryOp
            (const char* resultName, const cs_past_node_type_t* pastType,
             Value res, Value expr);
  s_past_node_t* translate(math::SqrtOp op);
  s_past_node_t* translate(arith::NegFOp op);
  s_past_node_t* translate(math::ExpOp op);

  s_past_node_t* translate(arith::ExtUIOp op);

  s_past_node_t* translate(arith::CmpIOp op);
  s_past_node_t* translate(arith::CmpFOp op);

  s_past_node_t* translate(arith::SelectOp op);

  s_past_node_t* translate(arith::IndexCastOp op);


  // scf

  s_past_node_t* translate(scf::ForOp op);

  s_past_node_t* translate(scf::IfOp op);

  s_past_node_t* translate(scf::YieldOp op);

  // cf

  s_past_node_t* translate(cf::BranchOp op);
  s_past_node_t* translate(cf::CondBranchOp op);

  // memref

  void generateNestedMemref
      (unsigned int sizei, SmallVector<int64_t> sizes, SmallVector<int>& indices, std::vector<s_past_node_t*>& nodes,
       MemRefType submrtype, s_symbol_t* result);
  s_past_node_t* translateAlloc(Operation* op, Type type, s_symbol_t* result);
  s_past_node_t* translate(memref::AllocOp op);
  s_past_node_t* translate(memref::AllocaOp op);
  s_past_node_t* translate(memref::GlobalOp op);

  ///TODO: check for use-after-free bugs?
  s_past_node_t* translate(memref::DeallocOp op);

  s_past_node_t* translate(memref::GetGlobalOp op);
  s_past_node_t* translate(memref::LoadOp op);
  s_past_node_t* translate(memref::StoreOp op);
  s_past_node_t* translate(memref::CopyOp op);

  s_past_node_t* translate(memref::SubViewOp op);
  s_past_node_t* translate(memref::CastOp op);


  // async

  s_past_node_t* translate(async::CreateGroupOp op);
  s_past_node_t* translate(async::AddToGroupOp op);
  s_past_node_t* translate(async::AwaitAllOp op);

  s_past_node_t* translate(async::ExecuteOp op);
  s_past_node_t* translate(async::YieldOp op);

///TODO: workaround!!
  s_past_node_t* translate(UnrealizedConversionCastOp op);
  s_past_node_t* translate(LLVM::UndefOp op);

  s_past_node_t* translate(verif::SemaphoreOp op);
  s_past_node_t* translate(verif::CountingSemaphoreOp op);
  s_past_node_t* translate(verif::SemaphoreSetOp op);
  s_past_node_t* translate(verif::SemaphoreWaitOp op);
  s_past_node_t* translate(verif::SemaphoreReleaseOp op);
  s_past_node_t* translate(verif::SemaphoreAcquireOp op);
  s_past_node_t* translate(verif::ErrorOp op);
  s_past_node_t* translate(verif::UndefOp op);
  // returns a linked list of the translation of the contained blocks'
  // operations, chained
  s_past_node_t* translate(Region& region);

  s_past_node_t* translate_unsupported(Operation* op);

};

} // namespace mlir::verif

#endif // PASTTRANSLATOR_H