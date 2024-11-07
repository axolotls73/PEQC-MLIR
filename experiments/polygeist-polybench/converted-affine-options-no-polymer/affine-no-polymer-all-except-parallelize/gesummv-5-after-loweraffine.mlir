module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg8) = (%c0) to (%c30) step (%c1) {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      scf.parallel (%arg9) = (%c0_0) to (%c1_1) step (%c1_2) {
        %0 = arith.addi %arg8, %arg9 : index
        memref.store %cst, %arg5[%0] : memref<?xf64>
        memref.store %cst, %arg7[%0] : memref<?xf64>
        %c0_3 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg10 = %c0_3 to %c7 step %c1_4 {
          %c4 = arith.constant 4 : index
          %6 = arith.muli %arg10, %c4 : index
          %7 = memref.load %arg3[%0, %6] : memref<?x30xf64>
          %8 = memref.load %arg6[%6] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = memref.load %arg5[%0] : memref<?xf64>
          %11 = arith.addf %9, %10 : f64
          memref.store %11, %arg5[%0] : memref<?xf64>
          %12 = memref.load %arg4[%0, %6] : memref<?x30xf64>
          %13 = memref.load %arg6[%6] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = memref.load %arg7[%0] : memref<?xf64>
          %16 = arith.addf %14, %15 : f64
          memref.store %16, %arg7[%0] : memref<?xf64>
          %c1_7 = arith.constant 1 : index
          %17 = arith.addi %6, %c1_7 : index
          %18 = memref.load %arg3[%0, %17] : memref<?x30xf64>
          %19 = memref.load %arg6[%17] : memref<?xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %arg5[%0] : memref<?xf64>
          %22 = arith.addf %20, %21 : f64
          memref.store %22, %arg5[%0] : memref<?xf64>
          %23 = memref.load %arg4[%0, %17] : memref<?x30xf64>
          %24 = memref.load %arg6[%17] : memref<?xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = memref.load %arg7[%0] : memref<?xf64>
          %27 = arith.addf %25, %26 : f64
          memref.store %27, %arg7[%0] : memref<?xf64>
          %c2_8 = arith.constant 2 : index
          %28 = arith.addi %6, %c2_8 : index
          %29 = memref.load %arg3[%0, %28] : memref<?x30xf64>
          %30 = memref.load %arg6[%28] : memref<?xf64>
          %31 = arith.mulf %29, %30 : f64
          %32 = memref.load %arg5[%0] : memref<?xf64>
          %33 = arith.addf %31, %32 : f64
          memref.store %33, %arg5[%0] : memref<?xf64>
          %34 = memref.load %arg4[%0, %28] : memref<?x30xf64>
          %35 = memref.load %arg6[%28] : memref<?xf64>
          %36 = arith.mulf %34, %35 : f64
          %37 = memref.load %arg7[%0] : memref<?xf64>
          %38 = arith.addf %36, %37 : f64
          memref.store %38, %arg7[%0] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %39 = arith.addi %6, %c3 : index
          %40 = memref.load %arg3[%0, %39] : memref<?x30xf64>
          %41 = memref.load %arg6[%39] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = memref.load %arg5[%0] : memref<?xf64>
          %44 = arith.addf %42, %43 : f64
          memref.store %44, %arg5[%0] : memref<?xf64>
          %45 = memref.load %arg4[%0, %39] : memref<?x30xf64>
          %46 = memref.load %arg6[%39] : memref<?xf64>
          %47 = arith.mulf %45, %46 : f64
          %48 = memref.load %arg7[%0] : memref<?xf64>
          %49 = arith.addf %47, %48 : f64
          memref.store %49, %arg7[%0] : memref<?xf64>
        }
        %c0_5 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg10 = %c0_5 to %c2 step %c1_6 {
          %c28 = arith.constant 28 : index
          %6 = arith.addi %arg10, %c28 : index
          %7 = memref.load %arg3[%0, %6] : memref<?x30xf64>
          %8 = memref.load %arg6[%6] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = memref.load %arg5[%0] : memref<?xf64>
          %11 = arith.addf %9, %10 : f64
          memref.store %11, %arg5[%0] : memref<?xf64>
          %12 = memref.load %arg4[%0, %6] : memref<?x30xf64>
          %13 = memref.load %arg6[%6] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = memref.load %arg7[%0] : memref<?xf64>
          %16 = arith.addf %14, %15 : f64
          memref.store %16, %arg7[%0] : memref<?xf64>
        }
        %1 = memref.load %arg5[%0] : memref<?xf64>
        %2 = arith.mulf %arg1, %1 : f64
        %3 = memref.load %arg7[%0] : memref<?xf64>
        %4 = arith.mulf %arg2, %3 : f64
        %5 = arith.addf %2, %4 : f64
        memref.store %5, %arg7[%0] : memref<?xf64>
        scf.reduce 
      }
      scf.reduce 
    }
    return
  }
}

