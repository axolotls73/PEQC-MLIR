/*
 * VerifPasses.h: This file is part of the PEQC-MLIR project.
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

#ifndef VERIF_VERIFPASSES_H
#define VERIF_VERIFPASSES_H

#include "VerifDialect.h"
#include "VerifOps.h"
#include "mlir/Pass/Pass.h"
#include <memory>

namespace mlir {
namespace verif {
#define GEN_PASS_DECL
#include "VerifPasses.h.inc"

#define GEN_PASS_REGISTRATION
#include "VerifPasses.h.inc"
} // namespace verif
} // namespace mlir

#endif
