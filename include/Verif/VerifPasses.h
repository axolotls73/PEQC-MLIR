//===- VerifPasses.h - Verif passes  ------------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
#ifndef VERIF_VERIFPASSES_H
#define VERIF_VERIFPASSES_H

#include "Verif/VerifDialect.h"
#include "Verif/VerifOps.h"
#include "mlir/Pass/Pass.h"
#include <memory>

namespace mlir {
namespace verif {
#define GEN_PASS_DECL
#include "Verif/VerifPasses.h.inc"

#define GEN_PASS_REGISTRATION
#include "Verif/VerifPasses.h.inc"
} // namespace verif
} // namespace mlir

#endif
