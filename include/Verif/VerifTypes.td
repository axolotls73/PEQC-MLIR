//===- VerifTypes.td - Verif dialect types -------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef INTERP_TYPES
#define INTERP_TYPES

include "mlir/IR/AttrTypeBase.td"
include "Verif/VerifDialect.td"

//===----------------------------------------------------------------------===//
// Verif type definitions
//===----------------------------------------------------------------------===//

class Verif_Type<string name, string typeMnemonic, list<Trait> traits = []>
    : TypeDef<Verif_Dialect, name, traits> {
  let mnemonic = typeMnemonic;
}

def Verif_CustomType : Verif_Type<"Custom", "custom"> {
    let summary = "Verif custom type";
    let description = "Custom type in verif dialect";
    let parameters = (ins StringRefParameter<"the custom value">:$value);
    let assemblyFormat = "`<` $value `>`";
}

#endif // INTERP_TYPES
