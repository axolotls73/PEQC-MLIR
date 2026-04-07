module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    scf.for %arg5 = %c0 to %c40 step %c32 {
      %c32_6 = arith.constant 32 : index
      %1 = arith.addi %arg5, %c32_6 : index
      %c40_7 = arith.constant 40 : index
      %2 = arith.minsi %1, %c40_7 : index
      %c1 = arith.constant 1 : index
      scf.for %arg6 = %arg5 to %2 step %c1 {
        %c0_8 = arith.constant 0 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %arg6 step %c1_9 {
          %3 = memref.load %arg1[%arg6, %arg7] : memref<?x40xf64>
          memref.store %3, %alloca[] : memref<f64>
          %c0_12 = arith.constant 0 : index
          %c1_13 = arith.constant 1 : index
          scf.for %arg8 = %c0_12 to %arg7 step %c1_13 {
            %7 = memref.load %arg1[%arg6, %arg8] : memref<?x40xf64>
            %8 = memref.load %arg1[%arg8, %arg7] : memref<?x40xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = memref.load %alloca[] : memref<f64>
            %11 = arith.subf %10, %9 : f64
            memref.store %11, %alloca[] : memref<f64>
          }
          %4 = memref.load %alloca[] : memref<f64>
          %5 = memref.load %arg1[%arg7, %arg7] : memref<?x40xf64>
          %6 = arith.divf %4, %5 : f64
          memref.store %6, %arg1[%arg6, %arg7] : memref<?x40xf64>
        }
        %c40_10 = arith.constant 40 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg7 = %arg6 to %c40_10 step %c1_11 {
          %3 = memref.load %arg1[%arg6, %arg7] : memref<?x40xf64>
          memref.store %3, %alloca[] : memref<f64>
          %c0_12 = arith.constant 0 : index
          %c1_13 = arith.constant 1 : index
          scf.for %arg8 = %c0_12 to %arg6 step %c1_13 {
            %5 = memref.load %arg1[%arg6, %arg8] : memref<?x40xf64>
            %6 = memref.load %arg1[%arg8, %arg7] : memref<?x40xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = memref.load %alloca[] : memref<f64>
            %9 = arith.subf %8, %7 : f64
            memref.store %9, %alloca[] : memref<f64>
          }
          %4 = memref.load %alloca[] : memref<f64>
          memref.store %4, %arg1[%arg6, %arg7] : memref<?x40xf64>
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c40_1 = arith.constant 40 : index
    %c32_2 = arith.constant 32 : index
    scf.for %arg5 = %c0_0 to %c40_1 step %c32_2 {
      %c32_6 = arith.constant 32 : index
      %1 = arith.addi %arg5, %c32_6 : index
      %c40_7 = arith.constant 40 : index
      %2 = arith.minsi %1, %c40_7 : index
      %c1 = arith.constant 1 : index
      scf.for %arg6 = %arg5 to %2 step %c1 {
        %3 = memref.load %arg2[%arg6] : memref<?xf64>
        memref.store %3, %alloca[] : memref<f64>
        %c0_8 = arith.constant 0 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %arg6 step %c1_9 {
          %5 = memref.load %arg1[%arg6, %arg7] : memref<?x40xf64>
          %6 = memref.load %arg4[%arg7] : memref<?xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloca[] : memref<f64>
          %9 = arith.subf %8, %7 : f64
          memref.store %9, %alloca[] : memref<f64>
        }
        %4 = memref.load %alloca[] : memref<f64>
        memref.store %4, %arg4[%arg6] : memref<?xf64>
      }
    }
    %c0_3 = arith.constant 0 : index
    %c40_4 = arith.constant 40 : index
    %c32_5 = arith.constant 32 : index
    scf.for %arg5 = %c0_3 to %c40_4 step %c32_5 {
      %c32_6 = arith.constant 32 : index
      %1 = arith.addi %arg5, %c32_6 : index
      %c40_7 = arith.constant 40 : index
      %2 = arith.minsi %1, %c40_7 : index
      %c1 = arith.constant 1 : index
      scf.for %arg6 = %arg5 to %2 step %c1 {
        %c-1 = arith.constant -1 : index
        %3 = arith.muli %arg6, %c-1 : index
        %c39 = arith.constant 39 : index
        %4 = arith.addi %3, %c39 : index
        %5 = memref.load %arg4[%4] : memref<?xf64>
        memref.store %5, %alloca[] : memref<f64>
        %c-1_8 = arith.constant -1 : index
        %6 = arith.muli %arg6, %c-1_8 : index
        %c40_9 = arith.constant 40 : index
        %7 = arith.addi %6, %c40_9 : index
        %c40_10 = arith.constant 40 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg7 = %7 to %c40_10 step %c1_11 {
          %c-1_18 = arith.constant -1 : index
          %17 = arith.muli %arg6, %c-1_18 : index
          %c39_19 = arith.constant 39 : index
          %18 = arith.addi %17, %c39_19 : index
          %19 = memref.load %arg1[%18, %arg7] : memref<?x40xf64>
          %20 = memref.load %arg3[%arg7] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloca[] : memref<f64>
          %23 = arith.subf %22, %21 : f64
          memref.store %23, %alloca[] : memref<f64>
        }
        %8 = memref.load %alloca[] : memref<f64>
        %c-1_12 = arith.constant -1 : index
        %9 = arith.muli %arg6, %c-1_12 : index
        %c39_13 = arith.constant 39 : index
        %10 = arith.addi %9, %c39_13 : index
        %c-1_14 = arith.constant -1 : index
        %11 = arith.muli %arg6, %c-1_14 : index
        %c39_15 = arith.constant 39 : index
        %12 = arith.addi %11, %c39_15 : index
        %13 = memref.load %arg1[%10, %12] : memref<?x40xf64>
        %14 = arith.divf %8, %13 : f64
        %c-1_16 = arith.constant -1 : index
        %15 = arith.muli %arg6, %c-1_16 : index
        %c39_17 = arith.constant 39 : index
        %16 = arith.addi %15, %c39_17 : index
        memref.store %14, %arg3[%16] : memref<?xf64>
      }
    }
    return
  }
}

