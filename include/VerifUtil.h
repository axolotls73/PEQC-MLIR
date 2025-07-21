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
#include "llvm/ADT/Hashing.h"

///TODO: this stuff has to exist somewhere in llvm, value hashmap??
template<>
struct std::hash<mlir::Value> {
  std::size_t operator()(const mlir::Value& v) const noexcept {
    return mlir::hash_value(v);
  }
};

// https://stackoverflow.com/a/32685618
struct pair_hash {
  template <class T1, class T2>
  std::size_t operator () (const std::pair<T1,T2> &p) const {
      auto h1 = std::hash<T1>{}(p.first);
      auto h2 = std::hash<T2>{}(p.second);
      return llvm::hash_combine(h1, h2);
  }
};

struct pair_value_comparator {
  bool operator()(const std::pair<mlir::Value, mlir::Value>& lhs,
                  const std::pair<mlir::Value, mlir::Value>& rhs) const {
      void* lhs_ptr = lhs.first.getAsOpaquePointer();
      void* rhs_ptr = rhs.first.getAsOpaquePointer();
      if (lhs_ptr != rhs_ptr) {
          return lhs_ptr < rhs_ptr;
      }

      lhs_ptr = lhs.second.getAsOpaquePointer();
      rhs_ptr = rhs.second.getAsOpaquePointer();
      return lhs_ptr < rhs_ptr;
  }
};

#endif // VERIF_VERIFUTIL_H