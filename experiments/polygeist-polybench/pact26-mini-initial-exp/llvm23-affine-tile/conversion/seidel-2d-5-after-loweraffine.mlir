module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg3 = %c0 to %c20 step %c32 {
      %c1 = arith.constant 1 : index
      %c39 = arith.constant 39 : index
      %c32_0 = arith.constant 32 : index
      scf.for %arg4 = %c1 to %c39 step %c32_0 {
        %c1_1 = arith.constant 1 : index
        %c39_2 = arith.constant 39 : index
        %c32_3 = arith.constant 32 : index
        scf.for %arg5 = %c1_1 to %c39_2 step %c32_3 {
          %c20_4 = arith.constant 20 : index
          %0 = arith.addi %arg3, %c20_4 : index
          %c1_5 = arith.constant 1 : index
          scf.for %arg6 = %arg3 to %0 step %c1_5 {
            %c32_6 = arith.constant 32 : index
            %1 = arith.addi %arg4, %c32_6 : index
            %c39_7 = arith.constant 39 : index
            %2 = arith.minsi %1, %c39_7 : index
            %c1_8 = arith.constant 1 : index
            scf.for %arg7 = %arg4 to %2 step %c1_8 {
              %c32_9 = arith.constant 32 : index
              %3 = arith.addi %arg5, %c32_9 : index
              %c39_10 = arith.constant 39 : index
              %4 = arith.minsi %3, %c39_10 : index
              %c1_11 = arith.constant 1 : index
              scf.for %arg8 = %arg5 to %4 step %c1_11 {
                %c-1 = arith.constant -1 : index
                %5 = arith.addi %arg7, %c-1 : index
                %c-1_12 = arith.constant -1 : index
                %6 = arith.addi %arg8, %c-1_12 : index
                %7 = memref.load %arg2[%5, %6] : memref<?x40xf64>
                %c-1_13 = arith.constant -1 : index
                %8 = arith.addi %arg7, %c-1_13 : index
                %9 = memref.load %arg2[%8, %arg8] : memref<?x40xf64>
                %10 = arith.addf %7, %9 : f64
                %c-1_14 = arith.constant -1 : index
                %11 = arith.addi %arg7, %c-1_14 : index
                %c1_15 = arith.constant 1 : index
                %12 = arith.addi %arg8, %c1_15 : index
                %13 = memref.load %arg2[%11, %12] : memref<?x40xf64>
                %14 = arith.addf %10, %13 : f64
                %c-1_16 = arith.constant -1 : index
                %15 = arith.addi %arg8, %c-1_16 : index
                %16 = memref.load %arg2[%arg7, %15] : memref<?x40xf64>
                %17 = arith.addf %14, %16 : f64
                %18 = memref.load %arg2[%arg7, %arg8] : memref<?x40xf64>
                %19 = arith.addf %17, %18 : f64
                %c1_17 = arith.constant 1 : index
                %20 = arith.addi %arg8, %c1_17 : index
                %21 = memref.load %arg2[%arg7, %20] : memref<?x40xf64>
                %22 = arith.addf %19, %21 : f64
                %c1_18 = arith.constant 1 : index
                %23 = arith.addi %arg7, %c1_18 : index
                %c-1_19 = arith.constant -1 : index
                %24 = arith.addi %arg8, %c-1_19 : index
                %25 = memref.load %arg2[%23, %24] : memref<?x40xf64>
                %26 = arith.addf %22, %25 : f64
                %c1_20 = arith.constant 1 : index
                %27 = arith.addi %arg7, %c1_20 : index
                %28 = memref.load %arg2[%27, %arg8] : memref<?x40xf64>
                %29 = arith.addf %26, %28 : f64
                %c1_21 = arith.constant 1 : index
                %30 = arith.addi %arg7, %c1_21 : index
                %c1_22 = arith.constant 1 : index
                %31 = arith.addi %arg8, %c1_22 : index
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

