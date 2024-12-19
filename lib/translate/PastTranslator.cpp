/*
 * PastTranslator.cpp: This file is part of the PEQC-MLIR project.
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

#include <regex>

#include "past/past.h"
#include "past/pprint.h"

#include "mlir/IR/BuiltinDialect.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Async/IR/Async.h"
#include "air/Dialect/AIR/AIRDialect.h"

#include "mlir/Tools/mlir-translate/MlirTranslateMain.h"
#include "mlir/Tools/mlir-translate/Translation.h"

#include "VerifDialect.h"
#include "VerifUtil.h"
#include "translate/PastTranslator.h"

#define DEBUG_TYPE "verif-translate"


  s_symbol_t* PastTranslator::getSymbol(std::string name) {
    return symbol_get_or_insert(symbolTable, name.c_str(), nullptr);
  }

  s_symbol_t* PastTranslator::getVarSymbol(Value val, std::string name) {
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
  s_symbol_t* PastTranslator::getAndMapSymbol(Value exists, Value newval) {
    assert(valueNames.find(exists) != valueNames.end());
    std::string ret = valueNames.find(exists)->second;
    valueNames[newval] = ret;
    return symbol_get_or_insert(symbolTable, ret.c_str(), nullptr);
  }

  s_symbol_t* PastTranslator::getTempVarSymbol(std::string name) {
    std::string symbolName = name + "_" + std::to_string(varSuffix++);
    return symbol_get_or_insert(symbolTable, symbolName.c_str(), nullptr);
  }

  s_past_node_t* PastTranslator::getVarDecl(s_symbol_t* type, s_symbol_t* var) {
    return past_node_vardecl_create(
      past_node_varref_create(type),
      past_node_varref_create(var));
  }

  s_past_node_t* PastTranslator::declareVar(s_symbol_t* type, s_symbol_t* var) {
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

  s_past_node_t* PastTranslator::getVarDecl(Value val, std::string name) {
    return getVarDecl(getTypeSymbol(val.getType()), getVarSymbol(val, name));
  }

  s_past_node_t* PastTranslator::declareVar(Value val, std::string name) {
    return declareVar(getTypeSymbol(val.getType()), getVarSymbol(val, name));
  }

  s_symbol_t* PastTranslator::getTypeSymbol(const Type& t) {
    return getSymbol(getTypeName(t));
  }

  std::string PastTranslator::getTypeName(const Type& t) {
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
        case 1:
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
          ret += "float";
          break;
        case 64:
          ret += "double";
          break;
      }
      return ret;
    }

    ///TODO: change to use node type
    else if (auto tm = dyn_cast<MemRefType>(t)) {
      std::string ret = getTypeName(tm.getElementType());
      // assert(tm.getNumDynamicDims() == 0);
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

  e_past_value_type_t PastTranslator::getTypePast(const Type& t) {
    LLVM_DEBUG(
      llvm::errs() << "getTypePast: " << t << "  " << t.getIntOrFloatBitWidth() << "\n";
    );
    if (t.isIndex()) return e_past_value_int;

    else if (t.isInteger()) {
      auto it = dyn_cast<IntegerType>(t);

      switch (it.getWidth()) {
        case 1:
          // return e_past_value_bool;
        case 32:
          // return e_past_value_longint;
        case 64:
          // return e_past_value_longlongint;
          return e_past_value_int;
        default: assert(0);
      }
    }

    else if (t.isIntOrFloat()) {
      auto it = dyn_cast<FloatType>(t);
      assert(it); //ints caught above

      switch (it.getWidth()) {
        case 32:
          return e_past_value_float;
        case 64:
          return e_past_value_double;
      }
    }
    assert(0);
  }

  // returns node at start of list
  s_past_node_t* PastTranslator::nodeChain(std::vector<s_past_node_t*> nodes) {
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

  s_past_node_t* PastTranslator::getNodeListEnd(s_past_node_t* nodeList) {
    auto end = nodeList;
    while (end && end->next) end = end->next;
    return end;
  }

  void PastTranslator::nodeListClone(std::vector<s_past_node_t*>& list) {
    for (int i = 0; i < (int)list.size(); i++) {
      list[i] = past_clone_subtree(list[i]);
    }
  }

  // type varname = assignval;
  s_past_node_t* PastTranslator::getDeclareAndAssign(Type type, const char* varname,
            Value varvalue, s_past_node_t* assignval) {
    return past_node_statement_create(
        past_node_binary_create(past_assign,
          past_node_vardecl_create(
            past_node_varref_create(getTypeSymbol(type)),
            past_node_varref_create(getVarSymbol(varvalue, varname))),
          assignval));
  }

  s_past_node_t* PastTranslator::getArrayAccess(s_symbol_t* arr, std::vector<s_past_node_t*> ops) {
    s_past_node_t* ret = nullptr;
    for (auto op : ops) {
      if (!ret) {
        ret = past_node_binary_create(past_arrayref,
          past_node_varref_create(arr),
          op
        );
      }
      else {
        ret = past_node_binary_create(past_arrayref,
          ret,
          op
        );
      }
    }
    return ret;
  }

  s_past_node_t* PastTranslator::getArrayAccess(Value arr, OperandRange ops) {
    std::vector<s_past_node_t*> vops;
    for (auto o : ops) {
      vops.push_back(past_node_varref_create(getVarSymbol(o)));
    }
    // memref[] == memref[0]
    if (ops.empty()) {
      vops.push_back(past_node_value_create_from_int(0));
    }
    return getArrayAccess(getVarSymbol(arr), vops);
  }

  s_past_node_t* PastTranslator::getArrayCopy(s_symbol_t* src, s_symbol_t* dst,
        std::vector<s_past_node_t*> src_offsets, std::vector<s_past_node_t*> dst_offsets,
        std::vector<s_past_node_t*> src_strides, std::vector<s_past_node_t*> dst_strides,
        std::vector<s_past_node_t*> sizes) {
    llvm::errs() << src_offsets.size() << " " << src_strides.size() << " " << sizes.size() << "\n";
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

  s_past_node_t* PastTranslator::getArrayCopy(s_symbol_t* src, s_symbol_t* dst,
      std::vector<s_past_node_t*> src_offsets, std::vector<s_past_node_t*> dst_offsets,
      std::vector<s_past_node_t*> sizes) {
    std::vector<s_past_node_t*> src_strides, dst_strides;
    for (int i = 0; i < (int)src_offsets.size(); i++) {
      src_strides.push_back(past_node_value_create_from_int(1));
      dst_strides.push_back(past_node_value_create_from_int(1));
    }
    return getArrayCopy(src, dst, src_offsets, dst_offsets, src_strides, dst_strides, sizes);
  }

  // macro call: COPY_[N]D(src, 0, [size of dim 1], ... 0, [size of dim N], dst, 0, [size of dim 1], ... 0, [size of dim N])
  s_past_node_t* PastTranslator::getArrayCopy(const MemRefType& type, s_symbol_t* src, s_symbol_t* dst) {
    auto dims = type.getShape();
    assert(dims.size() > 0);
    std::vector<s_past_node_t*> args;
    args.push_back(past_node_varref_create(src));
    for (size_t i = 0; i < dims.size(); i++) {
      args.push_back(past_node_value_create_from_int(0));
    }
    for (size_t i = 0; i < dims.size(); i++) {
      args.push_back(past_node_value_create_from_int(1));
    }
    args.push_back(past_node_varref_create(dst));
    for (size_t i = 0; i < dims.size(); i++) {
      args.push_back(past_node_value_create_from_int(0));
    }
    for (size_t i = 0; i < dims.size(); i++) {
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

  s_past_node_t* PastTranslator::getPastWaitFinished(s_symbol_t* semaphore) {
    std::vector<s_past_node_t*> args = {
      past_node_varref_create(semaphore),
      past_node_varref_create(getSymbol("PAST_TASK_FINISHED"))
    };
    return past_node_statement_create(
      past_node_funcall_create(
        past_node_varref_create(getSymbol("PAST_WAIT_SEMAPHORE")),
        nodeChain(args)));
  }

  s_past_node_t* PastTranslator::getPastWaitFinished(s_symbol_t* semaphore_arr, s_symbol_t* size) {
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

  s_past_node_t* PastTranslator::getPastSetFinished(s_symbol_t* semaphore) {
    std::vector<s_past_node_t*> args = {
      past_node_varref_create(semaphore),
      past_node_varref_create(getSymbol("PAST_TASK_FINISHED"))
    };
    return past_node_statement_create(
      past_node_funcall_create(
        past_node_varref_create(getSymbol("PAST_SET_SEMAPHORE")),
        nodeChain(args)));
  }

  s_past_node_t* PastTranslator::getPastNewSemaphore(s_symbol_t* semaphoreName) {
    std::vector<s_past_node_t*> args = {
      past_node_varref_create(semaphoreName)
    };
    return past_node_statement_create(
      past_node_funcall_create(
        past_node_varref_create(getSymbol("PAST_NEW_SEMAPHORE")),
        nodeChain(args)));
  }




  // builtin

  s_past_node_t* PastTranslator::translate(ModuleOp& op) {
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

  s_past_node_t* PastTranslator::translate(func::FuncOp& op) {
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

  s_past_node_t* PastTranslator::translate(func::ReturnOp& op) {
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

  s_past_node_t* PastTranslator::translateConstant(arith::ConstantOp& op, const Type& type, u_past_value_data_t val) {
    OpResult res = op->getResult(0);
    return getDeclareAndAssign(type, "arith_const", res, past_node_value_create(getTypePast(type), val));
  }

  s_past_node_t* PastTranslator::translate(arith::ConstantIntOp& op) {
    u_past_value_data_t val = {.intval = (int)op.value()};
    ///FIXME: low prio, make this consistent with types
    // u_past_value_data_t val;
    // switch (getTypePast(op.getResult().getType())) {
    //   case e_past_value_bool:
    //     val.boolval = op.value();
    //     break;
    //   case e_past_value_longint:
    //     val.intval = op.value();
    //     break;
    //   case e_past_value_longlongint:
    //     val.longlongintval = op.value();
    //     break;
    //   default: assert(0);
    // }
    return translateConstant(op, op.getResult().getType(), val);
  }

  s_past_node_t* PastTranslator::translate(arith::ConstantIndexOp& op) {
    u_past_value_data_t val = { .intval = (int)op.value() };
    return translateConstant(op, op.getResult().getType(), val);
  }

  s_past_node_t* PastTranslator::translate(arith::ConstantFloatOp& op) {
    u_past_value_data_t val;
    switch (getTypePast(op.getResult().getType())) {
      case e_past_value_float:
        val.floatval = op.value().convertToFloat();
        break;
      case e_past_value_double:
        val.doubleval = op.value().convertToDouble();
        break;
      default: assert(0);
    }
    return translateConstant(op, op.getResult().getType(), val);
  }

  s_past_node_t* PastTranslator::translateArithBinop
            (const char* resultName, const cs_past_node_type_t* pastType,
             Value res, Value lhs, Value rhs) {
    return getDeclareAndAssign(res.getType(), resultName, res,
        past_node_binary_create(pastType,
          past_node_varref_create(getVarSymbol(lhs)),
          past_node_varref_create(getVarSymbol(rhs))));
  }

  s_past_node_t* PastTranslator::translate(arith::AddIOp& op) {
    return translateArithBinop("arith_addi", past_add, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::SubIOp& op) {
    return translateArithBinop("arith_subi", past_sub, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::MulIOp& op) {
    return translateArithBinop("arith_muli", past_mul, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::DivSIOp& op) {
    return translateArithBinop("arith_divi", past_div, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::DivUIOp& op) {
    return translateArithBinop("arith_divi", past_div, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::RemSIOp& op) {
    return translateArithBinop("arith_remsi", past_mod, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::AndIOp& op) {
    return translateArithBinop("arith_andi", past_band, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::OrIOp& op) {
    return translateArithBinop("arith_ori", past_bor, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::MaxSIOp& op) {
    return translateArithBinop("arith_maxsi", past_max, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::MinSIOp& op) {
    return translateArithBinop("arith_minsi", past_min, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::AddFOp& op) {
    return translateArithBinop("arith_addf", past_add, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::SubFOp& op) {
    return translateArithBinop("arith_subf", past_sub, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::MulFOp& op) {
    return translateArithBinop("arith_mulf", past_mul, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(arith::DivFOp& op) {
    return translateArithBinop("arith_divf", past_div, op.getResult(), op.getLhs(), op.getRhs());
  }
  s_past_node_t* PastTranslator::translate(math::PowFOp& op) {
    return translateArithBinop("math_powf", past_pow, op.getResult(), op.getLhs(), op.getRhs());
  }

  s_past_node_t* PastTranslator::translateArithUnaryOp
            (const char* resultName, const cs_past_node_type_t* pastType,
             Value res, Value expr) {
    //
    return getDeclareAndAssign(res.getType(), resultName, res,
        past_node_unary_create(pastType,
          past_node_varref_create(getVarSymbol(expr))));
  }

  s_past_node_t* PastTranslator::translate(math::SqrtOp op) {
    return translateArithUnaryOp("math_sqrt", past_sqrt, op.getResult(), op.getOperand());
  }
  s_past_node_t* PastTranslator::translate(arith::NegFOp op) {
    return translateArithUnaryOp("arith_negf", past_unaminus, op.getResult(), op.getOperand());
  }
  s_past_node_t* PastTranslator::translate(math::ExpOp op) {
    return translateArithUnaryOp("math_exp", past_exp, op.getResult(), op.getOperand());
  }
  //don't care about width, everything's int anyway
  s_past_node_t* PastTranslator::translate(arith::ExtUIOp op) {
    return getDeclareAndAssign(op.getResult().getType(), "arith_extui",
        op.getResult(), past_node_varref_create(getVarSymbol(op.getIn())));
  }

  s_past_node_t* PastTranslator::translate(arith::CmpIOp& op) {
    arith::CmpIPredicate pred = op.getPredicate();
    cs_past_node_type_t* cmptype = nullptr;
    switch (pred) {
      case arith::CmpIPredicate::eq:
        cmptype = past_equal;
        break;
      case arith::CmpIPredicate::ne:
        cmptype = past_notequal;
        break;

      case arith::CmpIPredicate::slt:
      case arith::CmpIPredicate::ult:
        cmptype = past_lt;
        break;
      case arith::CmpIPredicate::sle:
      case arith::CmpIPredicate::ule:
        cmptype = past_leq;
        break;

      case arith::CmpIPredicate::sgt:
      case arith::CmpIPredicate::ugt:
        cmptype = past_gt;
        break;
      case arith::CmpIPredicate::sge:
      case arith::CmpIPredicate::uge:
        cmptype = past_geq;
        break;
    }

    s_past_node_t* cond = past_node_binary_create(cmptype,
        past_node_varref_create(getVarSymbol(op.getLhs())),
        past_node_varref_create(getVarSymbol(op.getRhs())));

    return past_node_statement_create(
      past_node_binary_create(past_assign,
        declareVar(op.getResult(), "arith_cmpi"),
        cond));
  }

  s_past_node_t* PastTranslator::translate(arith::CmpFOp& op) {
    arith::CmpFPredicate pred = op.getPredicate();
    cs_past_node_type_t* cmptype = nullptr;
    switch (pred) {
      case arith::CmpFPredicate::OEQ:
      case arith::CmpFPredicate::UEQ:
        cmptype = past_equal;
        break;
      case arith::CmpFPredicate::ONE:
      case arith::CmpFPredicate::UNE:
        cmptype = past_notequal;
        break;

      case arith::CmpFPredicate::OLT:
      case arith::CmpFPredicate::ULT:
        cmptype = past_lt;
        break;
      case arith::CmpFPredicate::OLE:
      case arith::CmpFPredicate::ULE:
        cmptype = past_leq;
        break;

      case arith::CmpFPredicate::OGT:
      case arith::CmpFPredicate::UGT:
        cmptype = past_gt;
        break;
      case arith::CmpFPredicate::OGE:
      case arith::CmpFPredicate::UGE:
        cmptype = past_geq;
        break;
      case arith::CmpFPredicate::ORD:
      case arith::CmpFPredicate::UNO:
      case arith::CmpFPredicate::AlwaysFalse:
      case arith::CmpFPredicate::AlwaysTrue:
        assert(0);
    }

    s_past_node_t* cond = past_node_binary_create(cmptype,
        past_node_varref_create(getVarSymbol(op.getLhs())),
        past_node_varref_create(getVarSymbol(op.getRhs())));

    return past_node_statement_create(
      past_node_binary_create(past_assign,
        declareVar(op.getResult(), "arith_cmpi"),
        cond));
  }

  s_past_node_t* PastTranslator::translate(arith::SelectOp op) {
    return past_node_statement_create(
      past_node_binary_create(past_assign,
        declareVar(op.getResult(), "arith_select"),
        past_node_ternary_cond_create(
          // cond is already bool-like here, so don't need if == 1/== 0
          past_node_varref_create(getVarSymbol(op.getCondition())),
          past_node_varref_create(getVarSymbol(op.getTrueValue())),
          past_node_varref_create(getVarSymbol(op.getFalseValue())))));
  }

  // scf

  s_past_node_t* PastTranslator::translate(scf::ForOp op) {
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

  s_past_node_t* PastTranslator::translate(scf::IfOp op) {
    assert(op.getResults().empty());
    std::vector<s_past_node_t*> nodes;
    for (Value res : op.getResults()) {
      nodes.push_back(past_node_statement_create(
        declareVar(res, "scf_if")));
    }

    nodes.push_back(past_node_if_create(
      past_node_varref_create(getVarSymbol(op.getCondition())),
      translate(op.getThenRegion()),
      translate(op.getElseRegion())));
    return nodeChain(nodes);
  }

  s_past_node_t* PastTranslator::translate(scf::YieldOp op) {
    if (op.getOperands().size() == 0)
      return nullptr;

    std::vector<s_past_node_t*> stmts;

    // handle scf.for:
    // set loop-carried vars equal to yield operands
    if (auto loop = dyn_cast<scf::ForOp>(op.getOperation()->getParentOp())) {
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
    }

    // handle scf.if:
    // if there are results, set result vars
    else if (auto ifop = dyn_cast<scf::IfOp>(op.getOperation()->getParentOp())) {
      if (op.getResults().empty()) return nullptr;
      assert(0);
    }
    return nodeChain(stmts);
  }


  // memref

  s_past_node_t* PastTranslator::translate(memref::AllocOp op) {
    return past_node_statement_create(declareVar(op.getResult(), "memref_alloc"));
  }

  s_past_node_t* PastTranslator::translate(memref::AllocaOp op) {
    return past_node_statement_create(declareVar(op.getResult(), "memref_alloca"));
  }

  ///TODO: check for use-after-free bugs?
  s_past_node_t* PastTranslator::translate(memref::DeallocOp op) {
    return nullptr;
  }

  s_past_node_t* PastTranslator::translate(memref::LoadOp op) {
    return past_node_statement_create(
      past_node_binary_create(past_assign,
        declareVar(op.getResult(), "memref_load"),
        getArrayAccess(op.getMemRef(), op.getIndices())));
  }

  s_past_node_t* PastTranslator::translate(memref::StoreOp op) {
    return past_node_statement_create(
      past_node_binary_create(past_assign,
        getArrayAccess(op.getMemRef(), op.getIndices()),
        past_node_varref_create(getVarSymbol(op.getValueToStore()))));
  }

  s_past_node_t* PastTranslator::translate(memref::CopyOp op) {
    auto type = dyn_cast<MemRefType>(op.getSource().getType());
    assert(type);
    return getArrayCopy(type, getVarSymbol(op.getSource()), getVarSymbol(op.getTarget()));
  }

  s_past_node_t* PastTranslator::translate(memref::SubViewOp op) {
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
    nodeListClone(src_strides);
    nodeListClone(dst_strides);
    nodeListClone(sizes);

    // add to end of block: copy back from subview
    auto copyback = getArrayCopy(
        getVarSymbol(op.getResult()), getVarSymbol(op.getSource()),
        dst_offsets, src_offsets, dst_strides, src_strides, sizes);
    blockAddAtEnd[op.getResult()] = copyback;

    return nodeChain(stmts);
  }

  s_past_node_t* PastTranslator::translate(async::CreateGroupOp op) {
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

  s_past_node_t* PastTranslator::translate(async::AddToGroupOp op) {
    std::vector<s_past_node_t*> stmts;
    s_symbol_t* groupIndex = asyncGroupIndex.find(op.getGroup())->second;
    // set group[group_index] = k
    stmts.push_back(
      past_node_statement_create(
        past_node_binary_create(past_assign,
          getArrayAccess(
            getVarSymbol(op.getGroup()),
            std::vector{past_node_varref_create(groupIndex)}),
          past_node_varref_create(getVarSymbol(op.getOperand())))));
    // increment group index
    stmts.push_back(
      past_node_statement_create(
        past_node_unary_create(past_inc_after,
          past_node_varref_create(groupIndex))));
    return nodeChain(stmts);
  }

  s_past_node_t* PastTranslator::translate(async::AwaitAllOp op) {
    s_symbol_t* groupIndex = asyncGroupIndex.find(op.getOperand())->second;
    return getPastWaitFinished(
        getVarSymbol(op.getOperand()),
        groupIndex);
  }

  s_past_node_t* PastTranslator::translate(async::ExecuteOp op) {
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

  s_past_node_t* PastTranslator::translate(async::YieldOp op) {
    assert(op.getNumOperands() == 0);
    return nullptr;
  }

///TODO: workaround!!
  s_past_node_t* PastTranslator::translate(UnrealizedConversionCastOp op) {
    LLVM_DEBUG(
      llvm::errs() << "unrealized cc: " << op << "\n";
    );
    getAndMapSymbol(op.getOperand(0), op.getResult(0));
    return nullptr;
  }

  s_past_node_t* PastTranslator::translate(LLVM::UndefOp op) {
    return past_node_statement_create(
      declareVar(op.getResult(), ""));
  }

  // returns a linked list of the translation of the contained blocks'
  // operations, chained
  s_past_node_t* PastTranslator::translate(Region& region) {
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

  s_past_node_t* PastTranslator::translate_unsupported(Operation* op) {
    assert(op);

    // print op: use generic form to make it easy to find region
    std::string s;
    llvm::raw_string_ostream stream(s);
    op->print(stream, OpPrintingFlags().printGenericOpForm());
    LLVM_DEBUG (
      llvm::errs() << "unsupported op: " << s << "\n";
    );

    // remove op's region, which will be translated separately
    auto first = s.find("({");
    if (first != std::string::npos) {
      auto last = s.rfind("})");
      assert(last != std::string::npos);
      s.erase(first, last);
    }
    // overflows, thank you c++
    // std::regex region(R"(\(\{(.|\n)*\}\))", std::regex::multiline);
    // s = std::regex_replace(s, region, "");
    std::regex quote(R"(")");
    s = std::regex_replace(s, quote, "");

    ///TODO: figure out how strings work...
    s = "\"" + s + "\"";
    char* str = (char*)malloc((s.size() + 1) * sizeof(char));
    strcpy(str, s.c_str());

    std::vector<s_past_node_t*> nodes;
    // declare results of operation so future uses are ok
    for (auto res : op->getResults()) {
      nodes.push_back(past_node_statement_create(
        past_node_varref_create(getVarSymbol(res))));
    }

    nodes.push_back(past_node_statement_create(
      past_node_varref_create(getSymbol(str))));
    for (auto &r : op->getRegions()) {
      nodes.push_back(past_node_block_create(
        translate(r)));
    }
    LLVM_DEBUG (
      llvm::errs() << "unsupported op done\n";
    );
    return nodeChain(nodes);
  }

  s_past_node_t* PastTranslator::translate(Operation* op) {
    s_past_node_t* res;
    if (auto o = dyn_cast<ModuleOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<func::FuncOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<func::ReturnOp>(op)) res = translate(o);

    else if (auto o = dyn_cast<arith::ConstantIntOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::ConstantIndexOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::ConstantFloatOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::AddIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::SubIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::MulIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::DivSIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::DivUIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::RemSIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::AndIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::OrIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::MaxSIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::MinSIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::AddFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::SubFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::MulFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::DivFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<math::PowFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<math::SqrtOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::NegFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<math::ExpOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::ExtUIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::CmpIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::CmpFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::SelectOp>(op)) res = translate(o);

    else if (auto o = dyn_cast<scf::ForOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<scf::IfOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<scf::YieldOp>(op)) res = translate(o);

    else if (auto o = dyn_cast<memref::AllocOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<memref::AllocaOp>(op)) res = translate(o);
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
    else if (auto o = dyn_cast<LLVM::UndefOp>(op)) res = translate(o);
    else {
      if (!allow_unsupported_ops) {
        op->emitError("verif-translate: unknown operation");
        exit(1);
      }

      res = translate_unsupported(op);
    }
    return res;
  }
