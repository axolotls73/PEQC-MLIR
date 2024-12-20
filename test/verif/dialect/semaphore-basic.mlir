// RUN: split-file %s %t

// RUN: verif-opt %t/set.mlir

// RUN: verif-opt %t/wait.mlir

//--- set.mlir

module {
    %1 = verif.semaphore
    %2 = arith.constant 2 : index
    verif.semaphore.set %1, %2
}

//--- wait.mlir
module {
    %1 = verif.semaphore
    %2 = arith.constant 1 : index
    verif.semaphore.wait %1, %2
}
