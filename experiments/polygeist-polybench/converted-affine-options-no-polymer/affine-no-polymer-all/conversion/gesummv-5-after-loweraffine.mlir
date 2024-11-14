module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg8) = (%c0) to (%c1) step (%c1_0) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg8, %c32 : index
      %c0_1 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg9 = %c0_1 to %c30 step %c1_2 {
        %1 = arith.addi %0, %arg9 : index
        memref.store %cst, %arg5[%1] : memref<?xf64>
        memref.store %cst, %arg7[%1] : memref<?xf64>
        %c0_3 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg10 = %c0_3 to %c7 step %c1_4 {
          %c4 = arith.constant 4 : index
          %7 = arith.muli %arg10, %c4 : index
          %8 = memref.load %arg3[%1, %7] : memref<?x30xf64>
          %9 = memref.load %arg6[%7] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = memref.load %arg5[%1] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          memref.store %12, %arg5[%1] : memref<?xf64>
          %13 = memref.load %arg4[%1, %7] : memref<?x30xf64>
          %14 = memref.load %arg6[%7] : memref<?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = memref.load %arg7[%1] : memref<?xf64>
          %17 = arith.addf %15, %16 : f64
          memref.store %17, %arg7[%1] : memref<?xf64>
          %c1_7 = arith.constant 1 : index
          %18 = arith.addi %7, %c1_7 : index
          %19 = memref.load %arg3[%1, %18] : memref<?x30xf64>
          %20 = memref.load %arg6[%18] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %arg5[%1] : memref<?xf64>
          %23 = arith.addf %21, %22 : f64
          memref.store %23, %arg5[%1] : memref<?xf64>
          %24 = memref.load %arg4[%1, %18] : memref<?x30xf64>
          %25 = memref.load %arg6[%18] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = memref.load %arg7[%1] : memref<?xf64>
          %28 = arith.addf %26, %27 : f64
          memref.store %28, %arg7[%1] : memref<?xf64>
          %c2_8 = arith.constant 2 : index
          %29 = arith.addi %7, %c2_8 : index
          %30 = memref.load %arg3[%1, %29] : memref<?x30xf64>
          %31 = memref.load %arg6[%29] : memref<?xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = memref.load %arg5[%1] : memref<?xf64>
          %34 = arith.addf %32, %33 : f64
          memref.store %34, %arg5[%1] : memref<?xf64>
          %35 = memref.load %arg4[%1, %29] : memref<?x30xf64>
          %36 = memref.load %arg6[%29] : memref<?xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = memref.load %arg7[%1] : memref<?xf64>
          %39 = arith.addf %37, %38 : f64
          memref.store %39, %arg7[%1] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %40 = arith.addi %7, %c3 : index
          %41 = memref.load %arg3[%1, %40] : memref<?x30xf64>
          %42 = memref.load %arg6[%40] : memref<?xf64>
          %43 = arith.mulf %41, %42 : f64
          %44 = memref.load %arg5[%1] : memref<?xf64>
          %45 = arith.addf %43, %44 : f64
          memref.store %45, %arg5[%1] : memref<?xf64>
          %46 = memref.load %arg4[%1, %40] : memref<?x30xf64>
          %47 = memref.load %arg6[%40] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = memref.load %arg7[%1] : memref<?xf64>
          %50 = arith.addf %48, %49 : f64
          memref.store %50, %arg7[%1] : memref<?xf64>
        }
        %c0_5 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg10 = %c0_5 to %c2 step %c1_6 {
          %c28 = arith.constant 28 : index
          %7 = arith.addi %arg10, %c28 : index
          %8 = memref.load %arg3[%1, %7] : memref<?x30xf64>
          %9 = memref.load %arg6[%7] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = memref.load %arg5[%1] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          memref.store %12, %arg5[%1] : memref<?xf64>
          %13 = memref.load %arg4[%1, %7] : memref<?x30xf64>
          %14 = memref.load %arg6[%7] : memref<?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = memref.load %arg7[%1] : memref<?xf64>
          %17 = arith.addf %15, %16 : f64
          memref.store %17, %arg7[%1] : memref<?xf64>
        }
        %2 = memref.load %arg5[%1] : memref<?xf64>
        %3 = arith.mulf %arg1, %2 : f64
        %4 = memref.load %arg7[%1] : memref<?xf64>
        %5 = arith.mulf %arg2, %4 : f64
        %6 = arith.addf %3, %5 : f64
        memref.store %6, %arg7[%1] : memref<?xf64>
      }
      scf.reduce 
    }
    return
  }
}

