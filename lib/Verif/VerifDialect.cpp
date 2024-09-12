//===- VerifDialect.cpp - Verif dialect ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "Verif/VerifDialect.h"
#include "Verif/VerifOps.h"
#include "Verif/VerifTypes.h"

using namespace mlir;
using namespace mlir::verif;

#include "Verif/VerifOpsDialect.cpp.inc"

//===----------------------------------------------------------------------===//
// Verif dialect.
//===----------------------------------------------------------------------===//

void VerifDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "Verif/VerifOps.cpp.inc"
      >();
  registerTypes();
}
