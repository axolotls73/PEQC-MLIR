module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c20 step %c1 {
      %c1_0 = arith.constant 1 : index
      %c39 = arith.constant 39 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg4 = %c1_0 to %c39 step %c1_1 {
        %c1_2 = arith.constant 1 : index
        %c39_3 = arith.constant 39 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg5 = %c1_2 to %c39_3 step %c1_4 {
          %c1_5 = arith.constant 1 : index
          %0 = arith.addi %arg3, %c1_5 : index
          %c1_6 = arith.constant 1 : index
          scf.for %arg6 = %arg3 to %0 step %c1_6 {
            %c1_7 = arith.constant 1 : index
            %1 = arith.addi %arg4, %c1_7 : index
            %c1_8 = arith.constant 1 : index
            scf.for %arg7 = %arg4 to %1 step %c1_8 {
              %c1_9 = arith.constant 1 : index
              %2 = arith.addi %arg5, %c1_9 : index
              %c1_10 = arith.constant 1 : index
              scf.for %arg8 = %arg5 to %2 step %c1_10 {
                %c-1 = arith.constant -1 : index
                %3 = arith.addi %arg7, %c-1 : index
                %c-1_11 = arith.constant -1 : index
                %4 = arith.addi %arg8, %c-1_11 : index
                %5 = memref.load %arg2[%3, %4] : memref<?x40xf64>
                %c-1_12 = arith.constant -1 : index
                %6 = arith.addi %arg7, %c-1_12 : index
                %7 = memref.load %arg2[%6, %arg8] : memref<?x40xf64>
                %8 = arith.addf %5, %7 : f64
                %c-1_13 = arith.constant -1 : index
                %9 = arith.addi %arg7, %c-1_13 : index
                %c1_14 = arith.constant 1 : index
                %10 = arith.addi %arg8, %c1_14 : index
                %11 = memref.load %arg2[%9, %10] : memref<?x40xf64>
                %12 = arith.addf %8, %11 : f64
                %c-1_15 = arith.constant -1 : index
                %13 = arith.addi %arg8, %c-1_15 : index
                %14 = memref.load %arg2[%arg7, %13] : memref<?x40xf64>
                %15 = arith.addf %12, %14 : f64
                %16 = memref.load %arg2[%arg7, %arg8] : memref<?x40xf64>
                %17 = arith.addf %15, %16 : f64
                %c1_16 = arith.constant 1 : index
                %18 = arith.addi %arg8, %c1_16 : index
                %19 = memref.load %arg2[%arg7, %18] : memref<?x40xf64>
                %20 = arith.addf %17, %19 : f64
                %c1_17 = arith.constant 1 : index
                %21 = arith.addi %arg7, %c1_17 : index
                %c-1_18 = arith.constant -1 : index
                %22 = arith.addi %arg8, %c-1_18 : index
                %23 = memref.load %arg2[%21, %22] : memref<?x40xf64>
                %24 = arith.addf %20, %23 : f64
                %c1_19 = arith.constant 1 : index
                %25 = arith.addi %arg7, %c1_19 : index
                %26 = memref.load %arg2[%25, %arg8] : memref<?x40xf64>
                %27 = arith.addf %24, %26 : f64
                %c1_20 = arith.constant 1 : index
                %28 = arith.addi %arg7, %c1_20 : index
                %c1_21 = arith.constant 1 : index
                %29 = arith.addi %arg8, %c1_21 : index
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

