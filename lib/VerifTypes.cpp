//===- VerifTypes.cpp - Verif dialect types -----------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "VerifTypes.h"

#include "VerifDialect.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/DialectImplementation.h"
#include "llvm/ADT/TypeSwitch.h"

using namespace mlir::verif;

#define GET_TYPEDEF_CLASSES
#include "VerifTypes.cpp.inc"

void VerifDialect::registerTypes() {
  addTypes<
#define GET_TYPEDEF_LIST
#include "VerifTypes.cpp.inc"
      >();
}
