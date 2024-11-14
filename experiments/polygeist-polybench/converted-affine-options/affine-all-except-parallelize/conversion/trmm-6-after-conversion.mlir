module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    %c28 = arith.constant 28 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c-1 = arith.constant -1 : index
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c19 step %c1 {
      %0 = arith.muli %arg5, %c-1 : index
      %1 = arith.addi %0, %c19 : index
      scf.for %arg6 = %c0 to %1 step %c1 {
        %2 = arith.addi %arg5, %arg6 : index
        %3 = arith.addi %2, %c1 : index
        %4 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
        %5 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
        %6 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
        %7 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
        scf.for %arg7 = %c0 to %c7 step %c1 {
          %9 = arith.muli %arg7, %c4 : index
          %10 = memref.load %arg4[%arg5, %9] : memref<?x30xf64>
          %11 = memref.load %arg4[%3, %9] : memref<?x30xf64>
          %12 = arith.mulf %4, %11 : f64
          %13 = arith.addf %10, %12 : f64
          memref.store %13, %arg4[%arg5, %9] : memref<?x30xf64>
          %14 = arith.addi %9, %c1 : index
          %15 = memref.load %arg4[%arg5, %14] : memref<?x30xf64>
          %16 = memref.load %arg4[%3, %14] : memref<?x30xf64>
          %17 = arith.mulf %5, %16 : f64
          %18 = arith.addf %15, %17 : f64
          memref.store %18, %arg4[%arg5, %14] : memref<?x30xf64>
          %19 = arith.addi %9, %c2 : index
          %20 = memref.load %arg4[%arg5, %19] : memref<?x30xf64>
          %21 = memref.load %arg4[%3, %19] : memref<?x30xf64>
          %22 = arith.mulf %6, %21 : f64
          %23 = arith.addf %20, %22 : f64
          memref.store %23, %arg4[%arg5, %19] : memref<?x30xf64>
          %24 = arith.addi %9, %c3 : index
          %25 = memref.load %arg4[%arg5, %24] : memref<?x30xf64>
          %26 = memref.load %arg4[%3, %24] : memref<?x30xf64>
          %27 = arith.mulf %7, %26 : f64
          %28 = arith.addf %25, %27 : f64
          memref.store %28, %arg4[%arg5, %24] : memref<?x30xf64>
        }
        %8 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
        scf.for %arg7 = %c0 to %c2 step %c1 {
          %9 = arith.addi %arg7, %c28 : index
          %10 = memref.load %arg4[%arg5, %9] : memref<?x30xf64>
          %11 = memref.load %arg4[%3, %9] : memref<?x30xf64>
          %12 = arith.mulf %8, %11 : f64
          %13 = arith.addf %10, %12 : f64
          memref.store %13, %arg4[%arg5, %9] : memref<?x30xf64>
        }
      }
    }
    scf.for %arg5 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg5, %c32 : index
      scf.for %arg6 = %c0 to %c20 step %c1 {
        %1 = arith.addi %0, %arg6 : index
        scf.for %arg7 = %c0 to %c7 step %c1 {
          %2 = arith.muli %arg7, %c4 : index
          %3 = memref.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = arith.mulf %arg2, %3 : f64
          memref.store %4, %arg4[%1, %2] : memref<?x30xf64>
          %5 = arith.addi %2, %c1 : index
          %6 = memref.load %arg4[%1, %5] : memref<?x30xf64>
          %7 = arith.mulf %arg2, %6 : f64
          memref.store %7, %arg4[%1, %5] : memref<?x30xf64>
          %8 = arith.addi %2, %c2 : index
          %9 = memref.load %arg4[%1, %8] : memref<?x30xf64>
          %10 = arith.mulf %arg2, %9 : f64
          memref.store %10, %arg4[%1, %8] : memref<?x30xf64>
          %11 = arith.addi %2, %c3 : index
          %12 = memref.load %arg4[%1, %11] : memref<?x30xf64>
          %13 = arith.mulf %arg2, %12 : f64
          memref.store %13, %arg4[%1, %11] : memref<?x30xf64>
        }
        scf.for %arg7 = %c0 to %c2 step %c1 {
          %2 = arith.addi %arg7, %c28 : index
          %3 = memref.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = arith.mulf %arg2, %3 : f64
          memref.store %4, %arg4[%1, %2] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

