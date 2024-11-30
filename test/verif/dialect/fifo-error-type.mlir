// RUN: split-file %s %t

// RUN: not verif-opt %t/read.mlir

// RUN: not verif-opt %t/write.mlir

//--- read.mlir

module {
    %1 = verif.fifo.init : memref<5xf32>
    %2 = verif.fifo.read %1 : memref<1xf32>
}

//--- write.mlir
module {
    %1 = verif.fifo.init : memref<1xf32>
    %a = memref.alloc() : memref<4xf32>
    verif.fifo.write %1, %a : memref<4xf32>
}
