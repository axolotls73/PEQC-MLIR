module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg3 = %c0 to %c20 step %c32 {
      %c0_0 = arith.constant 0 : index
      %c38 = arith.constant 38 : index
      %c32_1 = arith.constant 32 : index
      scf.for %arg4 = %c0_0 to %c38 step %c32_1 {
        %c0_2 = arith.constant 0 : index
        %c38_3 = arith.constant 38 : index
        %c32_4 = arith.constant 32 : index
        scf.for %arg5 = %c0_2 to %c38_3 step %c32_4 {
          %c20_5 = arith.constant 20 : index
          %0 = arith.addi %arg3, %c20_5 : index
          %c1 = arith.constant 1 : index
          scf.for %arg6 = %arg3 to %0 step %c1 {
            %c32_6 = arith.constant 32 : index
            %1 = arith.addi %arg4, %c32_6 : index
            %c38_7 = arith.constant 38 : index
            %2 = arith.minsi %1, %c38_7 : index
            %c1_8 = arith.constant 1 : index
            scf.for %arg7 = %arg4 to %2 step %c1_8 {
              %c32_9 = arith.constant 32 : index
              %3 = arith.addi %arg5, %c32_9 : index
              %c38_10 = arith.constant 38 : index
              %4 = arith.minsi %3, %c38_10 : index
              %c1_11 = arith.constant 1 : index
              scf.for %arg8 = %arg5 to %4 step %c1_11 {
                %5 = memref.load %arg2[%arg7, %arg8] : memref<?x40xf64>
                %c1_12 = arith.constant 1 : index
                %6 = arith.addi %arg8, %c1_12 : index
                %7 = memref.load %arg2[%arg7, %6] : memref<?x40xf64>
                %8 = arith.addf %5, %7 : f64
                %c2 = arith.constant 2 : index
                %9 = arith.addi %arg8, %c2 : index
                %10 = memref.load %arg2[%arg7, %9] : memref<?x40xf64>
                %11 = arith.addf %8, %10 : f64
                %c1_13 = arith.constant 1 : index
                %12 = arith.addi %arg7, %c1_13 : index
                %13 = memref.load %arg2[%12, %arg8] : memref<?x40xf64>
                %14 = arith.addf %11, %13 : f64
                %c1_14 = arith.constant 1 : index
                %15 = arith.addi %arg7, %c1_14 : index
                %c1_15 = arith.constant 1 : index
                %16 = arith.addi %arg8, %c1_15 : index
                %17 = memref.load %arg2[%15, %16] : memref<?x40xf64>
                %18 = arith.addf %14, %17 : f64
                %c1_16 = arith.constant 1 : index
                %19 = arith.addi %arg7, %c1_16 : index
                %c2_17 = arith.constant 2 : index
                %20 = arith.addi %arg8, %c2_17 : index
                %21 = memref.load %arg2[%19, %20] : memref<?x40xf64>
                %22 = arith.addf %18, %21 : f64
                %c2_18 = arith.constant 2 : index
                %23 = arith.addi %arg7, %c2_18 : index
                %24 = memref.load %arg2[%23, %arg8] : memref<?x40xf64>
                %25 = arith.addf %22, %24 : f64
                %c2_19 = arith.constant 2 : index
                %26 = arith.addi %arg7, %c2_19 : index
                %c1_20 = arith.constant 1 : index
                %27 = arith.addi %arg8, %c1_20 : index
                %28 = memref.load %arg2[%26, %27] : memref<?x40xf64>
                %29 = arith.addf %25, %28 : f64
                %c2_21 = arith.constant 2 : index
                %30 = arith.addi %arg7, %c2_21 : index
                %c2_22 = arith.constant 2 : index
                %31 = arith.addi %arg8, %c2_22 : index
                %32 = memref.load %arg2[%30, %31] : memref<?x40xf64>
                %33 = arith.addf %29, %32 : f64
                %34 = arith.divf %33, %cst : f64
                %c1_23 = arith.constant 1 : index
                %35 = arith.addi %arg7, %c1_23 : index
                %c1_24 = arith.constant 1 : index
                %36 = arith.addi %arg8, %c1_24 : index
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

