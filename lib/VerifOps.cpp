/*
 * VerifOps.cpp: This file is part of the PEQC-MLIR project.
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

#include "VerifOps.h"
#include "VerifDialect.h"
#include "VerifTypes.h"

#define GET_OP_CLASSES
#include "VerifOps.cpp.inc"

namespace mlir::verif {

mlir::LogicalResult FifoReadOp::verify() {
  auto initop = dyn_cast<FifoInitOp>(getFifoId().getDefiningOp());
  if (!initop) {
    return emitOpError("fifo id must be defined by verif.fifo.init");
  }
  if (initop.getEltType() != getRes().getType()) {
    return emitOpError("memref type doesn't match fifo type");
  }
  return success();
}

mlir::LogicalResult FifoWriteOp::verify() {
  auto initop = dyn_cast<FifoInitOp>(getFifoId().getDefiningOp());
  if (!initop) {
    return emitOpError("fifo id must be defined by verif.fifo.init");
  }
  if (initop.getEltType() != getVal().getType()) {
    return emitOpError("memref type doesn't match fifo type");
  }
  return success();
}

}
