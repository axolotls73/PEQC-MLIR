// RUN: split-file %s %t

// RUN: not verif-opt %t/read.mlir

// RUN: not verif-opt %t/write.mlir

//--- read.mlir

module {
    %1 = arith.constant 1 : index
    %2 = verif.fifo.read %1 : memref<1xf32>
}

//--- write.mlir
module {
    %1 = arith.constant 1 : index
    %a = memref.alloc() : memref<1xf32>
    verif.fifo.write %1, %a : memref<1xf32>
}
