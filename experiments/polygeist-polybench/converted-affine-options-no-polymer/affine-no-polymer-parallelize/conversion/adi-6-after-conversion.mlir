module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %c18 = arith.constant 18 : index
    %c20 = arith.constant 20 : index
    %c-1 = arith.constant -1 : index
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %cst = arith.constant 9.9999999999999982 : f64
    %cst_0 = arith.constant -18.999999999999996 : f64
    %cst_1 = arith.constant -38.999999999999993 : f64
    %cst_2 = arith.constant -9.9999999999999982 : f64
    %cst_3 = arith.constant -19.999999999999996 : f64
    %cst_4 = arith.constant 20.999999999999996 : f64
    %cst_5 = arith.constant 40.999999999999993 : f64
    %cst_6 = arith.constant 19.999999999999996 : f64
    %cst_7 = arith.constant 0.000000e+00 : f64
    %cst_8 = arith.constant 1.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c21 = arith.constant 21 : index
    scf.for %arg6 = %c1 to %c21 step %c1 {
      %0 = async.create_group %c18 : !async.group
      %1 = scf.for %arg7 = %c1 to %c19 step %c1 iter_args(%arg8 = %c0) -> (index) {
        %token = async.execute {
          memref.store %cst_8, %arg3[%c0, %arg7] : memref<?x20xf64>
          memref.store %cst_7, %arg4[%arg7, %c0] : memref<?x20xf64>
          %6 = memref.load %arg3[%c0, %arg7] : memref<?x20xf64>
          memref.store %6, %arg5[%arg7, %c0] : memref<?x20xf64>
          scf.for %arg9 = %c1 to %c19 step %c1 {
            %7 = arith.addi %arg9, %c-1 : index
            %8 = memref.load %arg4[%arg7, %7] : memref<?x20xf64>
            %9 = arith.mulf %8, %cst_3 : f64
            %10 = arith.addf %9, %cst_5 : f64
            %11 = arith.divf %cst_6, %10 : f64
            memref.store %11, %arg4[%arg7, %arg9] : memref<?x20xf64>
            %12 = arith.addi %arg7, %c-1 : index
            %13 = memref.load %arg2[%arg9, %12] : memref<?x20xf64>
            %14 = arith.mulf %13, %cst : f64
            %15 = memref.load %arg2[%arg9, %arg7] : memref<?x20xf64>
            %16 = arith.mulf %15, %cst_0 : f64
            %17 = arith.addf %14, %16 : f64
            %18 = arith.addi %arg7, %c1 : index
            %19 = memref.load %arg2[%arg9, %18] : memref<?x20xf64>
            %20 = arith.mulf %19, %cst_2 : f64
            %21 = arith.subf %17, %20 : f64
            %22 = arith.addi %arg9, %c-1 : index
            %23 = memref.load %arg5[%arg7, %22] : memref<?x20xf64>
            %24 = arith.mulf %23, %cst_3 : f64
            %25 = arith.subf %21, %24 : f64
            %26 = arith.divf %25, %10 : f64
            memref.store %26, %arg5[%arg7, %arg9] : memref<?x20xf64>
          }
          memref.store %cst_8, %arg3[%c19, %arg7] : memref<?x20xf64>
          scf.for %arg9 = %c1 to %c19 step %c1 {
            %7 = arith.muli %arg9, %c-1 : index
            %8 = arith.addi %7, %c19 : index
            %9 = memref.load %arg4[%arg7, %8] : memref<?x20xf64>
            %10 = arith.muli %arg9, %c-1 : index
            %11 = arith.addi %10, %c20 : index
            %12 = memref.load %arg3[%11, %arg7] : memref<?x20xf64>
            %13 = arith.mulf %9, %12 : f64
            %14 = arith.muli %arg9, %c-1 : index
            %15 = arith.addi %14, %c19 : index
            %16 = memref.load %arg5[%arg7, %15] : memref<?x20xf64>
            %17 = arith.addf %13, %16 : f64
            %18 = arith.muli %arg9, %c-1 : index
            %19 = arith.addi %18, %c19 : index
            memref.store %17, %arg3[%19, %arg7] : memref<?x20xf64>
          }
          async.yield
        }
        %4 = async.add_to_group %token, %0 : !async.token
        %5 = arith.addi %arg8, %c1 : index
        scf.yield %5 : index
      }
      async.await_all %0
      %2 = async.create_group %c18 : !async.group
      %3 = scf.for %arg7 = %c1 to %c19 step %c1 iter_args(%arg8 = %c0) -> (index) {
        %token = async.execute {
          memref.store %cst_8, %arg2[%arg7, %c0] : memref<?x20xf64>
          memref.store %cst_7, %arg4[%arg7, %c0] : memref<?x20xf64>
          %6 = memref.load %arg2[%arg7, %c0] : memref<?x20xf64>
          memref.store %6, %arg5[%arg7, %c0] : memref<?x20xf64>
          scf.for %arg9 = %c1 to %c19 step %c1 {
            %7 = arith.addi %arg9, %c-1 : index
            %8 = memref.load %arg4[%arg7, %7] : memref<?x20xf64>
            %9 = arith.mulf %8, %cst_2 : f64
            %10 = arith.addf %9, %cst_4 : f64
            %11 = arith.divf %cst, %10 : f64
            memref.store %11, %arg4[%arg7, %arg9] : memref<?x20xf64>
            %12 = arith.addi %arg7, %c-1 : index
            %13 = memref.load %arg3[%12, %arg9] : memref<?x20xf64>
            %14 = arith.mulf %13, %cst_6 : f64
            %15 = memref.load %arg3[%arg7, %arg9] : memref<?x20xf64>
            %16 = arith.mulf %15, %cst_1 : f64
            %17 = arith.addf %14, %16 : f64
            %18 = arith.addi %arg7, %c1 : index
            %19 = memref.load %arg3[%18, %arg9] : memref<?x20xf64>
            %20 = arith.mulf %19, %cst_3 : f64
            %21 = arith.subf %17, %20 : f64
            %22 = arith.addi %arg9, %c-1 : index
            %23 = memref.load %arg5[%arg7, %22] : memref<?x20xf64>
            %24 = arith.mulf %23, %cst_2 : f64
            %25 = arith.subf %21, %24 : f64
            %26 = arith.divf %25, %10 : f64
            memref.store %26, %arg5[%arg7, %arg9] : memref<?x20xf64>
          }
          memref.store %cst_8, %arg2[%arg7, %c19] : memref<?x20xf64>
          scf.for %arg9 = %c1 to %c19 step %c1 {
            %7 = arith.muli %arg9, %c-1 : index
            %8 = arith.addi %7, %c19 : index
            %9 = memref.load %arg4[%arg7, %8] : memref<?x20xf64>
            %10 = arith.muli %arg9, %c-1 : index
            %11 = arith.addi %10, %c20 : index
            %12 = memref.load %arg2[%arg7, %11] : memref<?x20xf64>
            %13 = arith.mulf %9, %12 : f64
            %14 = arith.muli %arg9, %c-1 : index
            %15 = arith.addi %14, %c19 : index
            %16 = memref.load %arg5[%arg7, %15] : memref<?x20xf64>
            %17 = arith.addf %13, %16 : f64
            %18 = arith.muli %arg9, %c-1 : index
            %19 = arith.addi %18, %c19 : index
            memref.store %17, %arg2[%arg7, %19] : memref<?x20xf64>
          }
          async.yield
        }
        %4 = async.add_to_group %token, %2 : !async.token
        %5 = arith.addi %arg8, %c1 : index
        scf.yield %5 : index
      }
      async.await_all %2
    }
    return
  }
}

