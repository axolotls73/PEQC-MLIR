/*
 * VerifTypes.td: This file is part of the PEQC-MLIR project.
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

#ifndef VERIF_TYPES
#define VERIF_TYPES

include "mlir/IR/AttrTypeBase.td"
include "VerifDialect.td"

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


#endif // VERIF_TYPES
