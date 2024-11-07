module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c2 step %c1 {
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
        scf.for %arg8 = %0 to %3 step %c1_5 {
          %c32_6 = arith.constant 32 : index
          %4 = arith.muli %arg7, %c32_6 : index
          %c40_7 = arith.constant 40 : index
          %c32_8 = arith.constant 32 : index
          %5 = arith.muli %arg7, %c32_8 : index
          %c32_9 = arith.constant 32 : index
          %6 = arith.addi %5, %c32_9 : index
          %7 = arith.minsi %c40_7, %6 : index
          %c4 = arith.constant 4 : index
          scf.for %arg9 = %4 to %7 step %c4 {
            %8 = memref.load %arg1[%arg8] : memref<?xf64>
            %9 = memref.load %arg5[%arg8, %arg9] : memref<?x40xf64>
            %10 = memref.load %arg3[%arg9] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %8, %11 : f64
            memref.store %12, %arg1[%arg8] : memref<?xf64>
            %13 = memref.load %arg2[%arg8] : memref<?xf64>
            %14 = memref.load %arg5[%arg9, %arg8] : memref<?x40xf64>
            %15 = memref.load %arg4[%arg9] : memref<?xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = arith.addf %13, %16 : f64
            memref.store %17, %arg2[%arg8] : memref<?xf64>
            %c1_10 = arith.constant 1 : index
            %18 = arith.addi %arg9, %c1_10 : index
            %19 = memref.load %arg1[%arg8] : memref<?xf64>
            %20 = memref.load %arg5[%arg8, %18] : memref<?x40xf64>
            %21 = memref.load %arg3[%18] : memref<?xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = arith.addf %19, %22 : f64
            memref.store %23, %arg1[%arg8] : memref<?xf64>
            %24 = memref.load %arg2[%arg8] : memref<?xf64>
            %25 = memref.load %arg5[%18, %arg8] : memref<?x40xf64>
            %26 = memref.load %arg4[%18] : memref<?xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = arith.addf %24, %27 : f64
            memref.store %28, %arg2[%arg8] : memref<?xf64>
            %c2_11 = arith.constant 2 : index
            %29 = arith.addi %arg9, %c2_11 : index
            %30 = memref.load %arg1[%arg8] : memref<?xf64>
            %31 = memref.load %arg5[%arg8, %29] : memref<?x40xf64>
            %32 = memref.load %arg3[%29] : memref<?xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = arith.addf %30, %33 : f64
            memref.store %34, %arg1[%arg8] : memref<?xf64>
            %35 = memref.load %arg2[%arg8] : memref<?xf64>
            %36 = memref.load %arg5[%29, %arg8] : memref<?x40xf64>
            %37 = memref.load %arg4[%29] : memref<?xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = arith.addf %35, %38 : f64
            memref.store %39, %arg2[%arg8] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %40 = arith.addi %arg9, %c3 : index
            %41 = memref.load %arg1[%arg8] : memref<?xf64>
            %42 = memref.load %arg5[%arg8, %40] : memref<?x40xf64>
            %43 = memref.load %arg3[%40] : memref<?xf64>
            %44 = arith.mulf %42, %43 : f64
            %45 = arith.addf %41, %44 : f64
            memref.store %45, %arg1[%arg8] : memref<?xf64>
            %46 = memref.load %arg2[%arg8] : memref<?xf64>
            %47 = memref.load %arg5[%40, %arg8] : memref<?x40xf64>
            %48 = memref.load %arg4[%40] : memref<?xf64>
            %49 = arith.mulf %47, %48 : f64
            %50 = arith.addf %46, %49 : f64
            memref.store %50, %arg2[%arg8] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

