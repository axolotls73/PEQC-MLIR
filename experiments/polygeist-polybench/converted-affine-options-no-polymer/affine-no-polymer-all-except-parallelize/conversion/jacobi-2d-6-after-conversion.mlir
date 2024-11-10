module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c28 = arith.constant 28 : index
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      scf.for %arg5 = %c0 to %c1 step %c1 {
        scf.for %arg6 = %c0 to %c28 step %c1 {
          %0 = arith.addi %arg6, %c1 : index
          scf.for %arg7 = %c0 to %c7 step %c1 {
            %1 = arith.muli %arg7, %c4 : index
            %2 = arith.addi %1, %c1 : index
            %3 = memref.load %arg2[%0, %2] : memref<?x30xf64>
            %4 = arith.addi %2, %c-1 : index
            %5 = memref.load %arg2[%0, %4] : memref<?x30xf64>
            %6 = arith.addf %3, %5 : f64
            %7 = arith.addi %2, %c1 : index
            %8 = memref.load %arg2[%0, %7] : memref<?x30xf64>
            %9 = arith.addf %6, %8 : f64
            %10 = arith.addi %0, %c1 : index
            %11 = memref.load %arg2[%10, %2] : memref<?x30xf64>
            %12 = arith.addf %9, %11 : f64
            %13 = arith.addi %0, %c-1 : index
            %14 = memref.load %arg2[%13, %2] : memref<?x30xf64>
            %15 = arith.addf %12, %14 : f64
            %16 = arith.mulf %15, %cst : f64
            memref.store %16, %arg3[%0, %2] : memref<?x30xf64>
            %17 = arith.addi %2, %c1 : index
            %18 = memref.load %arg2[%0, %17] : memref<?x30xf64>
            %19 = arith.addi %17, %c-1 : index
            %20 = memref.load %arg2[%0, %19] : memref<?x30xf64>
            %21 = arith.addf %18, %20 : f64
            %22 = arith.addi %17, %c1 : index
            %23 = memref.load %arg2[%0, %22] : memref<?x30xf64>
            %24 = arith.addf %21, %23 : f64
            %25 = arith.addi %0, %c1 : index
            %26 = memref.load %arg2[%25, %17] : memref<?x30xf64>
            %27 = arith.addf %24, %26 : f64
            %28 = arith.addi %0, %c-1 : index
            %29 = memref.load %arg2[%28, %17] : memref<?x30xf64>
            %30 = arith.addf %27, %29 : f64
            %31 = arith.mulf %30, %cst : f64
            memref.store %31, %arg3[%0, %17] : memref<?x30xf64>
            %32 = arith.addi %2, %c2 : index
            %33 = memref.load %arg2[%0, %32] : memref<?x30xf64>
            %34 = arith.addi %32, %c-1 : index
            %35 = memref.load %arg2[%0, %34] : memref<?x30xf64>
            %36 = arith.addf %33, %35 : f64
            %37 = arith.addi %32, %c1 : index
            %38 = memref.load %arg2[%0, %37] : memref<?x30xf64>
            %39 = arith.addf %36, %38 : f64
            %40 = arith.addi %0, %c1 : index
            %41 = memref.load %arg2[%40, %32] : memref<?x30xf64>
            %42 = arith.addf %39, %41 : f64
            %43 = arith.addi %0, %c-1 : index
            %44 = memref.load %arg2[%43, %32] : memref<?x30xf64>
            %45 = arith.addf %42, %44 : f64
            %46 = arith.mulf %45, %cst : f64
            memref.store %46, %arg3[%0, %32] : memref<?x30xf64>
            %47 = arith.addi %2, %c3 : index
            %48 = memref.load %arg2[%0, %47] : memref<?x30xf64>
            %49 = arith.addi %47, %c-1 : index
            %50 = memref.load %arg2[%0, %49] : memref<?x30xf64>
            %51 = arith.addf %48, %50 : f64
            %52 = arith.addi %47, %c1 : index
            %53 = memref.load %arg2[%0, %52] : memref<?x30xf64>
            %54 = arith.addf %51, %53 : f64
            %55 = arith.addi %0, %c1 : index
            %56 = memref.load %arg2[%55, %47] : memref<?x30xf64>
            %57 = arith.addf %54, %56 : f64
            %58 = arith.addi %0, %c-1 : index
            %59 = memref.load %arg2[%58, %47] : memref<?x30xf64>
            %60 = arith.addf %57, %59 : f64
            %61 = arith.mulf %60, %cst : f64
            memref.store %61, %arg3[%0, %47] : memref<?x30xf64>
          }
        }
        scf.for %arg6 = %c0 to %c28 step %c1 {
          %0 = arith.addi %arg6, %c1 : index
          scf.for %arg7 = %c0 to %c7 step %c1 {
            %1 = arith.muli %arg7, %c4 : index
            %2 = arith.addi %1, %c1 : index
            %3 = memref.load %arg3[%0, %2] : memref<?x30xf64>
            %4 = arith.addi %2, %c-1 : index
            %5 = memref.load %arg3[%0, %4] : memref<?x30xf64>
            %6 = arith.addf %3, %5 : f64
            %7 = arith.addi %2, %c1 : index
            %8 = memref.load %arg3[%0, %7] : memref<?x30xf64>
            %9 = arith.addf %6, %8 : f64
            %10 = arith.addi %0, %c1 : index
            %11 = memref.load %arg3[%10, %2] : memref<?x30xf64>
            %12 = arith.addf %9, %11 : f64
            %13 = arith.addi %0, %c-1 : index
            %14 = memref.load %arg3[%13, %2] : memref<?x30xf64>
            %15 = arith.addf %12, %14 : f64
            %16 = arith.mulf %15, %cst : f64
            memref.store %16, %arg2[%0, %2] : memref<?x30xf64>
            %17 = arith.addi %2, %c1 : index
            %18 = memref.load %arg3[%0, %17] : memref<?x30xf64>
            %19 = arith.addi %17, %c-1 : index
            %20 = memref.load %arg3[%0, %19] : memref<?x30xf64>
            %21 = arith.addf %18, %20 : f64
            %22 = arith.addi %17, %c1 : index
            %23 = memref.load %arg3[%0, %22] : memref<?x30xf64>
            %24 = arith.addf %21, %23 : f64
            %25 = arith.addi %0, %c1 : index
            %26 = memref.load %arg3[%25, %17] : memref<?x30xf64>
            %27 = arith.addf %24, %26 : f64
            %28 = arith.addi %0, %c-1 : index
            %29 = memref.load %arg3[%28, %17] : memref<?x30xf64>
            %30 = arith.addf %27, %29 : f64
            %31 = arith.mulf %30, %cst : f64
            memref.store %31, %arg2[%0, %17] : memref<?x30xf64>
            %32 = arith.addi %2, %c2 : index
            %33 = memref.load %arg3[%0, %32] : memref<?x30xf64>
            %34 = arith.addi %32, %c-1 : index
            %35 = memref.load %arg3[%0, %34] : memref<?x30xf64>
            %36 = arith.addf %33, %35 : f64
            %37 = arith.addi %32, %c1 : index
            %38 = memref.load %arg3[%0, %37] : memref<?x30xf64>
            %39 = arith.addf %36, %38 : f64
            %40 = arith.addi %0, %c1 : index
            %41 = memref.load %arg3[%40, %32] : memref<?x30xf64>
            %42 = arith.addf %39, %41 : f64
            %43 = arith.addi %0, %c-1 : index
            %44 = memref.load %arg3[%43, %32] : memref<?x30xf64>
            %45 = arith.addf %42, %44 : f64
            %46 = arith.mulf %45, %cst : f64
            memref.store %46, %arg2[%0, %32] : memref<?x30xf64>
            %47 = arith.addi %2, %c3 : index
            %48 = memref.load %arg3[%0, %47] : memref<?x30xf64>
            %49 = arith.addi %47, %c-1 : index
            %50 = memref.load %arg3[%0, %49] : memref<?x30xf64>
            %51 = arith.addf %48, %50 : f64
            %52 = arith.addi %47, %c1 : index
            %53 = memref.load %arg3[%0, %52] : memref<?x30xf64>
            %54 = arith.addf %51, %53 : f64
            %55 = arith.addi %0, %c1 : index
            %56 = memref.load %arg3[%55, %47] : memref<?x30xf64>
            %57 = arith.addf %54, %56 : f64
            %58 = arith.addi %0, %c-1 : index
            %59 = memref.load %arg3[%58, %47] : memref<?x30xf64>
            %60 = arith.addf %57, %59 : f64
            %61 = arith.mulf %60, %cst : f64
            memref.store %61, %arg2[%0, %47] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

