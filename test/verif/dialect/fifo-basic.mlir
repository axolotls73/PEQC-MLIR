// RUN: split-file %s %t

// RUN: verif-opt %t/read.mlir

// RUN: verif-opt %t/write.mlir

//--- read.mlir

module {
    %1 = verif.fifo.init : memref<1xf32>
    %2 = verif.fifo.read %1 : memref<1xf32>
}

//--- write.mlir
module {
    %1 = verif.fifo.init : memref<1xf32>
    %a = memref.alloc() : memref<1xf32>
    verif.fifo.write %1, %a : memref<1xf32>
}
