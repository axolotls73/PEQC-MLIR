//===- VerifDialect.cpp - Verif dialect ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "Dialect/VerifDialect.h"
#include "Dialect/VerifOps.h"
#include "Dialect/VerifTypes.h"

using namespace mlir;
using namespace mlir::verif;

#include "Dialect/VerifDialect.cpp.inc"

//===----------------------------------------------------------------------===//
// Verif dialect.
//===----------------------------------------------------------------------===//

void VerifDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "Dialect/VerifOps.cpp.inc"
      >();
  registerTypes();
}
