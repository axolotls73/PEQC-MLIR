//===- VerifTypes.td - Verif dialect types -------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef VERIF_TYPES
#define VERIF_TYPES

include "mlir/IR/AttrTypeBase.td"
include "VerifDialect.td"

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

def Verif_Ptr : Verif_Type<"Ptr", "ptr"> {
    let summary = "";
    let description = "";
    //TODO: how to make this index
    let parameters = (ins "int":$dims);
    let assemblyFormat = "`<` $dims `>`";
}


#endif // VERIF_TYPES
