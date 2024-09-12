//===- VerifDialect.td - Verif dialect -----------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef INTERP_DIALECT
#define INTERP_DIALECT

include "mlir/IR/OpBase.td"

//===----------------------------------------------------------------------===//
// Verif dialect definition.
//===----------------------------------------------------------------------===//

def Verif_Dialect : Dialect {
    let name = "verif";
    let summary = "A verif out-of-tree MLIR dialect.";
    let description = [{
        This dialect is an example of an out-of-tree MLIR dialect designed to
        illustrate the basic setup required to develop MLIR-based tools without
        working inside of the LLVM source tree.
    }];
    let cppNamespace = "::mlir::verif";

    let useDefaultTypePrinterParser = 1;
    let extraClassDeclaration = [{
        void registerTypes();
    }];
}

//===----------------------------------------------------------------------===//
// Base verif operation definition.
//===----------------------------------------------------------------------===//

class Verif_Op<string mnemonic, list<Trait> traits = []> :
        Op<Verif_Dialect, mnemonic, traits>;

#endif // INTERP_DIALECT
