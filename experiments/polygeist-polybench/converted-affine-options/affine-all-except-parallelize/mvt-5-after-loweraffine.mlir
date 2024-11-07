module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c2) step (%c1) {
      %c0_0 = arith.constant 0 : index
      %c2_1 = arith.constant 2 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg7 = %c0_0 to %c2_1 step %c1_2 {
        %c32 = arith.constant 32 : index
        %0 = arith.muli %arg6, %c32 : index
        %c40 = arith.constant 40 : index
        %c32_3 = arith.constant 32 : index
        %1 = arith.muli %arg6, %c32_3 : index
        %c32_4 = arith.constant 32 : index
        %2 = arith.addi %1, %c32_4 : index
        %3 = arith.minsi %c40, %2 : index
        %c1_5 = arith.constant 1 : index
        scf.parallel (%arg8) = (%0) to (%3) step (%c1_5) {
          %c0_6 = arith.constant 0 : index
          %c-8 = arith.constant -8 : index
          %4 = arith.muli %arg7, %c-8 : index
          %c10 = arith.constant 10 : index
          %5 = arith.addi %4, %c10 : index
          %c8 = arith.constant 8 : index
          %6 = arith.minsi %5, %c8 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg9 = %c0_6 to %6 step %c1_7 {
            %c32_8 = arith.constant 32 : index
            %7 = arith.muli %arg7, %c32_8 : index
            %c4 = arith.constant 4 : index
            %8 = arith.muli %arg9, %c4 : index
            %9 = arith.addi %7, %8 : index
            %10 = memref.load %arg1[%arg8] : memref<?xf64>
            %11 = memref.load %arg5[%arg8, %9] : memref<?x40xf64>
            %12 = memref.load %arg3[%9] : memref<?xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = arith.addf %10, %13 : f64
            memref.store %14, %arg1[%arg8] : memref<?xf64>
            %15 = memref.load %arg2[%arg8] : memref<?xf64>
            %16 = memref.load %arg5[%9, %arg8] : memref<?x40xf64>
            %17 = memref.load %arg4[%9] : memref<?xf64>
            %18 = arith.mulf %16, %17 : f64
            %19 = arith.addf %15, %18 : f64
            memref.store %19, %arg2[%arg8] : memref<?xf64>
            %c1_9 = arith.constant 1 : index
            %20 = arith.addi %9, %c1_9 : index
            %21 = memref.load %arg1[%arg8] : memref<?xf64>
            %22 = memref.load %arg5[%arg8, %20] : memref<?x40xf64>
            %23 = memref.load %arg3[%20] : memref<?xf64>
            %24 = arith.mulf %22, %23 : f64
            %25 = arith.addf %21, %24 : f64
            memref.store %25, %arg1[%arg8] : memref<?xf64>
            %26 = memref.load %arg2[%arg8] : memref<?xf64>
            %27 = memref.load %arg5[%20, %arg8] : memref<?x40xf64>
            %28 = memref.load %arg4[%20] : memref<?xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = arith.addf %26, %29 : f64
            memref.store %30, %arg2[%arg8] : memref<?xf64>
            %c2_10 = arith.constant 2 : index
            %31 = arith.addi %9, %c2_10 : index
            %32 = memref.load %arg1[%arg8] : memref<?xf64>
            %33 = memref.load %arg5[%arg8, %31] : memref<?x40xf64>
            %34 = memref.load %arg3[%31] : memref<?xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = arith.addf %32, %35 : f64
            memref.store %36, %arg1[%arg8] : memref<?xf64>
            %37 = memref.load %arg2[%arg8] : memref<?xf64>
            %38 = memref.load %arg5[%31, %arg8] : memref<?x40xf64>
            %39 = memref.load %arg4[%31] : memref<?xf64>
            %40 = arith.mulf %38, %39 : f64
            %41 = arith.addf %37, %40 : f64
            memref.store %41, %arg2[%arg8] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %42 = arith.addi %9, %c3 : index
            %43 = memref.load %arg1[%arg8] : memref<?xf64>
            %44 = memref.load %arg5[%arg8, %42] : memref<?x40xf64>
            %45 = memref.load %arg3[%42] : memref<?xf64>
            %46 = arith.mulf %44, %45 : f64
            %47 = arith.addf %43, %46 : f64
            memref.store %47, %arg1[%arg8] : memref<?xf64>
            %48 = memref.load %arg2[%arg8] : memref<?xf64>
            %49 = memref.load %arg5[%42, %arg8] : memref<?x40xf64>
            %50 = memref.load %arg4[%42] : memref<?xf64>
            %51 = arith.mulf %49, %50 : f64
            %52 = arith.addf %48, %51 : f64
            memref.store %52, %arg2[%arg8] : memref<?xf64>
          }
          scf.reduce 
        }
      }
      scf.reduce 
    }
    return
  }
}

