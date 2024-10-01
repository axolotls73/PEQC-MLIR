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

#include "llvm/Support/InitLLVM.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include "mlir/IR/DialectRegistry.h"
#include "mlir/IR/Operation.h"
#include "mlir/InitAllDialects.h"
#include "mlir/InitAllTranslations.h"
#include "mlir/Support/LogicalResult.h"
#include "mlir/Support/FileUtilities.h"
#include "mlir/Tools/mlir-translate/MlirTranslateMain.h"
#include "mlir/Tools/mlir-translate/Translation.h"
// #include "mlir/Parser/Parser.h"
#include "mlir/Tools/ParseUtilities.h"

#include "Dialect/VerifDialect.h"

#include <cstdio>
#include <iterator>
#include <fstream>
#include <iostream>
#include "past/past.h"
#include "past/pprint.h"


///TODO: this stuff has to exist somewhere in llvm, value hashmap??
template<>
struct std::hash<mlir::Value> {
  std::size_t operator()(const mlir::Value& v) const noexcept {
    return mlir::hash_value(v);
  }
};


namespace mlir {
namespace verif {


class PastTranslator {

  //options
  bool declare_variables = true;

  symbol_table_t* symbolTable = symbol_table_malloc();
  std::unordered_map<Value, std::string> valueNames;

  // assuming FuncOp sym_names are unique since I can't find a
  // hash function for ops.
  std::unordered_map<std::string, std::vector<s_symbol_t*>*> functionReturnVars;

  class FuncRetVal : public Value {
    public:
    FuncRetVal(Type type) {
      setType(type);
    }
  };

  int varSuffix = 0;

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

  s_past_node_t* getVarDecl(Type type, s_symbol_t* var) {
    if (declare_variables)
      return past_node_vardecl_create(
        past_node_varref_create(getTypeSymbol(type)),
        past_node_varref_create(var)
      );
    else return past_node_varref_create(var);
  }

  s_past_node_t* getVarDecl(Value val, std::string name = "var") {
    return getVarDecl(val.getType(), getVarSymbol(val, name));
  }

  s_symbol_t* getTypeSymbol(const Type& t) {
    return getSymbol(getTypeName(t));
  }

  std::string getTypeName(const Type& t) {
    if (t.isIndex()) return "int";

    else if (t.isInteger()) {
      auto it = dyn_cast<IntegerType>(t);
      std::string ret = "";

      switch (it.getSignedness()) {
        case IntegerType::SignednessSemantics::Signed:
          break;
        case IntegerType::SignednessSemantics::Unsigned:
        case IntegerType::SignednessSemantics::Signless:
          ret += "unsigned ";
          break;
      }

      switch (it.getWidth()) {
        case 32:
          ret += "long ";
          break;
        default: assert(0);
      }
      ret += "int";
      return ret;
    }

    else if (auto tm = dyn_cast<MemRefType>(t)) {

    }
    assert(0);
  }

  e_past_value_type_t getTypePast(const Type& t) {
    // llvm::errs() << "getTypePast: " << t << "\n";
    // llvm::errs() << "  " << t.getIntOrFloatBitWidth() << "\n";
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




  // builtin

  s_past_node_t* translate(ModuleOp& op) {
    s_past_node_t* ret = past_node_root_create(symbolTable, translate(op.getRegion()));
    return ret;
  }

  // func

  s_past_node_t* translate(func::FuncOp& op) {
    ///TODO: function to chain node over iterator
    s_past_node_t* funcArgs = nullptr;
    s_past_node_t* cur = nullptr;
    // add args
    for (auto arg : op.getRegion().getArguments()) {
      if (!funcArgs) funcArgs = cur = getVarDecl(arg, "func_arg");
      else {
        cur->next = getVarDecl(arg, "func_arg");
        cur = cur->next;
      }
    }
    // add results as args
    auto vec = new std::vector<s_symbol_t*>();
    functionReturnVars[op.getSymName().str()] = vec;
    for (auto type : op.getResultTypes()) {
      s_symbol_t* sym = getSymbol("func_arg_ret_" + std::to_string(varSuffix++));
      (*vec).push_back(sym);
      if (!funcArgs) funcArgs = cur = getVarDecl(type, sym);
      else {
        cur->next = getVarDecl(type, sym);
        cur = cur->next;
      }
    }

    s_past_node_t* ret = past_node_fundecl_create(
      past_node_varref_create(getSymbol("void")),
      past_node_varref_create(getSymbol(op.getSymName().str())),
      funcArgs,
      translate(op.getRegion())
    );
    return ret;
  }

  s_past_node_t* translate(func::ReturnOp& op) {
    auto func = op.getParentOp<func::FuncOp>();
    assert(func);

    s_past_node_t* ret = nullptr;
    s_past_node_t* cur = nullptr;

    auto getSymVar = [this](s_symbol_t* s, Value v) {
      return past_node_statement_create(
        past_node_binary_create(past_assign,
          past_node_varref_create(s),
          past_node_varref_create(getVarSymbol(v))
        )
      );
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

    cur->next = past_node_statement_create(
      past_node_keyword_create(e_past_keyword_return, nullptr)
    );
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

  s_past_node_t* translateArithBinop
            (const char* resultName, const cs_past_node_type_t* pastType,
             Value res, Value lhs, Value rhs) {
    return getDeclareAndAssign(res.getType(), resultName, res,
        past_node_binary_create(pastType,
          past_node_varref_create(getVarSymbol(lhs)),
          past_node_varref_create(getVarSymbol(rhs))));
  }

  s_past_node_t* translate(arith::AddIOp& op) {
    return translateArithBinop("arith_addi", past_add, op.getResult(), op.getOperand(0), op.getOperand(1));
  }
  s_past_node_t* translate(arith::AddFOp& op) {
    return translateArithBinop("arith_addf", past_add, op.getResult(), op.getOperand(0), op.getOperand(1));
  }
  s_past_node_t* translate(arith::MulIOp& op) {
    return translateArithBinop("arith_muli", past_mul, op.getResult(), op.getOperand(0), op.getOperand(1));
  }
  s_past_node_t* translate(arith::MulFOp& op) {
    return translateArithBinop("arith_mulf", past_mul, op.getResult(), op.getOperand(0), op.getOperand(1));
  }
  // s_past_node_t* translate(arith::Div& op) {
  //   return translateArithBinop("arith_divi", past_div, op.getResult(), op.getOperand(0), op.getOperand(1));
  // }
  s_past_node_t* translate(arith::DivFOp& op) {
    return translateArithBinop("arith_divf", past_div, op.getResult(), op.getOperand(0), op.getOperand(1));
  }

  // scf

  s_past_node_t* translate(scf::ForOp) {

  }


  // memref

  s_past_node_t* translate(memref::AllocOp) {

  }

  s_past_node_t* translate(memref::LoadOp) {

  }

  s_past_node_t* translate(memref::StoreOp) {

  }

  s_past_node_t* translate(memref::CopyOp) {

  }


  // returns a linked list of the translation of the contained blocks'
  // operations, chained
  s_past_node_t* translate(Region& region) {
    s_past_node_t* ret = nullptr;
    s_past_node_t* cur = nullptr;

    for(Block& block : region.getBlocks()) {
      for (Operation& op : block.getOperations()) {
        if (!ret) ret = cur = translate(&op);
        else {
          cur->next = translate(&op);
          cur = cur->next;
        }
        while (cur->next) cur = cur->next;
      }
    }
    return ret;
  }

  public:

  s_past_node_t* translate(Operation* op) {
    s_past_node_t* res;
    if (auto o = dyn_cast<ModuleOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<func::FuncOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<func::ReturnOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::ConstantIntOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::AddIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::AddFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::MulIOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::MulFOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<arith::DivFOp>(op)) res = translate(o);
    else {
      llvm::errs() << "idk " << op->getName() << "\n";
      exit(1);
    }
    return res;
  }

};

  LogicalResult translateToPast(Operation* op, llvm::raw_ostream &output, bool textOutput) {
    PastTranslator translator;
    s_past_node_t* res = translator.translate(op);

    ///TODO: find a better way to interface btwn FILE and ostream?
    std::string filename = "translate_temp" + //file weirdness when testing. dumb hack
        std::to_string(std::chrono::system_clock::now().time_since_epoch() / std::chrono::milliseconds(1)) + ".txt";
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

  mlir::registerAllTranslations();

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
            mlir::memref::MemRefDialect
          >();
      });

  return failed(
      mlir::mlirTranslateMain(argc, argv, "verif-translate"));
}
