//===- verif-translate.cpp ---------------------------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This is a command line utility that translates a file from/to MLIR using one
// of the registered translations.
//
//===----------------------------------------------------------------------===//

#include <iterator>
#include <fstream>
#include <iostream>
#include <regex>
#include "past/past.h"
#include "past/pprint.h"

#include "mlir/IR/BuiltinDialect.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Async/IR/Async.h"
#include "air/Dialect/AIR/AIRDialect.h"

#include "mlir/Tools/mlir-translate/MlirTranslateMain.h"
#include "mlir/Tools/mlir-translate/Translation.h"

#include "VerifDialect.h"
#include "VerifUtil.h"

#define DEBUG_TYPE "verif-translate"


namespace mlir {
namespace verif {


class PastTranslator {

  private:

  //options
  bool declare_variables = true;
  bool all_arrays_global = false;
  bool allow_unsupported_ops = true;

  symbol_table_t* symbolTable = symbol_table_malloc();
  std::unordered_map<Value, std::string> valueNames;

  // assuming FuncOp sym_names are unique since I can't find a
  // hash function for ops.
  std::unordered_map<std::string, std::vector<s_symbol_t*>*> functionReturnVars;

  int varSuffix = 0;
  int semaphoreId = 0;

  std::unordered_map<Value, s_symbol_t*> asyncGroupIndex;

  std::vector<s_past_node_t*> newGlobalDecls;
  std::vector<s_past_node_t*> newFunctionDecls;

  // if value is declared in block, add this statement to the end of the block.
  // dumb hack for subview copy back.
  std::unordered_map<Value, s_past_node_t*> blockAddAtEnd;

  s_symbol_t* getSymbol(std::string name) {
    return symbol_get_or_insert(symbolTable, name.c_str(), nullptr);
  }

  s_symbol_t* getVarSymbol(Value val, std::string name = "var") {
    //value in map already
    if (valueNames.find(val) != valueNames.end()) {
      auto symbol = symbol_get_or_insert
          (symbolTable, valueNames.find(val)->second.c_str(), nullptr);
      assert(symbol);
      return symbol;
    }

    std::string symbolName = name + "_" + std::to_string(varSuffix++);
    valueNames[val] = symbolName;
    return symbol_get_or_insert(symbolTable, symbolName.c_str(), nullptr);
  }

  // give the second value the same symbol as the first, return symbol
  s_symbol_t* getAndMapSymbol(Value exists, Value newval) {
    assert(valueNames.find(exists) != valueNames.end());
    std::string ret = valueNames.find(exists)->second;
    valueNames[newval] = ret;
    return symbol_get_or_insert(symbolTable, ret.c_str(), nullptr);
  }

  s_symbol_t* getTempVarSymbol(std::string name = "var") {
    std::string symbolName = name + "_" + std::to_string(varSuffix++);
    return symbol_get_or_insert(symbolTable, symbolName.c_str(), nullptr);
  }

  s_past_node_t* getVarDecl(s_symbol_t* type, s_symbol_t* var) {
    return past_node_vardecl_create(
      past_node_varref_create(type),
      past_node_varref_create(var));
  }

  s_past_node_t* declareVar(s_symbol_t* type, s_symbol_t* var) {
    auto isarray = [](char* s) {
      return s[strlen(s) - 1] == '*';
    };
    if (all_arrays_global && isarray(type->name_str)) {
      newGlobalDecls.push_back(
        past_node_statement_create(
          getVarDecl(type, var)
      ));
      return past_node_varref_create(var);
    }
    if (declare_variables)
      return getVarDecl(type, var);
    else return past_node_varref_create(var);
  }

  s_past_node_t* getVarDecl(Value val, std::string name = "var") {
    return getVarDecl(getTypeSymbol(val.getType()), getVarSymbol(val, name));
  }

  s_past_node_t* declareVar(Value val, std::string name = "var") {
    return declareVar(getTypeSymbol(val.getType()), getVarSymbol(val, name));
  }

  s_symbol_t* getTypeSymbol(const Type& t) {
    return getSymbol(getTypeName(t));
  }

  std::string getTypeName(const Type& t) {
    LLVM_DEBUG(
      llvm::errs() << "gettypename: " << t << "\n";
    );

    if (t.isIndex()) return "int";

    else if (t.isInteger()) {
      auto it = dyn_cast<IntegerType>(t);
      std::string ret = "";

      switch (it.getSignedness()) {
        case IntegerType::SignednessSemantics::Signed:
          break;
        case IntegerType::SignednessSemantics::Unsigned:
        case IntegerType::SignednessSemantics::Signless:
          // ret += "unsigned ";
          break;
      }

      switch (it.getWidth()) {
        case 32:
          // ret += "long ";
          break;
        default: assert(0);
      }
      ret += "int";
      return ret;
    }

    else if (t.isIntOrFloat()) {
      auto it = dyn_cast<FloatType>(t);
      assert(it); //ints caught above

      std::string ret = "";
      switch (it.getWidth()) {
        case 32:
          break;
      }
      ret += "float";
      return ret;
    }

    ///TODO: change to use node type
    else if (auto tm = dyn_cast<MemRefType>(t)) {
      std::string ret = getTypeName(tm.getElementType());
      assert(tm.getNumDynamicDims() == 0);
      // for (int i = 0; i < tm.getRank(); i++) {
      //   ret += "*";
      // }
      ret += "*";
      return ret;
    }

    ///TODO: remove!! workaround!!
    else if (auto tt = dyn_cast<xilinx::air::AsyncTokenType>(t)) {
      return "int";
    }
    else if (auto tt = dyn_cast<async::TokenType>(t)) {
      return "int";
    }
    assert(0);
  }

  e_past_value_type_t getTypePast(const Type& t) {
    // llvm::errs() << "getTypePast: " << t << "\n";
    // llvm::errs() << "  " << t.getIntOrFloatBitWidth() << "\n";
    if (t.isIndex()) return e_past_value_int;

    if (t.isInteger() && t.getIntOrFloatBitWidth() == 32) {
      // llvm::errs() << "  " << dyn_cast<IntegerType>(t).getSignedness() << "\n";
      if (dyn_cast<IntegerType>(t).getSignedness() ==
            IntegerType::SignednessSemantics::Signed)
        return e_past_value_longint;
      else
        return e_past_value_ulongint;
    }
    assert(0);
  }

  // returns node at start of list
  s_past_node_t* nodeChain(std::vector<s_past_node_t*> nodes) {
    s_past_node_t* start = nullptr;
    s_past_node_t* end = nullptr;
    for (auto n : nodes) {
      if (!n) continue;
      if (!start) start = end = n;
      else {
        end->next = n;
        end = end->next;
      }
      while (end && end->next) end = end->next;
    }
    return start;
  }

  s_past_node_t* getNodeListEnd(s_past_node_t* nodeList) {
    auto end = nodeList;
    while (end && end->next) end = end->next;
    return end;
  }

  void nodeListClone(std::vector<s_past_node_t*>& list) {
    for (int i = 0; i < list.size(); i++) {
      list[i] = past_clone_subtree(list[i]);
    }
  }

  // type varname = assignval;
  s_past_node_t* getDeclareAndAssign(Type type, const char* varname,
            Value varvalue, s_past_node_t* assignval) {
    return past_node_statement_create(
        past_node_binary_create(past_assign,
          past_node_vardecl_create(
            past_node_varref_create(getTypeSymbol(type)),
            past_node_varref_create(getVarSymbol(varvalue, varname))),
          assignval));
  }

  s_past_node_t* getArrayAccess(s_symbol_t* arr, std::vector<s_symbol_t*> ops) {
    s_past_node_t* ret = nullptr;
    for (auto op : ops) {
      if (!ret) {
        ret = past_node_binary_create(past_arrayref,
          past_node_varref_create(arr),
          past_node_varref_create(op)
        );
      }
      else {
        ret = past_node_binary_create(past_arrayref,
          ret,
          past_node_varref_create(op)
        );
      }
    }
    return ret;
  }

  s_past_node_t* getArrayAccess(Value arr, OperandRange ops) {
    std::vector<s_symbol_t*> vops;
    for (auto o : ops) {
      vops.push_back(getVarSymbol(o));
    }
    return getArrayAccess(getVarSymbol(arr), vops);
  }

  s_past_node_t* getArrayCopy(s_symbol_t* src, s_symbol_t* dst,
        std::vector<s_past_node_t*> src_offsets, std::vector<s_past_node_t*> dst_offsets,
        std::vector<s_past_node_t*> src_strides, std::vector<s_past_node_t*> dst_strides,
        std::vector<s_past_node_t*> sizes) {
    assert(src_offsets.size() == dst_offsets.size() &&
           src_offsets.size() == sizes.size() &&
           src_offsets.size() > 0);
    auto numdims = src_offsets.size();

    std::vector<s_past_node_t*> args;
    args.push_back(past_node_varref_create(src));
    for (auto offs : src_offsets) {
      args.push_back(offs);
    }
    for (auto str : src_strides) {
      args.push_back(str);
    }
    args.push_back(past_node_varref_create(dst));
    for (auto offs : dst_offsets) {
      args.push_back(offs);
    }
    for (auto str : dst_strides) {
      args.push_back(str);
    }
    for (auto size : sizes) {
      args.push_back(size);
    }

    return past_node_statement_create(
      past_node_funcall_create(
        past_node_varref_create(getSymbol("_past_array_copy_" + std::to_string(numdims) + "d")),
        nodeChain(args)));
  }

  s_past_node_t* getArrayCopy(s_symbol_t* src, s_symbol_t* dst,
      std::vector<s_past_node_t*> src_offsets, std::vector<s_past_node_t*> dst_offsets,
      std::vector<s_past_node_t*> sizes) {
    std::vector<s_past_node_t*> src_strides, dst_strides;
    for (int i = 0; i < src_offsets.size(); i++) {
      src_strides.push_back(past_node_value_create_from_int(1));
      dst_strides.push_back(past_node_value_create_from_int(1));
    }
    return getArrayCopy(src, dst, src_offsets, dst_offsets, src_strides, dst_strides, sizes);
  }

  // macro call: COPY_[N]D(src, 0, [size of dim 1], ... 0, [size of dim N], dst, 0, [size of dim 1], ... 0, [size of dim N])
  s_past_node_t* getArrayCopy(const MemRefType& type, s_symbol_t* src, s_symbol_t* dst) {
    auto dims = type.getShape();
    assert(dims.size() > 0);
    std::vector<s_past_node_t*> args;
    args.push_back(past_node_varref_create(src));
    for (auto dim : dims) {
      args.push_back(past_node_value_create_from_int(0));
    }
    for (auto dim : dims) {
      args.push_back(past_node_value_create_from_int(1));
    }
    args.push_back(past_node_varref_create(dst));
    for (auto dim : dims) {
      args.push_back(past_node_value_create_from_int(0));
    }
    for (auto dim : dims) {
      args.push_back(past_node_value_create_from_int(1));
    }
    for (auto dim : dims) {
      args.push_back(past_node_value_create_from_longlong(dim));
    }

    return past_node_statement_create(
      past_node_funcall_create(
        past_node_varref_create(getSymbol("_past_array_copy_" + std::to_string(dims.size()) + "d")),
        nodeChain(args)));
  }

  s_past_node_t* getPastWaitFinished(s_symbol_t* semaphore) {
    std::vector<s_past_node_t*> args = {
      past_node_varref_create(semaphore),
      past_node_varref_create(getSymbol("PAST_TASK_FINISHED"))
    };
    return past_node_statement_create(
      past_node_funcall_create(
        past_node_varref_create(getSymbol("PAST_WAIT_SEMAPHORE")),
        nodeChain(args)));
  }

  s_past_node_t* getPastWaitFinished(s_symbol_t* semaphore_arr, s_symbol_t* size) {
    std::vector<s_past_node_t*> args = {
      past_node_varref_create(semaphore_arr),
      past_node_varref_create(size),
      past_node_varref_create(getSymbol("PAST_TASK_FINISHED"))
    };
    return past_node_statement_create(
      past_node_funcall_create(
        past_node_varref_create(getSymbol("PAST_WAIT_SEMAPHORE_ALL")),
        nodeChain(args)));
  }

  s_past_node_t* getPastSetFinished(s_symbol_t* semaphore) {
    std::vector<s_past_node_t*> args = {
      past_node_varref_create(semaphore),
      past_node_varref_create(getSymbol("PAST_TASK_FINISHED"))
    };
    return past_node_statement_create(
      past_node_funcall_create(
        past_node_varref_create(getSymbol("PAST_SET_SEMAPHORE")),
        nodeChain(args)));
  }

  s_past_node_t* getPastNewSemaphore(s_symbol_t* semaphoreName) {
    std::vector<s_past_node_t*> args = {
      past_node_varref_create(semaphoreName)
    };
    return past_node_statement_create(
      past_node_funcall_create(
        past_node_varref_create(getSymbol("PAST_NEW_SEMAPHORE")),
        nodeChain(args)));
  }




  // builtin

  s_past_node_t* translate(ModuleOp& op) {
    // if it's not a function, wrap in block
    auto body = translate(op.getRegion());
    if (!past_node_is_a(body, past_fundecl)) {
      body = past_node_block_create(body);
    }

    // prepend new functions and globals generated
    newGlobalDecls.insert(newGlobalDecls.end(), newFunctionDecls.begin(), newFunctionDecls.end());
    s_past_node_t* moduleStart = nodeChain(newGlobalDecls);
    s_past_node_t* moduleEnd = getNodeListEnd(moduleStart);

    if (moduleEnd) moduleEnd->next = body;
    else moduleStart = body;
    s_past_node_t* ret = past_node_root_create(symbolTable, moduleStart);
    return ret;
  }

  // func

  s_past_node_t* translate(func::FuncOp& op) {
    std::vector<s_past_node_t*> args;
    for (auto arg : op.getRegion().getArguments()) {
      args.push_back(getVarDecl(arg, "func_arg"));
    }
    // add results as args
    auto vec = new std::vector<s_symbol_t*>();
    functionReturnVars[op.getSymName().str()] = vec;
    for (auto type : op.getResultTypes()) {
      s_symbol_t* sym = getTempVarSymbol("func_arg_ret");
      (*vec).push_back(sym);
      // args.push_back(getVarDecl(getTypeSymbol(type), sym));
      args.push_back(getVarDecl(getSymbol("int*"), sym));
    }

    s_past_node_t* ret = past_node_fundecl_create(
      past_node_varref_create(getSymbol("void")),
      past_node_varref_create(getSymbol(op.getSymName().str())),
      nodeChain(args),
      translate(op.getRegion())
    );
    return ret;
  }

  s_past_node_t* translate(func::ReturnOp& op) {
    auto func = op.getParentOp<func::FuncOp>();
    assert(func);

    s_past_node_t* ret = nullptr;
    s_past_node_t* cur = nullptr;

    auto getSymVar = [this](s_symbol_t* returned, Value val) {
      auto type = val.getType();
      // temporary: treat scalars as arrays for copy
      if (!dyn_cast<MemRefType>(type))
        return past_node_statement_create(
          past_node_binary_create(past_assign,
            past_node_binary_create(past_arrayref,
              past_node_varref_create(returned),
              past_node_value_create_from_int(0)
            ),
            past_node_varref_create(getVarSymbol(val))
          )
        );
      return getArrayCopy(dyn_cast<MemRefType>(type), getVarSymbol(val), returned);
    };

    int i = 0;
    assert(functionReturnVars.find(func.getSymName().str()) != functionReturnVars.end());
    for (s_symbol_t* sym : *(functionReturnVars.find(func.getSymName().str())->second)) {
      if (!ret) ret = cur = getSymVar(sym, op.getOperand(i));
      else {
        cur->next = getSymVar(sym, op.getOperand(i));
        cur = cur->next;
      }
      i++;
    }

    s_past_node_t* end = past_node_statement_create(
      past_node_keyword_create(e_past_keyword_return, nullptr)
    );

    if (cur) cur->next = end;
    else ret = end;
    return ret;
    // assert(op.getNumOperands() == 1);
    // return past_node_statement_create(
    //   past_node_keyword_create(e_past_keyword_return_value,
    //     getVar(op.getOperand(0))));
  }


  // arith

  s_past_node_t* translateConstant(arith::ConstantOp& op, const Type& type, u_past_value_data_t val) {
    OpResult res = op->getResult(0);
    return getDeclareAndAssign(type, "arith_const", res, past_node_value_create(getTypePast(type), val));
  }

  s_past_node_t* translate(arith::ConstantIntOp& op) {
    u_past_value_data_t val = { .intval = op.value() };
    return translateConstant(op, op.getResult().getType(), val);
  }

  s_past_node_t* translate(arith::ConstantIndexOp& op) {
    u_past_value_data_t val = { .intval = op.value() };
    return translateConstant(op, op.getResult().getType(), val);
  }

  s_past_node_t* translateArithBinop
            (const char* resultName, const cs_past_node_type_t* pastType,
             Value res, Value lhs, Value rhs) {
    return getDeclareAndAssign(res.getType(), resultName, res,
        past_node_binary_create(pastType,
          past_node_varref_create(getVarSymbol(lhs)),
          past_node_varref_create(getVarSymbol(rhs))));
  }

  s_past_node_t* translate(arith::AddIOp& op) {
    return translateArithBinop("arith_addi", past_add, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* translate(arith::AddFOp& op) {
    return translateArithBinop("arith_addf", past_add, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* translate(arith::MulIOp& op) {
    return translateArithBinop("arith_muli", past_mul, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* translate(arith::MulFOp& op) {
    return translateArithBinop("arith_mulf", past_mul, op.getResult(), op.getLhs(), op.getRhs());
  }
  // s_past_node_t* translate(arith::Div& op) {
  //   return translateArithBinop("arith_divi", past_div, op.getResult(), op.getLhs(), op.getRhs());
  // }
  s_past_node_t* translate(arith::DivFOp& op) {
    return translateArithBinop("arith_divf", past_div, op.getResult(), op.getLhs(), op.getRhs());
  }

  // scf

  s_past_node_t* translate(scf::ForOp op) {
    s_symbol_t* iterator = getVarSymbol(op.getInductionVar(), "for_iter");
    std::vector<s_past_node_t*> stmts;

    //handle loop-carried variables
    assert(op.getResults().size() == op.getInitArgs().size() && \
        op.getInitArgs().size() == op.getInits().size()); // verifier should catch this
    auto resIter = op.getResults().begin();
    auto initIter = op.getInits().begin();
    for (auto iv : op.getRegionIterArgs()) {
      Value res = *resIter++;
      Value init = *initIter++;

      // assign initial value
      stmts.push_back(
        past_node_statement_create(
          past_node_binary_create(past_assign,
            declareVar(iv, "for_iter_arg"),
            past_node_varref_create(getVarSymbol(init)))));
      // map to corresponding result
      getAndMapSymbol(iv, res);
    }

    stmts.push_back(past_node_for_create(
      past_node_binary_create(past_assign,
        declareVar(getTypeSymbol(op.getInductionVar().getType()), iterator),
        past_node_varref_create(getVarSymbol(op.getLowerBound()))
      ),
      past_node_binary_create(past_lt,
        past_node_varref_create(iterator),
        past_node_varref_create(getVarSymbol(op.getUpperBound()))
      ),
      iterator,
      past_node_binary_create(past_addassign,
        past_node_varref_create(iterator),
        past_node_varref_create(getVarSymbol(op.getStep()))
      ),
      translate(op.getRegion())));
      return nodeChain(stmts);
  }

  // set loop-carried vars equal to yield operands
  s_past_node_t* translate(scf::YieldOp op) {
    if (op.getOperands().size() == 0)
      return nullptr;

    std::vector<s_past_node_t*> stmts;
    auto loop = dyn_cast<scf::ForOp>(op.getOperation()->getParentOp());
    assert(loop && (loop.getRegionIterArgs().size() == op.getResults().size()));
    auto resIter = op.getResults().begin();
    for (auto iv : loop.getRegionIterArgs()) {
      Value res = *resIter++;
      stmts.push_back(
        past_node_statement_create(
          past_node_binary_create(past_assign,
            past_node_varref_create(getVarSymbol(iv)),
            past_node_varref_create(getVarSymbol(res)))));
    }
    return nodeChain(stmts);
  }


  // memref

  s_past_node_t* translate(memref::AllocOp op) {
    return past_node_statement_create(declareVar(op.getResult(), "memref_alloc"));
  }

  ///TODO: check for use-after-free bugs?
  s_past_node_t* translate(memref::DeallocOp op) {
    return nullptr;
  }

  s_past_node_t* translate(memref::LoadOp op) {
    return past_node_statement_create(
      past_node_binary_create(past_assign,
        declareVar(op.getResult(), "memref_load"),
        getArrayAccess(op.getMemRef(), op.getIndices())));
  }

  s_past_node_t* translate(memref::StoreOp op) {
    return past_node_statement_create(
      past_node_binary_create(past_assign,
        getArrayAccess(op.getMemRef(), op.getIndices()),
        past_node_varref_create(getVarSymbol(op.getValueToStore()))));
  }

  s_past_node_t* translate(memref::CopyOp op) {
    auto type = dyn_cast<MemRefType>(op.getSource().getType());
    assert(type);
    return getArrayCopy(type, getVarSymbol(op.getSource()), getVarSymbol(op.getTarget()));
  }

  s_past_node_t* translate(memref::SubViewOp op) {
    std::vector<s_past_node_t*> stmts;

    auto getFoldResultNode = [&](OpFoldResult res) {
      if (res.is<Value>()) {
        return past_node_varref_create(getVarSymbol(res.get<Value>()));
      }
      else if (res.is<Attribute>()) {
        auto attr = cast_or_null<IntegerAttr>(res.get<Attribute>());
        if (!attr) {
          op.emitError("expected IntegerAttr in memref.subview");
          exit(1);
        }
        return past_node_value_create_from_longlong(attr.getInt());
      }
      else {
        assert(0 && "unexpected type");
      }
    };

    // declare new var for subview
    stmts.push_back(
      past_node_statement_create(
        declareVar(op.getResult(), "subview")));

    // copy to subview var
    std::vector<s_past_node_t*> src_offsets;
    std::vector<s_past_node_t*> dst_offsets;
    for (auto offs : op.getMixedOffsets()) {
      src_offsets.push_back(getFoldResultNode(offs));
      dst_offsets.push_back(past_node_value_create_from_int(0));
    }

    std::vector<s_past_node_t*> src_strides, dst_strides;
    for (auto str : op.getMixedStrides()) {
      src_strides.push_back(getFoldResultNode(str));
      dst_strides.push_back(past_node_value_create_from_int(1));
    }

    std::vector<s_past_node_t*> sizes;
    for (auto size : op.getMixedSizes()) {
      sizes.push_back(getFoldResultNode(size));
    }

    stmts.push_back(getArrayCopy(
        getVarSymbol(op.getSource()), getVarSymbol(op.getResult()),
        src_offsets, dst_offsets, src_strides, dst_strides, sizes));

    // only copy back if the subview was written to to avoid
    // false conflicts
    bool written = false;
    for (auto o : op.getResult().getUsers()) {
      if (isa<memref::StoreOp>(o) ||
          (isa<memref::CopyOp>(o) && dyn_cast<memref::CopyOp>(o).getTarget() == op.getResult())) {
        written = true;
        break;
      }
    }
    if (!written) return nodeChain(stmts);

    nodeListClone(src_offsets);
    nodeListClone(dst_offsets);
    nodeListClone(sizes);

    // add to end of block: copy back from subview
    auto copyback = getArrayCopy(
        getVarSymbol(op.getResult()), getVarSymbol(op.getSource()),
        dst_offsets, src_offsets, sizes);
    blockAddAtEnd[op.getResult()] = copyback;

    return nodeChain(stmts);
  }

  s_past_node_t* translate(async::CreateGroupOp op) {
    std::vector<s_past_node_t*> stmts;
    // declare buffer
    stmts.push_back(past_node_statement_create(
      past_node_binary_create(past_vardecl,
        past_node_varref_create(getSymbol("int*")),
        past_node_varref_create(getVarSymbol(op.getResult(), "async_group")))));

    // save current index (0) into buffer in map
    auto groupIndex = getTempVarSymbol("async_group_index");
    asyncGroupIndex[op.getResult()] = groupIndex;
    stmts.push_back(past_node_statement_create(
      past_node_binary_create(past_assign,
        declareVar(getSymbol("int"), groupIndex),
        past_node_value_create_from_int(0))));
    return nodeChain(stmts);
  }

  s_past_node_t* translate(async::AddToGroupOp op) {
    std::vector<s_past_node_t*> stmts;
    s_symbol_t* groupIndex = asyncGroupIndex.find(op.getGroup())->second;
    // set group[group_index] = k
    stmts.push_back(
      past_node_statement_create(
        past_node_binary_create(past_assign,
          getArrayAccess(
            getVarSymbol(op.getGroup()),
            std::vector{groupIndex}),
          past_node_varref_create(getVarSymbol(op.getOperand())))));
    // increment group index
    stmts.push_back(
      past_node_statement_create(
        past_node_unary_create(past_inc_after,
          past_node_varref_create(groupIndex))));
    return nodeChain(stmts);
  }

  s_past_node_t* translate(async::AwaitAllOp op) {
    s_symbol_t* groupIndex = asyncGroupIndex.find(op.getOperand())->second;
    return getPastWaitFinished(
        getVarSymbol(op.getOperand()),
        groupIndex);
  }

  s_past_node_t* translate(async::ExecuteOp op) {
    std::vector<s_past_node_t*> nodes;
    std::vector<s_past_node_t*> body;

    // wait on all dependencies
    for (auto dep : op.getDependencies()) {
      body.push_back(
        getPastWaitFinished(getVarSymbol(dep)));
    }

    // get semaphore value of token
    nodes.push_back(getPastNewSemaphore(getVarSymbol(op.getToken(), "execute_token")));

    // translate body, set semaphore to finished after
    body.push_back(translate(op.getBodyRegion()));
    body.push_back(getPastSetFinished(getVarSymbol(op.getToken())));

    nodes.push_back(
      past_node_pragma_create(
        past_node_varref_create(getSymbol("peqc async_execute")),
        nullptr));
    nodes.push_back(
      past_node_block_create(
        nodeChain(body)));
    return nodeChain(nodes);
  }

  s_past_node_t* translate(async::YieldOp op) {
    assert(op.getNumOperands() == 0);
    return nullptr;
  }

///TODO: workaround!!
  s_past_node_t* translate(UnrealizedConversionCastOp op) {
    getAndMapSymbol(op.getOperand(0), op.getResult(0));
    return nullptr;
  }

  // returns a linked list of the translation of the contained blocks'
  // operations, chained
  s_past_node_t* translate(Region& region) {
    std::vector<s_past_node_t*> stmts;
    for(Block& block : region.getBlocks()) {
      for (Operation& op : block.getOperations()) {
        if (auto stmt = translate(&op)) {
          // work around a parser rule not being implemented
          // if (past_node_is_a(stmt, past_statement) &&
          //     past_node_is_a(PAST_NODE_AS(stmt, statement)->body, past_varref))
          //   continue;
          stmts.push_back(stmt);
        }
      }

      // if value in blockAddAtEnd is declared in block,
      // add associated statement here
      std::vector<Value> toremove;
      for (auto &b : blockAddAtEnd) {
        Value val = b.first;
        // if (llvm::find(block.getOperations(), *(val.getDefiningOp())) !=
        //     block.getOperations().end()) {
        ///TODO: there's GOTTA be a better way to do this...
        auto valDefinedInBlock = [](Block& block, Value val) {
          for (auto &op : block.getOperations()) {
            auto o = &op;
            for (auto res : o->getResults()) {
              if (val == res) return true;
            }
          }
          return false;
        };
        if (valDefinedInBlock(block, val)) {
          llvm::errs() << b.first << " " << b.second << "\n";
          // assert(0);
          stmts.push_back(b.second);
          toremove.push_back(val);
        }
      }
      for (auto val : toremove) {
        blockAddAtEnd.erase(val);
      }
    }
    return nodeChain(stmts);
  }

  s_past_node_t* translate_unsupported(Operation* op) {
    assert(op);

    // print op: use generic form to make it easy to find region
    std::string s;
    llvm::raw_string_ostream stream(s);
    op->print(stream, OpPrintingFlags().printGenericOpForm());

    // remove op's region, which will be translated separately
    std::regex region(R"(\(\{(.|\n)*\}\))", std::regex::multiline);
    s = std::regex_replace(s, region, "");
    std::regex quote(R"(")");
    s = std::regex_replace(s, quote, "");

    ///TODO: figure out how strings work...
    s = "\"" + s + "\"";
    char* str = (char*)malloc(s.size() * sizeof(char));
    strcpy(str, s.c_str());

    std::vector<s_past_node_t*> nodes;
    nodes.push_back(past_node_statement_create(
      past_node_varref_create(getSymbol(str))));

    for (auto &r : op->getRegions()) {
      nodes.push_back(past_node_block_create(
        translate(r)));
    }
    return nodeChain(nodes);
  }

  public:

  s_past_node_t* translate(Operation* op) {
    s_past_node_t* res;
    if (auto o = dyn_cast<ModuleOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<func::FuncOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<func::ReturnOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::ConstantIntOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::ConstantIndexOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::AddIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::AddFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::MulIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::MulFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::DivFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<scf::ForOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<scf::YieldOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<memref::AllocOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<memref::DeallocOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<memref::LoadOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<memref::StoreOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<memref::CopyOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<memref::SubViewOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<async::CreateGroupOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<async::AddToGroupOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<async::AwaitAllOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<async::ExecuteOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<async::YieldOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<UnrealizedConversionCastOp>(op)) res = translate(o);
    else {
      if (!allow_unsupported_ops) {
        op->emitError("verif-translate: unknown operation");
        exit(1);
      }

      res = translate_unsupported(op);
    }
    return res;
  }

};

  LogicalResult translateToPast(Operation* op, llvm::raw_ostream &output, bool textOutput) {
    PastTranslator translator;
    s_past_node_t* res = translator.translate(op);

    ///TODO: find a better way to interface btwn FILE and ostream?
    std::string filename = "translate_temp" + //file weirdness when testing. dumb hack
        std::to_string(std::chrono::system_clock::now().time_since_epoch() / std::chrono::nanoseconds(1)) + ".txt";
    auto file = std::fopen(filename.c_str(), "w");
    past_pprint(file, res);
    std::ifstream infile(filename);
    std::fclose(file);
    std::remove(filename.c_str());

    output << "#pragma pocc-region-start\n";
    std::string line;
    while (std::getline(infile, line)) {
      output << line << "\n";
    }
    output << "#pragma pocc-region-end\n";
    return success();
  }

} // namespace verif
} // namespace mlir


int main(int argc, char **argv) {

  mlir::TranslateFromMLIRRegistration withdescription(
      "translate-to-past", "todo",
      [](mlir::Operation *op, llvm::raw_ostream &output) {
        return mlir::verif::translateToPast(op, output, true);
      },
      [](mlir::DialectRegistry &registry) {
          registry.insert<
            mlir::verif::VerifDialect,
            mlir::arith::ArithDialect,
            mlir::scf::SCFDialect,
            mlir::func::FuncDialect,
            mlir::memref::MemRefDialect,
            mlir::async::AsyncDialect,
            xilinx::air::airDialect
          >();
      });

  return failed(
      mlir::mlirTranslateMain(argc, argv, "verif-translate"));
}
