module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c2 step %c1 {
      scf.for %arg13 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg13, %c32 : index
        %1 = arith.muli %arg13, %c32 : index
        %2 = arith.addi %1, %c32 : index
        %3 = arith.minsi %2, %c40 : index
        scf.for %arg14 = %0 to %3 step %c1 {
          %4 = memref.load %arg4[%arg14] : memref<?xf64>
          %5 = memref.load %arg6[%arg14] : memref<?xf64>
          %6 = memref.load %arg10[%arg14] : memref<?xf64>
          %7 = arith.muli %arg12, %c32 : index
          %8 = arith.muli %arg12, %c32 : index
          %9 = arith.addi %8, %c32 : index
          %10 = arith.minsi %9, %c40 : index
          scf.for %arg15 = %7 to %10 step %c1 {
            %11 = memref.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %12 = memref.load %arg5[%arg15] : memref<?xf64>
            %13 = arith.mulf %4, %12 : f64
            %14 = arith.addf %11, %13 : f64
            %15 = memref.load %arg7[%arg15] : memref<?xf64>
            %16 = arith.mulf %5, %15 : f64
            %17 = arith.addf %14, %16 : f64
            memref.store %17, %arg3[%arg14, %arg15] : memref<?x40xf64>
            %18 = memref.load %arg9[%arg15] : memref<?xf64>
            %19 = memref.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %20 = arith.mulf %arg2, %19 : f64
            %21 = arith.mulf %20, %6 : f64
            %22 = arith.addf %18, %21 : f64
            memref.store %22, %arg9[%arg15] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg12, %c32 : index
      %1 = arith.muli %arg12, %c32 : index
      %2 = arith.addi %1, %c32 : index
      %3 = arith.minsi %2, %c40 : index
      scf.for %arg13 = %0 to %3 step %c1 {
        %4 = memref.load %arg9[%arg13] : memref<?xf64>
        %5 = memref.load %arg11[%arg13] : memref<?xf64>
        %6 = arith.addf %4, %5 : f64
        memref.store %6, %arg9[%arg13] : memref<?xf64>
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      scf.for %arg13 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg12, %c32 : index
        %1 = arith.muli %arg12, %c32 : index
        %2 = arith.addi %1, %c32 : index
        %3 = arith.minsi %2, %c40 : index
        scf.for %arg14 = %0 to %3 step %c1 {
          %4 = arith.muli %arg13, %c32 : index
          %5 = arith.muli %arg13, %c32 : index
          %6 = arith.addi %5, %c32 : index
          %7 = arith.minsi %6, %c40 : index
          scf.for %arg15 = %4 to %7 step %c1 {
            %8 = memref.load %arg8[%arg14] : memref<?xf64>
            %9 = memref.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %10 = arith.mulf %arg1, %9 : f64
            %11 = memref.load %arg9[%arg15] : memref<?xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.addf %8, %12 : f64
            memref.store %13, %arg8[%arg14] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

