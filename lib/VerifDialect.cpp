/*
 * VerifDialect.cpp: This file is part of the PEQC-MLIR project.
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

#include "VerifDialect.h"
#include "VerifOps.h"
#include "VerifTypes.h"

using namespace mlir;
using namespace mlir::verif;

#include "VerifDialect.cpp.inc"

void VerifDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "VerifOps.cpp.inc"
      >();
  registerTypes();
}
