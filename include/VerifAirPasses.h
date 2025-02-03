/*
 * VerifAirPasses.h: This file is part of the PEQC-MLIR project.
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

#ifndef VERIF_VERIFAIRPASSES_H
#define VERIF_VERIFAIRPASSES_H

#include "VerifDialect.h"
#include "VerifOps.h"
#include "mlir/Pass/Pass.h"
#include <memory>

namespace mlir::verif::air {
#define GEN_PASS_DECL
#include "VerifAirPasses.h.inc"

#define GEN_PASS_REGISTRATION
#include "VerifAirPasses.h.inc"
} // namespace mlir::verif::air

#endif
