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
        %c0_3 = arith.constant 0 : index
        %c-32 = arith.constant -32 : index
        %0 = arith.muli %arg6, %c-32 : index
        %c40 = arith.constant 40 : index
        %1 = arith.addi %0, %c40 : index
        %c32 = arith.constant 32 : index
        %2 = arith.minsi %1, %c32 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg8 = %c0_3 to %2 step %c1_4 {
          %c32_5 = arith.constant 32 : index
          %3 = arith.muli %arg6, %c32_5 : index
          %4 = arith.addi %3, %arg8 : index
          %c0_6 = arith.constant 0 : index
          %c-8 = arith.constant -8 : index
          %5 = arith.muli %arg7, %c-8 : index
          %c10 = arith.constant 10 : index
          %6 = arith.addi %5, %c10 : index
          %c8 = arith.constant 8 : index
          %7 = arith.minsi %6, %c8 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg9 = %c0_6 to %7 step %c1_7 {
            %c32_8 = arith.constant 32 : index
            %8 = arith.muli %arg7, %c32_8 : index
            %c4 = arith.constant 4 : index
            %9 = arith.muli %arg9, %c4 : index
            %10 = arith.addi %8, %9 : index
            %11 = memref.load %arg1[%4] : memref<?xf64>
            %12 = memref.load %arg5[%4, %10] : memref<?x40xf64>
            %13 = memref.load %arg3[%10] : memref<?xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = arith.addf %11, %14 : f64
            memref.store %15, %arg1[%4] : memref<?xf64>
            %16 = memref.load %arg2[%4] : memref<?xf64>
            %17 = memref.load %arg5[%10, %4] : memref<?x40xf64>
            %18 = memref.load %arg4[%10] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %16, %19 : f64
            memref.store %20, %arg2[%4] : memref<?xf64>
            %c1_9 = arith.constant 1 : index
            %21 = arith.addi %10, %c1_9 : index
            %22 = memref.load %arg1[%4] : memref<?xf64>
            %23 = memref.load %arg5[%4, %21] : memref<?x40xf64>
            %24 = memref.load %arg3[%21] : memref<?xf64>
            %25 = arith.mulf %23, %24 : f64
            %26 = arith.addf %22, %25 : f64
            memref.store %26, %arg1[%4] : memref<?xf64>
            %27 = memref.load %arg2[%4] : memref<?xf64>
            %28 = memref.load %arg5[%21, %4] : memref<?x40xf64>
            %29 = memref.load %arg4[%21] : memref<?xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = arith.addf %27, %30 : f64
            memref.store %31, %arg2[%4] : memref<?xf64>
            %c2_10 = arith.constant 2 : index
            %32 = arith.addi %10, %c2_10 : index
            %33 = memref.load %arg1[%4] : memref<?xf64>
            %34 = memref.load %arg5[%4, %32] : memref<?x40xf64>
            %35 = memref.load %arg3[%32] : memref<?xf64>
            %36 = arith.mulf %34, %35 : f64
            %37 = arith.addf %33, %36 : f64
            memref.store %37, %arg1[%4] : memref<?xf64>
            %38 = memref.load %arg2[%4] : memref<?xf64>
            %39 = memref.load %arg5[%32, %4] : memref<?x40xf64>
            %40 = memref.load %arg4[%32] : memref<?xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = arith.addf %38, %41 : f64
            memref.store %42, %arg2[%4] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %43 = arith.addi %10, %c3 : index
            %44 = memref.load %arg1[%4] : memref<?xf64>
            %45 = memref.load %arg5[%4, %43] : memref<?x40xf64>
            %46 = memref.load %arg3[%43] : memref<?xf64>
            %47 = arith.mulf %45, %46 : f64
            %48 = arith.addf %44, %47 : f64
            memref.store %48, %arg1[%4] : memref<?xf64>
            %49 = memref.load %arg2[%4] : memref<?xf64>
            %50 = memref.load %arg5[%43, %4] : memref<?x40xf64>
            %51 = memref.load %arg4[%43] : memref<?xf64>
            %52 = arith.mulf %50, %51 : f64
            %53 = arith.addf %49, %52 : f64
            memref.store %53, %arg2[%4] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

