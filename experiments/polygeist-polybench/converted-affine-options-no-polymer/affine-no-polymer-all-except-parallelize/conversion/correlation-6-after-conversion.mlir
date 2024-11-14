module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c-32 = arith.constant -32 : index
    %c-1 = arith.constant -1 : index
    %c27 = arith.constant 27 : index
    %c7 = arith.constant 7 : index
    %c128 = arith.constant 128 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c28 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %1 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c28 step %c1 {
        %2 = arith.addi %1, %arg8 : index
        memref.store %cst_0, %arg5[%2] : memref<?xf64>
        scf.for %arg9 = %c0 to %c8 step %c1 {
          %5 = arith.muli %arg9, %c4 : index
          %6 = memref.load %arg3[%5, %2] : memref<?x28xf64>
          %7 = memref.load %arg5[%2] : memref<?xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %arg5[%2] : memref<?xf64>
          %9 = arith.addi %5, %c1 : index
          %10 = memref.load %arg3[%9, %2] : memref<?x28xf64>
          %11 = memref.load %arg5[%2] : memref<?xf64>
          %12 = arith.addf %11, %10 : f64
          memref.store %12, %arg5[%2] : memref<?xf64>
          %13 = arith.addi %5, %c2 : index
          %14 = memref.load %arg3[%13, %2] : memref<?x28xf64>
          %15 = memref.load %arg5[%2] : memref<?xf64>
          %16 = arith.addf %15, %14 : f64
          memref.store %16, %arg5[%2] : memref<?xf64>
          %17 = arith.addi %5, %c3 : index
          %18 = memref.load %arg3[%17, %2] : memref<?x28xf64>
          %19 = memref.load %arg5[%2] : memref<?xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %arg5[%2] : memref<?xf64>
        }
        %3 = memref.load %arg5[%2] : memref<?xf64>
        %4 = arith.divf %3, %arg2 : f64
        memref.store %4, %arg5[%2] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %1 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c28 step %c1 {
        %2 = arith.addi %1, %arg8 : index
        memref.store %cst_0, %arg6[%2] : memref<?xf64>
        %3 = memref.load %arg5[%2] : memref<?xf64>
        %4 = memref.load %arg5[%2] : memref<?xf64>
        %5 = memref.load %arg5[%2] : memref<?xf64>
        %6 = memref.load %arg5[%2] : memref<?xf64>
        scf.for %arg9 = %c0 to %c8 step %c1 {
          %12 = arith.muli %arg9, %c4 : index
          %13 = memref.load %arg3[%12, %2] : memref<?x28xf64>
          %14 = arith.subf %13, %3 : f64
          %15 = arith.mulf %14, %14 : f64
          %16 = memref.load %arg6[%2] : memref<?xf64>
          %17 = arith.addf %16, %15 : f64
          memref.store %17, %arg6[%2] : memref<?xf64>
          %18 = arith.addi %12, %c1 : index
          %19 = memref.load %arg3[%18, %2] : memref<?x28xf64>
          %20 = arith.subf %19, %4 : f64
          %21 = arith.mulf %20, %20 : f64
          %22 = memref.load %arg6[%2] : memref<?xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %arg6[%2] : memref<?xf64>
          %24 = arith.addi %12, %c2 : index
          %25 = memref.load %arg3[%24, %2] : memref<?x28xf64>
          %26 = arith.subf %25, %5 : f64
          %27 = arith.mulf %26, %26 : f64
          %28 = memref.load %arg6[%2] : memref<?xf64>
          %29 = arith.addf %28, %27 : f64
          memref.store %29, %arg6[%2] : memref<?xf64>
          %30 = arith.addi %12, %c3 : index
          %31 = memref.load %arg3[%30, %2] : memref<?x28xf64>
          %32 = arith.subf %31, %6 : f64
          %33 = arith.mulf %32, %32 : f64
          %34 = memref.load %arg6[%2] : memref<?xf64>
          %35 = arith.addf %34, %33 : f64
          memref.store %35, %arg6[%2] : memref<?xf64>
        }
        %7 = memref.load %arg6[%2] : memref<?xf64>
        %8 = arith.divf %7, %arg2 : f64
        %9 = math.sqrt %8 : f64
        %10 = arith.cmpf ole, %9, %cst_1 : f64
        %11 = arith.select %10, %cst, %9 : f64
        memref.store %11, %arg6[%2] : memref<?xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %1 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %2 = arith.muli %arg8, %c128 : index
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %3 = arith.addi %1, %arg9 : index
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %4 = arith.muli %arg10, %c4 : index
            %5 = arith.addi %2, %4 : index
            %6 = memref.load %arg5[%5] : memref<?xf64>
            %7 = memref.load %arg3[%3, %5] : memref<?x28xf64>
            %8 = arith.subf %7, %6 : f64
            memref.store %8, %arg3[%3, %5] : memref<?x28xf64>
            %9 = memref.load %arg6[%5] : memref<?xf64>
            %10 = arith.mulf %0, %9 : f64
            %11 = arith.divf %8, %10 : f64
            memref.store %11, %arg3[%3, %5] : memref<?x28xf64>
            %12 = arith.addi %5, %c1 : index
            %13 = memref.load %arg5[%12] : memref<?xf64>
            %14 = memref.load %arg3[%3, %12] : memref<?x28xf64>
            %15 = arith.subf %14, %13 : f64
            memref.store %15, %arg3[%3, %12] : memref<?x28xf64>
            %16 = memref.load %arg6[%12] : memref<?xf64>
            %17 = arith.mulf %0, %16 : f64
            %18 = arith.divf %15, %17 : f64
            memref.store %18, %arg3[%3, %12] : memref<?x28xf64>
            %19 = arith.addi %5, %c2 : index
            %20 = memref.load %arg5[%19] : memref<?xf64>
            %21 = memref.load %arg3[%3, %19] : memref<?x28xf64>
            %22 = arith.subf %21, %20 : f64
            memref.store %22, %arg3[%3, %19] : memref<?x28xf64>
            %23 = memref.load %arg6[%19] : memref<?xf64>
            %24 = arith.mulf %0, %23 : f64
            %25 = arith.divf %22, %24 : f64
            memref.store %25, %arg3[%3, %19] : memref<?x28xf64>
            %26 = arith.addi %5, %c3 : index
            %27 = memref.load %arg5[%26] : memref<?xf64>
            %28 = memref.load %arg3[%3, %26] : memref<?x28xf64>
            %29 = arith.subf %28, %27 : f64
            memref.store %29, %arg3[%3, %26] : memref<?x28xf64>
            %30 = memref.load %arg6[%26] : memref<?xf64>
            %31 = arith.mulf %0, %30 : f64
            %32 = arith.divf %29, %31 : f64
            memref.store %32, %arg3[%3, %26] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %1 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c27 step %c1 {
        %2 = arith.addi %1, %arg8 : index
        memref.store %cst, %arg4[%2, %2] : memref<?x28xf64>
        %3 = arith.muli %arg8, %c-1 : index
        %4 = arith.muli %arg7, %c-32 : index
        %5 = arith.addi %3, %4 : index
        %6 = arith.addi %5, %c27 : index
        scf.for %arg9 = %c0 to %6 step %c1 {
          %7 = arith.addi %2, %arg9 : index
          %8 = arith.addi %7, %c1 : index
          memref.store %cst_0, %arg4[%2, %8] : memref<?x28xf64>
          scf.for %arg10 = %c0 to %c8 step %c1 {
            %10 = arith.muli %arg10, %c4 : index
            %11 = memref.load %arg3[%10, %2] : memref<?x28xf64>
            %12 = memref.load %arg3[%10, %8] : memref<?x28xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = memref.load %arg4[%2, %8] : memref<?x28xf64>
            %15 = arith.addf %14, %13 : f64
            memref.store %15, %arg4[%2, %8] : memref<?x28xf64>
            %16 = arith.addi %10, %c1 : index
            %17 = memref.load %arg3[%16, %2] : memref<?x28xf64>
            %18 = memref.load %arg3[%16, %8] : memref<?x28xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = memref.load %arg4[%2, %8] : memref<?x28xf64>
            %21 = arith.addf %20, %19 : f64
            memref.store %21, %arg4[%2, %8] : memref<?x28xf64>
            %22 = arith.addi %10, %c2 : index
            %23 = memref.load %arg3[%22, %2] : memref<?x28xf64>
            %24 = memref.load %arg3[%22, %8] : memref<?x28xf64>
            %25 = arith.mulf %23, %24 : f64
            %26 = memref.load %arg4[%2, %8] : memref<?x28xf64>
            %27 = arith.addf %26, %25 : f64
            memref.store %27, %arg4[%2, %8] : memref<?x28xf64>
            %28 = arith.addi %10, %c3 : index
            %29 = memref.load %arg3[%28, %2] : memref<?x28xf64>
            %30 = memref.load %arg3[%28, %8] : memref<?x28xf64>
            %31 = arith.mulf %29, %30 : f64
            %32 = memref.load %arg4[%2, %8] : memref<?x28xf64>
            %33 = arith.addf %32, %31 : f64
            memref.store %33, %arg4[%2, %8] : memref<?x28xf64>
          }
          %9 = memref.load %arg4[%2, %8] : memref<?x28xf64>
          memref.store %9, %arg4[%8, %2] : memref<?x28xf64>
        }
      }
    }
    memref.store %cst, %arg4[%c27, %c27] : memref<?x28xf64>
    return
  }
}

