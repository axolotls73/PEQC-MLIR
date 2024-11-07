module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c38 = arith.constant 38 : index
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg3 = %c0 to %c20 step %c32 {
      scf.for %arg4 = %c0 to %c38 step %c32 {
        scf.for %arg5 = %c0 to %c38 step %c32 {
          %0 = arith.addi %arg3, %c20 : index
          scf.for %arg6 = %arg3 to %0 step %c1 {
            %1 = arith.addi %arg4, %c32 : index
            %2 = arith.minsi %1, %c38 : index
            scf.for %arg7 = %arg4 to %2 step %c1 {
              %3 = arith.addi %arg5, %c32 : index
              %4 = arith.minsi %3, %c38 : index
              scf.for %arg8 = %arg5 to %4 step %c1 {
                %5 = memref.load %arg2[%arg7, %arg8] : memref<?x40xf64>
                %6 = arith.addi %arg8, %c1 : index
                %7 = memref.load %arg2[%arg7, %6] : memref<?x40xf64>
                %8 = arith.addf %5, %7 : f64
                %9 = arith.addi %arg8, %c2 : index
                %10 = memref.load %arg2[%arg7, %9] : memref<?x40xf64>
                %11 = arith.addf %8, %10 : f64
                %12 = arith.addi %arg7, %c1 : index
                %13 = memref.load %arg2[%12, %arg8] : memref<?x40xf64>
                %14 = arith.addf %11, %13 : f64
                %15 = arith.addi %arg7, %c1 : index
                %16 = arith.addi %arg8, %c1 : index
                %17 = memref.load %arg2[%15, %16] : memref<?x40xf64>
                %18 = arith.addf %14, %17 : f64
                %19 = arith.addi %arg7, %c1 : index
                %20 = arith.addi %arg8, %c2 : index
                %21 = memref.load %arg2[%19, %20] : memref<?x40xf64>
                %22 = arith.addf %18, %21 : f64
                %23 = arith.addi %arg7, %c2 : index
                %24 = memref.load %arg2[%23, %arg8] : memref<?x40xf64>
                %25 = arith.addf %22, %24 : f64
                %26 = arith.addi %arg7, %c2 : index
                %27 = arith.addi %arg8, %c1 : index
                %28 = memref.load %arg2[%26, %27] : memref<?x40xf64>
                %29 = arith.addf %25, %28 : f64
                %30 = arith.addi %arg7, %c2 : index
                %31 = arith.addi %arg8, %c2 : index
                %32 = memref.load %arg2[%30, %31] : memref<?x40xf64>
                %33 = arith.addf %29, %32 : f64
                %34 = arith.divf %33, %cst : f64
                %35 = arith.addi %arg7, %c1 : index
                %36 = arith.addi %arg8, %c1 : index
                memref.store %34, %arg2[%35, %36] : memref<?x40xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

