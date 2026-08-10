module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    %alloca = memref.alloca() : memref<f64>
    %1 = llvm.mlir.undef : f64
    memref.store %1, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %0 step %c1 {
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg6 = %c0_4 to %arg5 step %c1_5 {
        %2 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        memref.store %2, %alloca[] : memref<f64>
        %c0_7 = arith.constant 0 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg7 = %c0_7 to %arg6 step %c1_8 {
          %6 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %7 = memref.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %alloca[] : memref<f64>
          %10 = arith.subf %9, %8 : f64
          memref.store %10, %alloca[] : memref<f64>
        }
        %3 = memref.load %alloca[] : memref<f64>
        %4 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
        %5 = arith.divf %3, %4 : f64
        memref.store %5, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
      %c1_6 = arith.constant 1 : index
      scf.for %arg6 = %arg5 to %0 step %c1_6 {
        %2 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        memref.store %2, %alloca[] : memref<f64>
        %c0_7 = arith.constant 0 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg7 = %c0_7 to %arg5 step %c1_8 {
          %4 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %5 = memref.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %alloca[] : memref<f64>
          %8 = arith.subf %7, %6 : f64
          memref.store %8, %alloca[] : memref<f64>
        }
        %3 = memref.load %alloca[] : memref<f64>
        memref.store %3, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg5 = %c0_0 to %0 step %c1_1 {
      %2 = memref.load %arg2[%arg5] : memref<?xf64>
      memref.store %2, %alloca[] : memref<f64>
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg6 = %c0_4 to %arg5 step %c1_5 {
        %4 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        %5 = memref.load %arg4[%arg6] : memref<?xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = memref.load %alloca[] : memref<f64>
        %8 = arith.subf %7, %6 : f64
        memref.store %8, %alloca[] : memref<f64>
      }
      %3 = memref.load %alloca[] : memref<f64>
      memref.store %3, %arg4[%arg5] : memref<?xf64>
    }
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg5 = %c0_2 to %0 step %c1_3 {
      %c-1 = arith.constant -1 : index
      %2 = arith.muli %arg5, %c-1 overflow<nsw> : index
      %3 = arith.addi %2, %0 : index
      %c-1_4 = arith.constant -1 : index
      %4 = arith.addi %3, %c-1_4 : index
      %5 = memref.load %arg4[%4] : memref<?xf64>
      memref.store %5, %alloca[] : memref<f64>
      %c-1_5 = arith.constant -1 : index
      %6 = arith.muli %arg5, %c-1_5 overflow<nsw> : index
      %7 = arith.addi %6, %0 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg6 = %7 to %0 step %c1_6 {
        %c-1_13 = arith.constant -1 : index
        %20 = arith.muli %arg5, %c-1_13 overflow<nsw> : index
        %21 = arith.addi %20, %0 : index
        %c-1_14 = arith.constant -1 : index
        %22 = arith.addi %21, %c-1_14 : index
        %23 = memref.load %arg1[%22, %arg6] : memref<?x40xf64>
        %24 = memref.load %arg3[%arg6] : memref<?xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = memref.load %alloca[] : memref<f64>
        %27 = arith.subf %26, %25 : f64
        memref.store %27, %alloca[] : memref<f64>
      }
      %8 = memref.load %alloca[] : memref<f64>
      %c-1_7 = arith.constant -1 : index
      %9 = arith.muli %arg5, %c-1_7 overflow<nsw> : index
      %10 = arith.addi %9, %0 : index
      %c-1_8 = arith.constant -1 : index
      %11 = arith.addi %10, %c-1_8 : index
      %c-1_9 = arith.constant -1 : index
      %12 = arith.muli %arg5, %c-1_9 overflow<nsw> : index
      %13 = arith.addi %12, %0 : index
      %c-1_10 = arith.constant -1 : index
      %14 = arith.addi %13, %c-1_10 : index
      %15 = memref.load %arg1[%11, %14] : memref<?x40xf64>
      %16 = arith.divf %8, %15 : f64
      %c-1_11 = arith.constant -1 : index
      %17 = arith.muli %arg5, %c-1_11 overflow<nsw> : index
      %18 = arith.addi %17, %0 : index
      %c-1_12 = arith.constant -1 : index
      %19 = arith.addi %18, %c-1_12 : index
      memref.store %16, %arg3[%19] : memref<?xf64>
    }
    return
  }
}

