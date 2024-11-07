module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c32 = arith.constant 32 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %alloc = memref.alloc() : memref<1xf64>
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    memref.store %cst, %arg4[%c27, %c27] : memref<?x28xf64>
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %1 to %c28 step %c1 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      memref.store %cst, %arg4[%arg7, %arg7] : memref<?x28xf64>
    }
    %0 = math.sqrt %arg2 : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    scf.for %arg7 = %c0 to %c28 step %c1 {
      memref.store %cst_0, %arg6[%arg7] : memref<?xf64>
      memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %6 = memref.load %arg5[%arg7] : memref<?xf64>
        %7 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %8 = arith.addf %6, %7 : f64
        memref.store %8, %arg5[%arg7] : memref<?xf64>
      }
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %6 = memref.load %arg5[%arg7] : memref<?xf64>
        %7 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %8 = arith.addf %6, %7 : f64
        memref.store %8, %arg5[%arg7] : memref<?xf64>
      }
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %6 = memref.load %arg5[%arg7] : memref<?xf64>
        %7 = arith.divf %6, %arg2 : f64
        memref.store %7, %arg5[%arg7] : memref<?xf64>
        %8 = memref.load %arg6[%arg7] : memref<?xf64>
        %9 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %10 = memref.load %arg5[%arg7] : memref<?xf64>
        %11 = arith.subf %9, %10 : f64
        %12 = arith.mulf %11, %11 : f64
        %13 = arith.addf %8, %12 : f64
        memref.store %13, %arg6[%arg7] : memref<?xf64>
        %14 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %15 = memref.load %arg5[%arg7] : memref<?xf64>
        %16 = arith.subf %14, %15 : f64
        memref.store %16, %arg3[%arg8, %arg7] : memref<?x28xf64>
      }
      %1 = memref.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst_1 : f64
      %5 = arith.select %4, %cst, %3 : f64
      memref.store %5, %arg6[%arg7] : memref<?xf64>
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c28 step %c1 {
        memref.store %cst_0, %alloc[%c0] : memref<1xf64>
        memref.store %cst_0, %arg5[%arg8] : memref<?xf64>
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %11 = memref.load %arg5[%arg8] : memref<?xf64>
          %12 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %13 = arith.addf %11, %12 : f64
          memref.store %13, %arg5[%arg8] : memref<?xf64>
        }
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %11 = memref.load %arg5[%arg8] : memref<?xf64>
          %12 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %13 = arith.addf %11, %12 : f64
          memref.store %13, %arg5[%arg8] : memref<?xf64>
        }
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %11 = memref.load %arg5[%arg8] : memref<?xf64>
          %12 = arith.divf %11, %arg2 : f64
          memref.store %12, %arg5[%arg8] : memref<?xf64>
          %13 = memref.load %alloc[%c0] : memref<1xf64>
          %14 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %15 = memref.load %arg5[%arg8] : memref<?xf64>
          %16 = arith.subf %14, %15 : f64
          %17 = arith.mulf %16, %16 : f64
          %18 = arith.addf %13, %17 : f64
          memref.store %18, %alloc[%c0] : memref<1xf64>
          %19 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %20 = memref.load %arg5[%arg8] : memref<?xf64>
          %21 = arith.subf %19, %20 : f64
          memref.store %21, %arg3[%arg9, %arg8] : memref<?x28xf64>
        }
        %1 = memref.load %alloc[%c0] : memref<1xf64>
        %2 = arith.divf %1, %arg2 : f64
        %3 = math.sqrt %2 : f64
        %4 = arith.cmpf ole, %3, %cst_1 : f64
        %5 = arith.select %4, %cst, %3 : f64
        memref.store %5, %alloc[%c0] : memref<1xf64>
        %6 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %7 = memref.load %alloca[%c0] : memref<1xf64>
        %8 = memref.load %alloc[%c0] : memref<1xf64>
        %9 = arith.mulf %7, %8 : f64
        %10 = arith.divf %6, %9 : f64
        memref.store %10, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %1 to %c28 step %c1 {
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %2 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %3 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %4 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          memref.store %6, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %1 to %c28 step %c1 {
        %2 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %2, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

