module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c40 step %c1 {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg6 = %c0_6 to %arg5 step %c1_7 {
        %1 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        memref.store %1, %alloca[] : memref<f64>
        %c0_10 = arith.constant 0 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg7 = %c0_10 to %arg6 step %c1_11 {
          %5 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %6 = memref.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloca[] : memref<f64>
          %9 = arith.subf %8, %7 : f64
          memref.store %9, %alloca[] : memref<f64>
        }
        %2 = memref.load %alloca[] : memref<f64>
        %3 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
        %4 = arith.divf %2, %3 : f64
        memref.store %4, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
      %c40_8 = arith.constant 40 : index
      %c1_9 = arith.constant 1 : index
      scf.for %arg6 = %arg5 to %c40_8 step %c1_9 {
        %1 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        memref.store %1, %alloca[] : memref<f64>
        %c0_10 = arith.constant 0 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg7 = %c0_10 to %arg5 step %c1_11 {
          %3 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %4 = memref.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloca[] : memref<f64>
          %7 = arith.subf %6, %5 : f64
          memref.store %7, %alloca[] : memref<f64>
        }
        %2 = memref.load %alloca[] : memref<f64>
        memref.store %2, %arg1[%arg5, %arg6] : memref<?x40xf64>
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
      %c-1_6 = arith.constant -1 : index
      %4 = arith.muli %arg5, %c-1_6 : index
      %c40_7 = arith.constant 40 : index
      %5 = arith.addi %4, %c40_7 : index
      %c40_8 = arith.constant 40 : index
      %c1_9 = arith.constant 1 : index
      scf.for %arg6 = %5 to %c40_8 step %c1_9 {
        %c-1_16 = arith.constant -1 : index
        %15 = arith.muli %arg5, %c-1_16 : index
        %c39_17 = arith.constant 39 : index
        %16 = arith.addi %15, %c39_17 : index
        %17 = memref.load %arg1[%16, %arg6] : memref<?x40xf64>
        %18 = memref.load %arg3[%arg6] : memref<?xf64>
        %19 = arith.mulf %17, %18 : f64
        %20 = memref.load %alloca[] : memref<f64>
        %21 = arith.subf %20, %19 : f64
        memref.store %21, %alloca[] : memref<f64>
      }
      %6 = memref.load %alloca[] : memref<f64>
      %c-1_10 = arith.constant -1 : index
      %7 = arith.muli %arg5, %c-1_10 : index
      %c39_11 = arith.constant 39 : index
      %8 = arith.addi %7, %c39_11 : index
      %c-1_12 = arith.constant -1 : index
      %9 = arith.muli %arg5, %c-1_12 : index
      %c39_13 = arith.constant 39 : index
      %10 = arith.addi %9, %c39_13 : index
      %11 = memref.load %arg1[%8, %10] : memref<?x40xf64>
      %12 = arith.divf %6, %11 : f64
      %c-1_14 = arith.constant -1 : index
      %13 = arith.muli %arg5, %c-1_14 : index
      %c39_15 = arith.constant 39 : index
      %14 = arith.addi %13, %c39_15 : index
      memref.store %12, %arg3[%14] : memref<?xf64>
    }
    return
  }
}

