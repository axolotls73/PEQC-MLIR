module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %c-1 = arith.constant -1 : index
    %c39 = arith.constant 39 : index
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c20 step %c1 {
      scf.for %arg4 = %c1 to %c39 step %c1 {
        scf.for %arg5 = %c1 to %c39 step %c1 {
          %0 = arith.addi %arg3, %c1 : index
          scf.for %arg6 = %arg3 to %0 step %c1 {
            %1 = arith.addi %arg4, %c1 : index
            scf.for %arg7 = %arg4 to %1 step %c1 {
              %2 = arith.addi %arg5, %c1 : index
              scf.for %arg8 = %arg5 to %2 step %c1 {
                %3 = arith.addi %arg7, %c-1 : index
                %4 = arith.addi %arg8, %c-1 : index
                %5 = memref.load %arg2[%3, %4] : memref<?x40xf64>
                %6 = arith.addi %arg7, %c-1 : index
                %7 = memref.load %arg2[%6, %arg8] : memref<?x40xf64>
                %8 = arith.addf %5, %7 : f64
                %9 = arith.addi %arg7, %c-1 : index
                %10 = arith.addi %arg8, %c1 : index
                %11 = memref.load %arg2[%9, %10] : memref<?x40xf64>
                %12 = arith.addf %8, %11 : f64
                %13 = arith.addi %arg8, %c-1 : index
                %14 = memref.load %arg2[%arg7, %13] : memref<?x40xf64>
                %15 = arith.addf %12, %14 : f64
                %16 = memref.load %arg2[%arg7, %arg8] : memref<?x40xf64>
                %17 = arith.addf %15, %16 : f64
                %18 = arith.addi %arg8, %c1 : index
                %19 = memref.load %arg2[%arg7, %18] : memref<?x40xf64>
                %20 = arith.addf %17, %19 : f64
                %21 = arith.addi %arg7, %c1 : index
                %22 = arith.addi %arg8, %c-1 : index
                %23 = memref.load %arg2[%21, %22] : memref<?x40xf64>
                %24 = arith.addf %20, %23 : f64
                %25 = arith.addi %arg7, %c1 : index
                %26 = memref.load %arg2[%25, %arg8] : memref<?x40xf64>
                %27 = arith.addf %24, %26 : f64
                %28 = arith.addi %arg7, %c1 : index
                %29 = arith.addi %arg8, %c1 : index
                %30 = memref.load %arg2[%28, %29] : memref<?x40xf64>
                %31 = arith.addf %27, %30 : f64
                %32 = arith.divf %31, %cst : f64
                memref.store %32, %arg2[%arg7, %arg8] : memref<?x40xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

