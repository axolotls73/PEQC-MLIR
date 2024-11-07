module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c4 = arith.constant 4 : index
    scf.for %arg6 = %c0 to %c40 step %c4 {
      %c0_2 = arith.constant 0 : index
      %c40_3 = arith.constant 40 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg7 = %c0_2 to %c40_3 step %c1_4 {
        %0 = memref.load %arg1[%arg6] : memref<?xf64>
        %1 = memref.load %arg5[%arg6, %arg7] : memref<?x40xf64>
        %2 = memref.load %arg3[%arg7] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg1[%arg6] : memref<?xf64>
        %c1_5 = arith.constant 1 : index
        %5 = arith.addi %arg6, %c1_5 : index
        %6 = memref.load %arg1[%5] : memref<?xf64>
        %7 = memref.load %arg5[%5, %arg7] : memref<?x40xf64>
        %8 = memref.load %arg3[%arg7] : memref<?xf64>
        %9 = arith.mulf %7, %8 : f64
        %10 = arith.addf %6, %9 : f64
        memref.store %10, %arg1[%5] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %11 = arith.addi %arg6, %c2 : index
        %12 = memref.load %arg1[%11] : memref<?xf64>
        %13 = memref.load %arg5[%11, %arg7] : memref<?x40xf64>
        %14 = memref.load %arg3[%arg7] : memref<?xf64>
        %15 = arith.mulf %13, %14 : f64
        %16 = arith.addf %12, %15 : f64
        memref.store %16, %arg1[%11] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %17 = arith.addi %arg6, %c3 : index
        %18 = memref.load %arg1[%17] : memref<?xf64>
        %19 = memref.load %arg5[%17, %arg7] : memref<?x40xf64>
        %20 = memref.load %arg3[%arg7] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        memref.store %22, %arg1[%17] : memref<?xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c40_1 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0_0 to %c40_1 step %c1 {
      %c0_2 = arith.constant 0 : index
      %c40_3 = arith.constant 40 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg7 = %c0_2 to %c40_3 step %c1_4 {
        %0 = memref.load %arg2[%arg6] : memref<?xf64>
        %1 = memref.load %arg5[%arg7, %arg6] : memref<?x40xf64>
        %2 = memref.load %arg4[%arg7] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg2[%arg6] : memref<?xf64>
      }
    }
    return
  }
}

