module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c28 step %c1 {
      memref.store %cst_0, %arg5[%arg6] : memref<?xf64>
      scf.for %arg7 = %c0 to %c32 step %c4 {
        %3 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
        %4 = memref.load %arg5[%arg6] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        memref.store %5, %arg5[%arg6] : memref<?xf64>
        %6 = arith.addi %arg7, %c1 : index
        %7 = memref.load %arg3[%6, %arg6] : memref<?x28xf64>
        %8 = memref.load %arg5[%arg6] : memref<?xf64>
        %9 = arith.addf %8, %7 : f64
        memref.store %9, %arg5[%arg6] : memref<?xf64>
        %10 = arith.addi %arg7, %c2 : index
        %11 = memref.load %arg3[%10, %arg6] : memref<?x28xf64>
        %12 = memref.load %arg5[%arg6] : memref<?xf64>
        %13 = arith.addf %12, %11 : f64
        memref.store %13, %arg5[%arg6] : memref<?xf64>
        %14 = arith.addi %arg7, %c3 : index
        %15 = memref.load %arg3[%14, %arg6] : memref<?x28xf64>
        %16 = memref.load %arg5[%arg6] : memref<?xf64>
        %17 = arith.addf %16, %15 : f64
        memref.store %17, %arg5[%arg6] : memref<?xf64>
      }
      %1 = memref.load %arg5[%arg6] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      memref.store %2, %arg5[%arg6] : memref<?xf64>
    }
    scf.for %arg6 = %c0 to %c32 step %c1 {
      scf.for %arg7 = %c0 to %c28 step %c4 {
        %1 = memref.load %arg5[%arg7] : memref<?xf64>
        %2 = memref.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %3 = arith.subf %2, %1 : f64
        memref.store %3, %arg3[%arg6, %arg7] : memref<?x28xf64>
        %4 = arith.addi %arg7, %c1 : index
        %5 = memref.load %arg5[%4] : memref<?xf64>
        %6 = memref.load %arg3[%arg6, %4] : memref<?x28xf64>
        %7 = arith.subf %6, %5 : f64
        memref.store %7, %arg3[%arg6, %4] : memref<?x28xf64>
        %8 = arith.addi %arg7, %c2 : index
        %9 = memref.load %arg5[%8] : memref<?xf64>
        %10 = memref.load %arg3[%arg6, %8] : memref<?x28xf64>
        %11 = arith.subf %10, %9 : f64
        memref.store %11, %arg3[%arg6, %8] : memref<?x28xf64>
        %12 = arith.addi %arg7, %c3 : index
        %13 = memref.load %arg5[%12] : memref<?xf64>
        %14 = memref.load %arg3[%arg6, %12] : memref<?x28xf64>
        %15 = arith.subf %14, %13 : f64
        memref.store %15, %arg3[%arg6, %12] : memref<?x28xf64>
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    scf.for %arg6 = %c0 to %c28 step %c1 {
      scf.for %arg7 = %arg6 to %c28 step %c1 {
        memref.store %cst_0, %arg4[%arg6, %arg7] : memref<?x28xf64>
        scf.for %arg8 = %c0 to %c32 step %c4 {
          %3 = memref.load %arg3[%arg8, %arg6] : memref<?x28xf64>
          %4 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg4[%arg6, %arg7] : memref<?x28xf64>
          %8 = arith.addi %arg8, %c1 : index
          %9 = memref.load %arg3[%8, %arg6] : memref<?x28xf64>
          %10 = memref.load %arg3[%8, %arg7] : memref<?x28xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = memref.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %13 = arith.addf %12, %11 : f64
          memref.store %13, %arg4[%arg6, %arg7] : memref<?x28xf64>
          %14 = arith.addi %arg8, %c2 : index
          %15 = memref.load %arg3[%14, %arg6] : memref<?x28xf64>
          %16 = memref.load %arg3[%14, %arg7] : memref<?x28xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = memref.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %19 = arith.addf %18, %17 : f64
          memref.store %19, %arg4[%arg6, %arg7] : memref<?x28xf64>
          %20 = arith.addi %arg8, %c3 : index
          %21 = memref.load %arg3[%20, %arg6] : memref<?x28xf64>
          %22 = memref.load %arg3[%20, %arg7] : memref<?x28xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %25 = arith.addf %24, %23 : f64
          memref.store %25, %arg4[%arg6, %arg7] : memref<?x28xf64>
        }
        %1 = memref.load %arg4[%arg6, %arg7] : memref<?x28xf64>
        %2 = arith.divf %1, %0 : f64
        memref.store %2, %arg4[%arg6, %arg7] : memref<?x28xf64>
        memref.store %2, %arg4[%arg7, %arg6] : memref<?x28xf64>
      }
    }
    return
  }
}

