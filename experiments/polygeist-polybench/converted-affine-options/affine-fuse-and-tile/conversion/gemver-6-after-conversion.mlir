module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c32 = arith.constant 32 : index
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg12, %c-32 : index
      %1 = arith.addi %0, %c40 : index
      %2 = arith.minsi %1, %c32 : index
      scf.for %arg13 = %c0 to %2 step %c1 {
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %3 = arith.muli %arg14, %c-32 : index
          %4 = arith.addi %3, %c40 : index
          %5 = arith.minsi %4, %c32 : index
          scf.for %arg15 = %c0 to %5 step %c1 {
            %6 = arith.muli %arg14, %c32 : index
            %7 = arith.addi %6, %arg15 : index
            %8 = arith.muli %arg12, %c32 : index
            %9 = arith.addi %8, %arg13 : index
            %10 = memref.load %arg3[%7, %9] : memref<?x40xf64>
            %11 = arith.muli %arg14, %c32 : index
            %12 = arith.addi %11, %arg15 : index
            %13 = memref.load %arg4[%12] : memref<?xf64>
            %14 = arith.muli %arg12, %c32 : index
            %15 = arith.addi %14, %arg13 : index
            %16 = memref.load %arg5[%15] : memref<?xf64>
            %17 = arith.mulf %13, %16 : f64
            %18 = arith.addf %10, %17 : f64
            %19 = arith.muli %arg14, %c32 : index
            %20 = arith.addi %19, %arg15 : index
            %21 = memref.load %arg6[%20] : memref<?xf64>
            %22 = arith.muli %arg12, %c32 : index
            %23 = arith.addi %22, %arg13 : index
            %24 = memref.load %arg7[%23] : memref<?xf64>
            %25 = arith.mulf %21, %24 : f64
            %26 = arith.addf %18, %25 : f64
            %27 = arith.muli %arg14, %c32 : index
            %28 = arith.addi %27, %arg15 : index
            %29 = arith.muli %arg12, %c32 : index
            %30 = arith.addi %29, %arg13 : index
            memref.store %26, %arg3[%28, %30] : memref<?x40xf64>
            %31 = arith.muli %arg12, %c32 : index
            %32 = arith.addi %31, %arg13 : index
            %33 = memref.load %arg9[%32] : memref<?xf64>
            %34 = arith.muli %arg14, %c32 : index
            %35 = arith.addi %34, %arg15 : index
            %36 = arith.muli %arg12, %c32 : index
            %37 = arith.addi %36, %arg13 : index
            %38 = memref.load %arg3[%35, %37] : memref<?x40xf64>
            %39 = arith.mulf %arg2, %38 : f64
            %40 = arith.muli %arg14, %c32 : index
            %41 = arith.addi %40, %arg15 : index
            %42 = memref.load %arg10[%41] : memref<?xf64>
            %43 = arith.mulf %39, %42 : f64
            %44 = arith.addf %33, %43 : f64
            %45 = arith.muli %arg12, %c32 : index
            %46 = arith.addi %45, %arg13 : index
            memref.store %44, %arg9[%46] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg12, %c-32 : index
      %1 = arith.addi %0, %c40 : index
      %2 = arith.minsi %1, %c32 : index
      scf.for %arg13 = %c0 to %2 step %c1 {
        %3 = arith.muli %arg12, %c32 : index
        %4 = arith.addi %3, %arg13 : index
        %5 = memref.load %arg9[%4] : memref<?xf64>
        %6 = arith.muli %arg12, %c32 : index
        %7 = arith.addi %6, %arg13 : index
        %8 = memref.load %arg11[%7] : memref<?xf64>
        %9 = arith.addf %5, %8 : f64
        %10 = arith.muli %arg12, %c32 : index
        %11 = arith.addi %10, %arg13 : index
        memref.store %9, %arg9[%11] : memref<?xf64>
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg12, %c-32 : index
      %1 = arith.addi %0, %c40 : index
      %2 = arith.minsi %1, %c32 : index
      scf.for %arg13 = %c0 to %2 step %c1 {
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %3 = arith.muli %arg14, %c-32 : index
          %4 = arith.addi %3, %c40 : index
          %5 = arith.minsi %4, %c32 : index
          scf.for %arg15 = %c0 to %5 step %c1 {
            %6 = arith.muli %arg12, %c32 : index
            %7 = arith.addi %6, %arg13 : index
            %8 = memref.load %arg8[%7] : memref<?xf64>
            %9 = arith.muli %arg12, %c32 : index
            %10 = arith.addi %9, %arg13 : index
            %11 = arith.muli %arg14, %c32 : index
            %12 = arith.addi %11, %arg15 : index
            %13 = memref.load %arg3[%10, %12] : memref<?x40xf64>
            %14 = arith.mulf %arg1, %13 : f64
            %15 = arith.muli %arg14, %c32 : index
            %16 = arith.addi %15, %arg15 : index
            %17 = memref.load %arg9[%16] : memref<?xf64>
            %18 = arith.mulf %14, %17 : f64
            %19 = arith.addf %8, %18 : f64
            %20 = arith.muli %arg12, %c32 : index
            %21 = arith.addi %20, %arg13 : index
            memref.store %19, %arg8[%21] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

