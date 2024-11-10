module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c32 = arith.constant 32 : index
    %c24 = arith.constant 24 : index
    %c28 = arith.constant 28 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    memref.store %cst_1, %arg4[%c27, %c27] : memref<?x28xf64>
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      %2 = arith.muli %arg7, %c-1 : index
      %3 = arith.addi %2, %c27 : index
      %4 = arith.cmpi slt, %3, %c0 : index
      %5 = arith.subi %c-1, %3 : index
      %6 = arith.select %4, %5, %3 : index
      %7 = arith.divsi %6, %c4 : index
      %8 = arith.subi %c-1, %7 : index
      %9 = arith.select %4, %8, %7 : index
      %10 = arith.muli %9, %c4 : index
      %11 = arith.addi %arg7, %10 : index
      %12 = arith.addi %11, %c1 : index
      scf.for %arg8 = %1 to %12 step %c4 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
        %24 = arith.addi %arg8, %c1 : index
        memref.store %cst_0, %arg4[%arg7, %24] : memref<?x28xf64>
        %25 = arith.addi %arg8, %c2 : index
        memref.store %cst_0, %arg4[%arg7, %25] : memref<?x28xf64>
        %26 = arith.addi %arg8, %c3 : index
        memref.store %cst_0, %arg4[%arg7, %26] : memref<?x28xf64>
      }
      %13 = arith.muli %arg7, %c-1 : index
      %14 = arith.addi %13, %c27 : index
      %15 = arith.cmpi slt, %14, %c0 : index
      %16 = arith.subi %c-1, %14 : index
      %17 = arith.select %15, %16, %14 : index
      %18 = arith.divsi %17, %c4 : index
      %19 = arith.subi %c-1, %18 : index
      %20 = arith.select %15, %19, %18 : index
      %21 = arith.muli %20, %c4 : index
      %22 = arith.addi %arg7, %21 : index
      %23 = arith.addi %22, %c1 : index
      scf.for %arg8 = %23 to %c28 step %c1 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    scf.for %arg7 = %c0 to %c24 step %c4 {
      memref.store %cst_1, %arg4[%arg7, %arg7] : memref<?x28xf64>
      %1 = arith.addi %arg7, %c1 : index
      memref.store %cst_1, %arg4[%1, %1] : memref<?x28xf64>
      %2 = arith.addi %arg7, %c2 : index
      memref.store %cst_1, %arg4[%2, %2] : memref<?x28xf64>
      %3 = arith.addi %arg7, %c3 : index
      memref.store %cst_1, %arg4[%3, %3] : memref<?x28xf64>
    }
    scf.for %arg7 = %c24 to %c27 step %c1 {
      memref.store %cst_1, %arg4[%arg7, %arg7] : memref<?x28xf64>
    }
    %0 = math.sqrt %arg2 : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    scf.for %arg7 = %c0 to %c28 step %c4 {
      memref.store %cst_0, %arg6[%arg7] : memref<?xf64>
      memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
      %1 = arith.addi %arg7, %c1 : index
      memref.store %cst_0, %arg6[%1] : memref<?xf64>
      memref.store %cst_0, %arg5[%1] : memref<?xf64>
      %2 = arith.addi %arg7, %c2 : index
      memref.store %cst_0, %arg6[%2] : memref<?xf64>
      memref.store %cst_0, %arg5[%2] : memref<?xf64>
      %3 = arith.addi %arg7, %c3 : index
      memref.store %cst_0, %arg6[%3] : memref<?xf64>
      memref.store %cst_0, %arg5[%3] : memref<?xf64>
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c28 step %c4 {
        %1 = memref.load %arg5[%arg8] : memref<?xf64>
        %2 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %arg5[%arg8] : memref<?xf64>
        %4 = arith.addi %arg8, %c1 : index
        %5 = memref.load %arg5[%4] : memref<?xf64>
        %6 = memref.load %arg3[%arg7, %4] : memref<?x28xf64>
        %7 = arith.addf %5, %6 : f64
        memref.store %7, %arg5[%4] : memref<?xf64>
        %8 = arith.addi %arg8, %c2 : index
        %9 = memref.load %arg5[%8] : memref<?xf64>
        %10 = memref.load %arg3[%arg7, %8] : memref<?x28xf64>
        %11 = arith.addf %9, %10 : f64
        memref.store %11, %arg5[%8] : memref<?xf64>
        %12 = arith.addi %arg8, %c3 : index
        %13 = memref.load %arg5[%12] : memref<?xf64>
        %14 = memref.load %arg3[%arg7, %12] : memref<?x28xf64>
        %15 = arith.addf %13, %14 : f64
        memref.store %15, %arg5[%12] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c28 step %c4 {
      %1 = memref.load %arg5[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      memref.store %2, %arg5[%arg7] : memref<?xf64>
      %3 = arith.addi %arg7, %c1 : index
      %4 = memref.load %arg5[%3] : memref<?xf64>
      %5 = arith.divf %4, %arg2 : f64
      memref.store %5, %arg5[%3] : memref<?xf64>
      %6 = arith.addi %arg7, %c2 : index
      %7 = memref.load %arg5[%6] : memref<?xf64>
      %8 = arith.divf %7, %arg2 : f64
      memref.store %8, %arg5[%6] : memref<?xf64>
      %9 = arith.addi %arg7, %c3 : index
      %10 = memref.load %arg5[%9] : memref<?xf64>
      %11 = arith.divf %10, %arg2 : f64
      memref.store %11, %arg5[%9] : memref<?xf64>
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c28 step %c4 {
        %1 = memref.load %arg6[%arg8] : memref<?xf64>
        %2 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %3 = memref.load %arg5[%arg8] : memref<?xf64>
        %4 = arith.subf %2, %3 : f64
        %5 = arith.mulf %4, %4 : f64
        %6 = arith.addf %1, %5 : f64
        memref.store %6, %arg6[%arg8] : memref<?xf64>
        %7 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %8 = memref.load %arg5[%arg8] : memref<?xf64>
        %9 = arith.subf %7, %8 : f64
        memref.store %9, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %10 = arith.addi %arg8, %c1 : index
        %11 = memref.load %arg6[%10] : memref<?xf64>
        %12 = memref.load %arg3[%arg7, %10] : memref<?x28xf64>
        %13 = memref.load %arg5[%10] : memref<?xf64>
        %14 = arith.subf %12, %13 : f64
        %15 = arith.mulf %14, %14 : f64
        %16 = arith.addf %11, %15 : f64
        memref.store %16, %arg6[%10] : memref<?xf64>
        %17 = memref.load %arg3[%arg7, %10] : memref<?x28xf64>
        %18 = memref.load %arg5[%10] : memref<?xf64>
        %19 = arith.subf %17, %18 : f64
        memref.store %19, %arg3[%arg7, %10] : memref<?x28xf64>
        %20 = arith.addi %arg8, %c2 : index
        %21 = memref.load %arg6[%20] : memref<?xf64>
        %22 = memref.load %arg3[%arg7, %20] : memref<?x28xf64>
        %23 = memref.load %arg5[%20] : memref<?xf64>
        %24 = arith.subf %22, %23 : f64
        %25 = arith.mulf %24, %24 : f64
        %26 = arith.addf %21, %25 : f64
        memref.store %26, %arg6[%20] : memref<?xf64>
        %27 = memref.load %arg3[%arg7, %20] : memref<?x28xf64>
        %28 = memref.load %arg5[%20] : memref<?xf64>
        %29 = arith.subf %27, %28 : f64
        memref.store %29, %arg3[%arg7, %20] : memref<?x28xf64>
        %30 = arith.addi %arg8, %c3 : index
        %31 = memref.load %arg6[%30] : memref<?xf64>
        %32 = memref.load %arg3[%arg7, %30] : memref<?x28xf64>
        %33 = memref.load %arg5[%30] : memref<?xf64>
        %34 = arith.subf %32, %33 : f64
        %35 = arith.mulf %34, %34 : f64
        %36 = arith.addf %31, %35 : f64
        memref.store %36, %arg6[%30] : memref<?xf64>
        %37 = memref.load %arg3[%arg7, %30] : memref<?x28xf64>
        %38 = memref.load %arg5[%30] : memref<?xf64>
        %39 = arith.subf %37, %38 : f64
        memref.store %39, %arg3[%arg7, %30] : memref<?x28xf64>
      }
    }
    scf.for %arg7 = %c0 to %c28 step %c4 {
      %1 = memref.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst : f64
      %5 = arith.select %4, %cst_1, %3 : f64
      memref.store %5, %arg6[%arg7] : memref<?xf64>
      %6 = arith.addi %arg7, %c1 : index
      %7 = memref.load %arg6[%6] : memref<?xf64>
      %8 = arith.divf %7, %arg2 : f64
      %9 = math.sqrt %8 : f64
      %10 = arith.cmpf ole, %9, %cst : f64
      %11 = arith.select %10, %cst_1, %9 : f64
      memref.store %11, %arg6[%6] : memref<?xf64>
      %12 = arith.addi %arg7, %c2 : index
      %13 = memref.load %arg6[%12] : memref<?xf64>
      %14 = arith.divf %13, %arg2 : f64
      %15 = math.sqrt %14 : f64
      %16 = arith.cmpf ole, %15, %cst : f64
      %17 = arith.select %16, %cst_1, %15 : f64
      memref.store %17, %arg6[%12] : memref<?xf64>
      %18 = arith.addi %arg7, %c3 : index
      %19 = memref.load %arg6[%18] : memref<?xf64>
      %20 = arith.divf %19, %arg2 : f64
      %21 = math.sqrt %20 : f64
      %22 = arith.cmpf ole, %21, %cst : f64
      %23 = arith.select %22, %cst_1, %21 : f64
      memref.store %23, %arg6[%18] : memref<?xf64>
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c28 step %c4 {
        %1 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %2 = memref.load %alloca[%c0] : memref<1xf64>
        %3 = memref.load %arg6[%arg8] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.divf %1, %4 : f64
        memref.store %5, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %6 = arith.addi %arg8, %c1 : index
        %7 = memref.load %arg3[%arg7, %6] : memref<?x28xf64>
        %8 = memref.load %alloca[%c0] : memref<1xf64>
        %9 = memref.load %arg6[%6] : memref<?xf64>
        %10 = arith.mulf %8, %9 : f64
        %11 = arith.divf %7, %10 : f64
        memref.store %11, %arg3[%arg7, %6] : memref<?x28xf64>
        %12 = arith.addi %arg8, %c2 : index
        %13 = memref.load %arg3[%arg7, %12] : memref<?x28xf64>
        %14 = memref.load %alloca[%c0] : memref<1xf64>
        %15 = memref.load %arg6[%12] : memref<?xf64>
        %16 = arith.mulf %14, %15 : f64
        %17 = arith.divf %13, %16 : f64
        memref.store %17, %arg3[%arg7, %12] : memref<?x28xf64>
        %18 = arith.addi %arg8, %c3 : index
        %19 = memref.load %arg3[%arg7, %18] : memref<?x28xf64>
        %20 = memref.load %alloca[%c0] : memref<1xf64>
        %21 = memref.load %arg6[%18] : memref<?xf64>
        %22 = arith.mulf %20, %21 : f64
        %23 = arith.divf %19, %22 : f64
        memref.store %23, %arg3[%arg7, %18] : memref<?x28xf64>
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %1 = arith.addi %arg7, %c1 : index
        %2 = arith.muli %arg7, %c-1 : index
        %3 = arith.addi %2, %c27 : index
        %4 = arith.cmpi slt, %3, %c0 : index
        %5 = arith.subi %c-1, %3 : index
        %6 = arith.select %4, %5, %3 : index
        %7 = arith.divsi %6, %c4 : index
        %8 = arith.subi %c-1, %7 : index
        %9 = arith.select %4, %8, %7 : index
        %10 = arith.muli %9, %c4 : index
        %11 = arith.addi %arg7, %10 : index
        %12 = arith.addi %11, %c1 : index
        scf.for %arg9 = %1 to %12 step %c4 {
          %24 = memref.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          %25 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %26 = memref.load %arg3[%arg8, %arg9] : memref<?x28xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          memref.store %28, %arg4[%arg7, %arg9] : memref<?x28xf64>
          %29 = arith.addi %arg9, %c1 : index
          %30 = memref.load %arg4[%arg7, %29] : memref<?x28xf64>
          %31 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %32 = memref.load %arg3[%arg8, %29] : memref<?x28xf64>
          %33 = arith.mulf %31, %32 : f64
          %34 = arith.addf %30, %33 : f64
          memref.store %34, %arg4[%arg7, %29] : memref<?x28xf64>
          %35 = arith.addi %arg9, %c2 : index
          %36 = memref.load %arg4[%arg7, %35] : memref<?x28xf64>
          %37 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %38 = memref.load %arg3[%arg8, %35] : memref<?x28xf64>
          %39 = arith.mulf %37, %38 : f64
          %40 = arith.addf %36, %39 : f64
          memref.store %40, %arg4[%arg7, %35] : memref<?x28xf64>
          %41 = arith.addi %arg9, %c3 : index
          %42 = memref.load %arg4[%arg7, %41] : memref<?x28xf64>
          %43 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %44 = memref.load %arg3[%arg8, %41] : memref<?x28xf64>
          %45 = arith.mulf %43, %44 : f64
          %46 = arith.addf %42, %45 : f64
          memref.store %46, %arg4[%arg7, %41] : memref<?x28xf64>
        }
        %13 = arith.muli %arg7, %c-1 : index
        %14 = arith.addi %13, %c27 : index
        %15 = arith.cmpi slt, %14, %c0 : index
        %16 = arith.subi %c-1, %14 : index
        %17 = arith.select %15, %16, %14 : index
        %18 = arith.divsi %17, %c4 : index
        %19 = arith.subi %c-1, %18 : index
        %20 = arith.select %15, %19, %18 : index
        %21 = arith.muli %20, %c4 : index
        %22 = arith.addi %arg7, %21 : index
        %23 = arith.addi %22, %c1 : index
        scf.for %arg9 = %23 to %c28 step %c1 {
          %24 = memref.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          %25 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %26 = memref.load %arg3[%arg8, %arg9] : memref<?x28xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          memref.store %28, %arg4[%arg7, %arg9] : memref<?x28xf64>
        }
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      %2 = arith.muli %arg7, %c-1 : index
      %3 = arith.addi %2, %c27 : index
      %4 = arith.cmpi slt, %3, %c0 : index
      %5 = arith.subi %c-1, %3 : index
      %6 = arith.select %4, %5, %3 : index
      %7 = arith.divsi %6, %c4 : index
      %8 = arith.subi %c-1, %7 : index
      %9 = arith.select %4, %8, %7 : index
      %10 = arith.muli %9, %c4 : index
      %11 = arith.addi %arg7, %10 : index
      %12 = arith.addi %11, %c1 : index
      scf.for %arg8 = %1 to %12 step %c4 {
        %24 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %24, %arg4[%arg8, %arg7] : memref<?x28xf64>
        %25 = arith.addi %arg8, %c1 : index
        %26 = memref.load %arg4[%arg7, %25] : memref<?x28xf64>
        memref.store %26, %arg4[%25, %arg7] : memref<?x28xf64>
        %27 = arith.addi %arg8, %c2 : index
        %28 = memref.load %arg4[%arg7, %27] : memref<?x28xf64>
        memref.store %28, %arg4[%27, %arg7] : memref<?x28xf64>
        %29 = arith.addi %arg8, %c3 : index
        %30 = memref.load %arg4[%arg7, %29] : memref<?x28xf64>
        memref.store %30, %arg4[%29, %arg7] : memref<?x28xf64>
      }
      %13 = arith.muli %arg7, %c-1 : index
      %14 = arith.addi %13, %c27 : index
      %15 = arith.cmpi slt, %14, %c0 : index
      %16 = arith.subi %c-1, %14 : index
      %17 = arith.select %15, %16, %14 : index
      %18 = arith.divsi %17, %c4 : index
      %19 = arith.subi %c-1, %18 : index
      %20 = arith.select %15, %19, %18 : index
      %21 = arith.muli %20, %c4 : index
      %22 = arith.addi %arg7, %21 : index
      %23 = arith.addi %22, %c1 : index
      scf.for %arg8 = %23 to %c28 step %c1 {
        %24 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %24, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

