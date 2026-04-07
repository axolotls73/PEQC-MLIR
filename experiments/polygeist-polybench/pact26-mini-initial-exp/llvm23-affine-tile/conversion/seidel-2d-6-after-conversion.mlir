module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %c-1 = arith.constant -1 : index
    %c39 = arith.constant 39 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg3 = %c0 to %c20 step %c32 {
      scf.for %arg4 = %c1 to %c39 step %c32 {
        scf.for %arg5 = %c1 to %c39 step %c32 {
          %0 = arith.addi %arg3, %c20 : index
          scf.for %arg6 = %arg3 to %0 step %c1 {
            %1 = arith.addi %arg4, %c32 : index
            %2 = arith.minsi %1, %c39 : index
            scf.for %arg7 = %arg4 to %2 step %c1 {
              %3 = arith.addi %arg5, %c32 : index
              %4 = arith.minsi %3, %c39 : index
              scf.for %arg8 = %arg5 to %4 step %c1 {
                %5 = arith.addi %arg7, %c-1 : index
                %6 = arith.addi %arg8, %c-1 : index
                %7 = memref.load %arg2[%5, %6] : memref<?x40xf64>
                %8 = arith.addi %arg7, %c-1 : index
                %9 = memref.load %arg2[%8, %arg8] : memref<?x40xf64>
                %10 = arith.addf %7, %9 : f64
                %11 = arith.addi %arg7, %c-1 : index
                %12 = arith.addi %arg8, %c1 : index
                %13 = memref.load %arg2[%11, %12] : memref<?x40xf64>
                %14 = arith.addf %10, %13 : f64
                %15 = arith.addi %arg8, %c-1 : index
                %16 = memref.load %arg2[%arg7, %15] : memref<?x40xf64>
                %17 = arith.addf %14, %16 : f64
                %18 = memref.load %arg2[%arg7, %arg8] : memref<?x40xf64>
                %19 = arith.addf %17, %18 : f64
                %20 = arith.addi %arg8, %c1 : index
                %21 = memref.load %arg2[%arg7, %20] : memref<?x40xf64>
                %22 = arith.addf %19, %21 : f64
                %23 = arith.addi %arg7, %c1 : index
                %24 = arith.addi %arg8, %c-1 : index
                %25 = memref.load %arg2[%23, %24] : memref<?x40xf64>
                %26 = arith.addf %22, %25 : f64
                %27 = arith.addi %arg7, %c1 : index
                %28 = memref.load %arg2[%27, %arg8] : memref<?x40xf64>
                %29 = arith.addf %26, %28 : f64
                %30 = arith.addi %arg7, %c1 : index
                %31 = arith.addi %arg8, %c1 : index
                %32 = memref.load %arg2[%30, %31] : memref<?x40xf64>
                %33 = arith.addf %29, %32 : f64
                %34 = arith.divf %33, %cst : f64
                memref.store %34, %arg2[%arg7, %arg8] : memref<?x40xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

