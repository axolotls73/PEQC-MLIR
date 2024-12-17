/*
 * VerifUtil.h: This file is part of the PEQC-MLIR project.
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

#ifndef VERIF_VERIFUTIL_H
#define VERIF_VERIFUTIL_H

#include "mlir/IR/Operation.h"

///TODO: this stuff has to exist somewhere in llvm, value hashmap??
template<>
struct std::hash<mlir::Value> {
  std::size_t operator()(const mlir::Value& v) const noexcept {
    return mlir::hash_value(v);
  }
};

#endif // VERIF_VERIFUTIL_H