module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %0, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c40 step %c1 {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg6 = %c0_6 to %arg5 step %c1_7 {
        %3 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        memref.store %3, %alloca[] : memref<f64>
        %c0_11 = arith.constant 0 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg7 = %c0_11 to %arg6 step %c1_12 {
          %7 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %8 = memref.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = memref.load %alloca[] : memref<f64>
          %11 = arith.subf %10, %9 : f64
          memref.store %11, %alloca[] : memref<f64>
        }
        %4 = memref.load %alloca[] : memref<f64>
        %5 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
        %6 = arith.divf %4, %5 : f64
        memref.store %6, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
      %c0_8 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg5, %c-1 : index
      %c40_9 = arith.constant 40 : index
      %2 = arith.addi %1, %c40_9 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg6 = %c0_8 to %2 step %c1_10 {
        %3 = arith.addi %arg5, %arg6 : index
        %4 = memref.load %arg1[%arg5, %3] : memref<?x40xf64>
        memref.store %4, %alloca[] : memref<f64>
        %c0_11 = arith.constant 0 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg7 = %c0_11 to %arg5 step %c1_12 {
          %6 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %7 = memref.load %arg1[%arg7, %3] : memref<?x40xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %alloca[] : memref<f64>
          %10 = arith.subf %9, %8 : f64
          memref.store %10, %alloca[] : memref<f64>
        }
        %5 = memref.load %alloca[] : memref<f64>
        memref.store %5, %arg1[%arg5, %3] : memref<?x40xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c40_1 = arith.constant 40 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg5 = %c0_0 to %c40_1 step %c1_2 {
      %1 = memref.load %arg2[%arg5] : memref<?xf64>
      memref.store %1, %alloca[] : memref<f64>
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg6 = %c0_6 to %arg5 step %c1_7 {
        %3 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        %4 = memref.load %arg4[%arg6] : memref<?xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = memref.load %alloca[] : memref<f64>
        %7 = arith.subf %6, %5 : f64
        memref.store %7, %alloca[] : memref<f64>
      }
      %2 = memref.load %alloca[] : memref<f64>
      memref.store %2, %arg4[%arg5] : memref<?xf64>
    }
    %c0_3 = arith.constant 0 : index
    %c40_4 = arith.constant 40 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg5 = %c0_3 to %c40_4 step %c1_5 {
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg5, %c-1 : index
      %c39 = arith.constant 39 : index
      %2 = arith.addi %1, %c39 : index
      %3 = memref.load %arg4[%2] : memref<?xf64>
      memref.store %3, %alloca[] : memref<f64>
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg6 = %c0_6 to %arg5 step %c1_7 {
        %c-1_14 = arith.constant -1 : index
        %13 = arith.muli %arg5, %c-1_14 : index
        %14 = arith.addi %13, %arg6 : index
        %c40_15 = arith.constant 40 : index
        %15 = arith.addi %14, %c40_15 : index
        %c-1_16 = arith.constant -1 : index
        %16 = arith.muli %arg5, %c-1_16 : index
        %c39_17 = arith.constant 39 : index
        %17 = arith.addi %16, %c39_17 : index
        %18 = memref.load %arg1[%17, %15] : memref<?x40xf64>
        %19 = memref.load %arg3[%15] : memref<?xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %alloca[] : memref<f64>
        %22 = arith.subf %21, %20 : f64
        memref.store %22, %alloca[] : memref<f64>
      }
      %4 = memref.load %alloca[] : memref<f64>
      %c-1_8 = arith.constant -1 : index
      %5 = arith.muli %arg5, %c-1_8 : index
      %c39_9 = arith.constant 39 : index
      %6 = arith.addi %5, %c39_9 : index
      %c-1_10 = arith.constant -1 : index
      %7 = arith.muli %arg5, %c-1_10 : index
      %c39_11 = arith.constant 39 : index
      %8 = arith.addi %7, %c39_11 : index
      %9 = memref.load %arg1[%6, %8] : memref<?x40xf64>
      %10 = arith.divf %4, %9 : f64
      %c-1_12 = arith.constant -1 : index
      %11 = arith.muli %arg5, %c-1_12 : index
      %c39_13 = arith.constant 39 : index
      %12 = arith.addi %11, %c39_13 : index
      memref.store %10, %arg3[%12] : memref<?xf64>
    }
    return
  }
}

