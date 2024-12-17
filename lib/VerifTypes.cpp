/*
 * VerifTypes.cpp: This file is part of the PEQC-MLIR project.
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
