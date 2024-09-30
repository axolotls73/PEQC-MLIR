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

  symbol_table_t* symbolTable = symbol_table_malloc();
  std::unordered_map<Value, std::string> valueNames;

  int varSuffix = 0;

  symbol_t* getSymbol(std::string name) {
    return symbol_get_or_insert(symbolTable, name.c_str(), nullptr);
  }

  symbol_t* getVarSymbol(Value val, std::string name = "var") {
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

  s_past_node_t* getVar(Value val, std::string name = "var") {
    return past_node_varref_create(getVarSymbol(val, name));
  }

  s_past_node_t* getVarDecl(Value val, std::string name = "var") {
    return past_node_vardecl_create(
      past_node_varref_create(getTypeSymbol(val.getType())),
      getVar(val, name)
    );
  }

  s_symbol_t* getTypeSymbol(const Type& t) {
    return getSymbol(getTypeName(t));
  }

  std::string getTypeName(const Type& t) {
    const char* type = nullptr;

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
    for (auto arg : op.getRegion().getArguments()) {
      if (!funcArgs) funcArgs = cur = getVarDecl(arg, "func_arg");
      else {
        cur->next = getVarDecl(arg, "func_arg");
        cur = cur->next;
      }
    }

    assert(op.getNumResults() == 1);
    s_past_node_t* ret = past_node_fundecl_create(
      past_node_varref_create(getTypeSymbol(op.getResultTypes()[0])),
      past_node_varref_create(getSymbol(op.getSymName().str())),
      funcArgs,
      translate(op.getRegion())
    );
    return ret;
  }

  s_past_node_t* translate(func::ReturnOp& op) {
    assert(op.getNumOperands() == 1);
    return past_node_statement_create(
      past_node_keyword_create(e_past_keyword_return_value,
        getVar(op.getOperand(0))));
  }


  // arith

  s_past_node_t* translate(arith::ConstantOp& op, const Type& type, u_past_value_data_t val) {
    OpResult res = op->getResult(0);
    return getDeclareAndAssign(type, "arith_const", res, past_node_value_create(getTypePast(type), val));
  }

  s_past_node_t* translate(arith::ConstantIntOp& op) {
    u_past_value_data_t val = { .intval = op.value() };
    return translate(op, op.getResult().getType(), val);
  }


  s_past_node_t* translate(arith::AddIOp& op) {
    return getDeclareAndAssign(op.getResult().getType(), "arith_addi", op.getResult(),
        past_node_binary_create(past_add,
          past_node_varref_create(getVarSymbol(op.getOperand(0))),
          past_node_varref_create(getVarSymbol(op.getOperand(1)))));
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
    auto file = std::fopen("translate_temp.txt", "w");
    past_pprint(file, res);
    std::ifstream infile("translate_temp.txt");
    std::string outstr((std::istreambuf_iterator<char>(infile)),
                       (std::istreambuf_iterator<char>()));
    std::fclose(file);
    std::remove("translate_temp.txt");
    std::string line;
    while (std::getline(infile, line)) {
      output << line << "\n";
    }

    output << outstr;
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
