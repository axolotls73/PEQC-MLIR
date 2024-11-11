module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c24 = arith.constant 24 : index
    %c20 = arith.constant 20 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg11 = %c0 to %c16 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg13 = %c0 to %c18 step %c1 {
          scf.for %arg14 = %c0 to %c1 step %c1 {
            %6 = arith.addi %arg11, %arg14 : index
            scf.for %arg15 = %c0 to %c1 step %c1 {
              %7 = arith.addi %arg13, %arg15 : index
              memref.store %cst, %arg6[%6, %7] : memref<?x18xf64>
              scf.for %arg16 = %c0 to %c5 step %c1 {
                %8 = arith.muli %arg16, %c4 : index
                %9 = memref.load %arg7[%6, %8] : memref<?x22xf64>
                %10 = arith.mulf %arg4, %9 : f64
                %11 = memref.load %arg8[%8, %7] : memref<?x18xf64>
                %12 = arith.mulf %10, %11 : f64
                %13 = memref.load %arg6[%6, %7] : memref<?x18xf64>
                %14 = arith.addf %13, %12 : f64
                memref.store %14, %arg6[%6, %7] : memref<?x18xf64>
                %15 = arith.addi %8, %c1 : index
                %16 = memref.load %arg7[%6, %15] : memref<?x22xf64>
                %17 = arith.mulf %arg4, %16 : f64
                %18 = memref.load %arg8[%15, %7] : memref<?x18xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = memref.load %arg6[%6, %7] : memref<?x18xf64>
                %21 = arith.addf %20, %19 : f64
                memref.store %21, %arg6[%6, %7] : memref<?x18xf64>
                %22 = arith.addi %8, %c2 : index
                %23 = memref.load %arg7[%6, %22] : memref<?x22xf64>
                %24 = arith.mulf %arg4, %23 : f64
                %25 = memref.load %arg8[%22, %7] : memref<?x18xf64>
                %26 = arith.mulf %24, %25 : f64
                %27 = memref.load %arg6[%6, %7] : memref<?x18xf64>
                %28 = arith.addf %27, %26 : f64
                memref.store %28, %arg6[%6, %7] : memref<?x18xf64>
                %29 = arith.addi %8, %c3 : index
                %30 = memref.load %arg7[%6, %29] : memref<?x22xf64>
                %31 = arith.mulf %arg4, %30 : f64
                %32 = memref.load %arg8[%29, %7] : memref<?x18xf64>
                %33 = arith.mulf %31, %32 : f64
                %34 = memref.load %arg6[%6, %7] : memref<?x18xf64>
                %35 = arith.addf %34, %33 : f64
                memref.store %35, %arg6[%6, %7] : memref<?x18xf64>
              }
              scf.for %arg16 = %c0 to %c2 step %c1 {
                %8 = arith.addi %arg16, %c20 : index
                %9 = memref.load %arg7[%6, %8] : memref<?x22xf64>
                %10 = arith.mulf %arg4, %9 : f64
                %11 = memref.load %arg8[%8, %7] : memref<?x18xf64>
                %12 = arith.mulf %10, %11 : f64
                %13 = memref.load %arg6[%6, %7] : memref<?x18xf64>
                %14 = arith.addf %13, %12 : f64
                memref.store %14, %arg6[%6, %7] : memref<?x18xf64>
              }
            }
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg12, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c16 : !async.group
    %3 = scf.for %arg11 = %c0 to %c16 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg13 = %c0 to %c24 step %c1 {
          scf.for %arg14 = %c0 to %c1 step %c1 {
            %6 = arith.addi %arg11, %arg14 : index
            scf.for %arg15 = %c0 to %c1 step %c1 {
              %7 = arith.addi %arg13, %arg15 : index
              %8 = memref.load %arg10[%6, %7] : memref<?x24xf64>
              %9 = arith.mulf %8, %arg5 : f64
              memref.store %9, %arg10[%6, %7] : memref<?x24xf64>
              scf.for %arg16 = %c0 to %c4 step %c1 {
                %10 = arith.muli %arg16, %c4 : index
                %11 = memref.load %arg6[%6, %10] : memref<?x18xf64>
                %12 = memref.load %arg9[%10, %7] : memref<?x24xf64>
                %13 = arith.mulf %11, %12 : f64
                %14 = memref.load %arg10[%6, %7] : memref<?x24xf64>
                %15 = arith.addf %14, %13 : f64
                memref.store %15, %arg10[%6, %7] : memref<?x24xf64>
                %16 = arith.addi %10, %c1 : index
                %17 = memref.load %arg6[%6, %16] : memref<?x18xf64>
                %18 = memref.load %arg9[%16, %7] : memref<?x24xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = memref.load %arg10[%6, %7] : memref<?x24xf64>
                %21 = arith.addf %20, %19 : f64
                memref.store %21, %arg10[%6, %7] : memref<?x24xf64>
                %22 = arith.addi %10, %c2 : index
                %23 = memref.load %arg6[%6, %22] : memref<?x18xf64>
                %24 = memref.load %arg9[%22, %7] : memref<?x24xf64>
                %25 = arith.mulf %23, %24 : f64
                %26 = memref.load %arg10[%6, %7] : memref<?x24xf64>
                %27 = arith.addf %26, %25 : f64
                memref.store %27, %arg10[%6, %7] : memref<?x24xf64>
                %28 = arith.addi %10, %c3 : index
                %29 = memref.load %arg6[%6, %28] : memref<?x18xf64>
                %30 = memref.load %arg9[%28, %7] : memref<?x24xf64>
                %31 = arith.mulf %29, %30 : f64
                %32 = memref.load %arg10[%6, %7] : memref<?x24xf64>
                %33 = arith.addf %32, %31 : f64
                memref.store %33, %arg10[%6, %7] : memref<?x24xf64>
              }
              scf.for %arg16 = %c0 to %c2 step %c1 {
                %10 = arith.addi %arg16, %c16 : index
                %11 = memref.load %arg6[%6, %10] : memref<?x18xf64>
                %12 = memref.load %arg9[%10, %7] : memref<?x24xf64>
                %13 = arith.mulf %11, %12 : f64
                %14 = memref.load %arg10[%6, %7] : memref<?x24xf64>
                %15 = arith.addf %14, %13 : f64
                memref.store %15, %arg10[%6, %7] : memref<?x24xf64>
              }
            }
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg12, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

