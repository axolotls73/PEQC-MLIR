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