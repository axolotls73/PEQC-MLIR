module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c30 = arith.constant 30 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c6 = arith.constant 6 : index
    %c24 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %c20 step %c1 {
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg8, %arg9 : index
        scf.for %arg10 = %c0 to %c6 step %c1 {
          %3 = arith.muli %arg10, %c4 : index
          %4 = memref.load %arg5[%0, %3] : memref<?x25xf64>
          %5 = arith.mulf %4, %arg4 : f64
          memref.store %5, %arg5[%0, %3] : memref<?x25xf64>
          %6 = arith.addi %3, %c1 : index
          %7 = memref.load %arg5[%0, %6] : memref<?x25xf64>
          %8 = arith.mulf %7, %arg4 : f64
          memref.store %8, %arg5[%0, %6] : memref<?x25xf64>
          %9 = arith.addi %3, %c2 : index
          %10 = memref.load %arg5[%0, %9] : memref<?x25xf64>
          %11 = arith.mulf %10, %arg4 : f64
          memref.store %11, %arg5[%0, %9] : memref<?x25xf64>
          %12 = arith.addi %3, %c3 : index
          %13 = memref.load %arg5[%0, %12] : memref<?x25xf64>
          %14 = arith.mulf %13, %arg4 : f64
          memref.store %14, %arg5[%0, %12] : memref<?x25xf64>
        }
        %1 = memref.load %arg5[%0, %c24] : memref<?x25xf64>
        %2 = arith.mulf %1, %arg4 : f64
        memref.store %2, %arg5[%0, %c24] : memref<?x25xf64>
      }
    }
    scf.for %arg8 = %c0 to %c20 step %c1 {
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg8, %arg9 : index
        scf.for %arg10 = %c0 to %c30 step %c1 {
          scf.for %arg11 = %c0 to %c1 step %c1 {
            %1 = arith.addi %arg10, %arg11 : index
            %2 = memref.load %arg6[%0, %1] : memref<?x30xf64>
            %3 = arith.mulf %arg3, %2 : f64
            %4 = memref.load %arg6[%0, %1] : memref<?x30xf64>
            %5 = arith.mulf %arg3, %4 : f64
            %6 = memref.load %arg6[%0, %1] : memref<?x30xf64>
            %7 = arith.mulf %arg3, %6 : f64
            %8 = memref.load %arg6[%0, %1] : memref<?x30xf64>
            %9 = arith.mulf %arg3, %8 : f64
            scf.for %arg12 = %c0 to %c6 step %c1 {
              %16 = arith.muli %arg12, %c4 : index
              %17 = memref.load %arg5[%0, %16] : memref<?x25xf64>
              %18 = memref.load %arg7[%1, %16] : memref<?x25xf64>
              %19 = arith.mulf %3, %18 : f64
              %20 = arith.addf %17, %19 : f64
              memref.store %20, %arg5[%0, %16] : memref<?x25xf64>
              %21 = arith.addi %16, %c1 : index
              %22 = memref.load %arg5[%0, %21] : memref<?x25xf64>
              %23 = memref.load %arg7[%1, %21] : memref<?x25xf64>
              %24 = arith.mulf %5, %23 : f64
              %25 = arith.addf %22, %24 : f64
              memref.store %25, %arg5[%0, %21] : memref<?x25xf64>
              %26 = arith.addi %16, %c2 : index
              %27 = memref.load %arg5[%0, %26] : memref<?x25xf64>
              %28 = memref.load %arg7[%1, %26] : memref<?x25xf64>
              %29 = arith.mulf %7, %28 : f64
              %30 = arith.addf %27, %29 : f64
              memref.store %30, %arg5[%0, %26] : memref<?x25xf64>
              %31 = arith.addi %16, %c3 : index
              %32 = memref.load %arg5[%0, %31] : memref<?x25xf64>
              %33 = memref.load %arg7[%1, %31] : memref<?x25xf64>
              %34 = arith.mulf %9, %33 : f64
              %35 = arith.addf %32, %34 : f64
              memref.store %35, %arg5[%0, %31] : memref<?x25xf64>
            }
            %10 = memref.load %arg5[%0, %c24] : memref<?x25xf64>
            %11 = memref.load %arg6[%0, %1] : memref<?x30xf64>
            %12 = arith.mulf %arg3, %11 : f64
            %13 = memref.load %arg7[%1, %c24] : memref<?x25xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = arith.addf %10, %14 : f64
            memref.store %15, %arg5[%0, %c24] : memref<?x25xf64>
          }
        }
      }
    }
    return
  }
}

