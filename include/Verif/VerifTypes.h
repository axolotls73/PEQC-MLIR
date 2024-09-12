//===- VerifTypes.h - Verif dialect types -------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef INTERP_INTERPTYPES_H
#define INTERP_INTERPTYPES_H

#include "mlir/IR/BuiltinTypes.h"

#define GET_TYPEDEF_CLASSES
#include "Verif/VerifOpsTypes.h.inc"

#endif // INTERP_INTERPTYPES_H
