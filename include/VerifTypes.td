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
include "mlir/IR/BuiltinTypeInterfaces.td"

include "VerifDialect.td"

class Verif_Type<string name, string typeMnemonic, list<Trait> traits = []>
    : TypeDef<Verif_Dialect, name, traits> {
  let mnemonic = typeMnemonic;
}

def Verif_SemaphoreType : Verif_Type<"Semaphore", "semaphore",
      [MemRefElementTypeInterface]> {
  let summary = "semaphore";
  let description = "";
}

def Verif_CountingSemaphoreType : Verif_Type<"CountingSemaphore", "counting_semaphore",
      [MemRefElementTypeInterface]> {
  let summary = "counting semaphore";
  let description = "";
}


#endif // VERIF_TYPES
