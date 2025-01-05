// RUN: split-file %s %t

// RUN: verif-opt %t/set.mlir
// RUN: verif-opt %t/wait.mlir
// RUN: verif-opt %t/memref.mlir

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

//--- memref.mlir

module {
    %mr = memref.alloc() : memref<1x!verif.semaphore>
    %1 = verif.semaphore
    %i = arith.constant 0 : index
    memref.store %1, %mr[%i] : memref<1x!verif.semaphore>
}
