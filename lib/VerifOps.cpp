//===- VerifOps.cpp - Verif dialect ops ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

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
