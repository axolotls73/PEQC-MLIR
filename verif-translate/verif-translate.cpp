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
    if (declare_variables)
      return past_node_vardecl_create(
        past_node_varref_create(type),
        past_node_varref_create(var)
      );
    else return past_node_varref_create(var);
  }

  s_past_node_t* getVarDecl(Value val, std::string name = "var") {
    return getVarDecl(getTypeSymbol(val.getType()), getVarSymbol(val, name));
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
      assert(n);
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


  s_past_node_t* getArrayCopy(const MemRefType& type, s_symbol_t* src, s_symbol_t* dst,
          llvm::ArrayRef<int64_t> dims, std::vector<s_symbol_t*> itervars) {

    auto iter = getTempVarSymbol("copy_iter");
    itervars.push_back(iter);

    s_past_node_t* body = nullptr;
    if (dims.size() == 1) {
      body = past_node_statement_create(
        past_node_binary_create(past_assign,
          getArrayAccess(dst, itervars),
          getArrayAccess(src, itervars)
        )
      );
    }
    else {
      body = getArrayCopy(type, src, dst, dims.drop_front(1), itervars);
    }

    return past_node_for_create(
      past_node_binary_create(past_assign,
        past_node_varref_create(iter),
        past_node_value_create_from_int(0)
      ),
      past_node_binary_create(past_lt,
        past_node_varref_create(iter),
        past_node_value_create_from_longlong(dims[0])
      ),
      iter,
      past_node_binary_create(past_addassign,
        past_node_varref_create(iter),
        past_node_value_create_from_int(1)
      ),
      body
    );
  }

  s_past_node_t* getArrayCopy(const MemRefType& type, s_symbol_t* src, s_symbol_t* dst) {
    auto dims = type.getShape();
    assert(dims.size() > 0);

    return getArrayCopy(type, src, dst, dims, std::vector<s_symbol_t*>());
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
      s_symbol_t* sym = getTempVarSymbol("func_arg_ret");
      (*vec).push_back(sym);
      if (!funcArgs) funcArgs = cur = getVarDecl(getTypeSymbol(type), sym);
      else {
        cur->next = getVarDecl(getTypeSymbol(type), sym);
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
    llvm::errs() << op.getResults().size() << " " << op.getInitArgs().size() << " " << op.getInits().size() << "\n" ;
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
            getVarDecl(iv, "for_iter_arg"),
            past_node_varref_create(getVarSymbol(init)))));
      // map to corresponding result
      getAndMapSymbol(iv, res);
    }

    stmts.push_back(past_node_for_create(
      past_node_binary_create(past_assign,
        getVarDecl(getTypeSymbol(op.getInductionVar().getType()), iterator),
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
    return past_node_statement_create(getVarDecl(op.getResult(), "memref_alloc"));
  }

  s_past_node_t* translate(memref::LoadOp op) {
    return past_node_statement_create(
      past_node_binary_create(past_assign,
        past_node_varref_create(getVarSymbol(op.getResult())),
        getArrayAccess(op.getMemRef(), op.getIndices())
    ));
  }

  s_past_node_t* translate(memref::StoreOp op) {
    return past_node_statement_create(
      past_node_binary_create(past_assign,
        getArrayAccess(op.getMemRef(), op.getIndices()),
        past_node_varref_create(getVarSymbol(op.getValueToStore()))
    ));
  }

  s_past_node_t* translate(memref::CopyOp op) {
    auto type = dyn_cast<MemRefType>(op.getSource().getType());
    assert(type);
    return getArrayCopy(type, getVarSymbol(op.getSource()), getVarSymbol(op.getTarget()));
  }


  // returns a linked list of the translation of the contained blocks'
  // operations, chained
  s_past_node_t* translate(Region& region) {
    std::vector<s_past_node_t*> stmts;
    for(Block& block : region.getBlocks()) {
      for (Operation& op : block.getOperations()) {
        if (auto stmt = translate(&op))
          stmts.push_back(stmt);
      }
    }
    return nodeChain(stmts);
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
    else if (auto o = dyn_cast<memref::LoadOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<memref::StoreOp>(op)) res = translate(o);
    else if (auto o = dyn_cast<memref::CopyOp>(op)) res = translate(o);
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
