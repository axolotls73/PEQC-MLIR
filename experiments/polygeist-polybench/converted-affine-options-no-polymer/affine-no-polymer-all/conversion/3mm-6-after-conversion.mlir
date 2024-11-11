module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c6 = arith.constant 6 : index
    %c22 = arith.constant 22 : index
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
    %1 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c18 step %c1 {
          scf.for %arg15 = %c0 to %c1 step %c1 {
            %8 = arith.addi %arg12, %arg15 : index
            scf.for %arg16 = %c0 to %c1 step %c1 {
              %9 = arith.addi %arg14, %arg16 : index
              memref.store %cst, %arg5[%8, %9] : memref<?x18xf64>
              scf.for %arg17 = %c0 to %c5 step %c1 {
                %10 = arith.muli %arg17, %c4 : index
                %11 = memref.load %arg6[%8, %10] : memref<?x20xf64>
                %12 = memref.load %arg7[%10, %9] : memref<?x18xf64>
                %13 = arith.mulf %11, %12 : f64
                %14 = memref.load %arg5[%8, %9] : memref<?x18xf64>
                %15 = arith.addf %14, %13 : f64
                memref.store %15, %arg5[%8, %9] : memref<?x18xf64>
                %16 = arith.addi %10, %c1 : index
                %17 = memref.load %arg6[%8, %16] : memref<?x20xf64>
                %18 = memref.load %arg7[%16, %9] : memref<?x18xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = memref.load %arg5[%8, %9] : memref<?x18xf64>
                %21 = arith.addf %20, %19 : f64
                memref.store %21, %arg5[%8, %9] : memref<?x18xf64>
                %22 = arith.addi %10, %c2 : index
                %23 = memref.load %arg6[%8, %22] : memref<?x20xf64>
                %24 = memref.load %arg7[%22, %9] : memref<?x18xf64>
                %25 = arith.mulf %23, %24 : f64
                %26 = memref.load %arg5[%8, %9] : memref<?x18xf64>
                %27 = arith.addf %26, %25 : f64
                memref.store %27, %arg5[%8, %9] : memref<?x18xf64>
                %28 = arith.addi %10, %c3 : index
                %29 = memref.load %arg6[%8, %28] : memref<?x20xf64>
                %30 = memref.load %arg7[%28, %9] : memref<?x18xf64>
                %31 = arith.mulf %29, %30 : f64
                %32 = memref.load %arg5[%8, %9] : memref<?x18xf64>
                %33 = arith.addf %32, %31 : f64
                memref.store %33, %arg5[%8, %9] : memref<?x18xf64>
              }
            }
          }
        }
        async.yield
      }
      %6 = async.add_to_group %token, %0 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %0
    %2 = async.create_group %c18 : !async.group
    %3 = scf.for %arg12 = %c0 to %c18 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c22 step %c1 {
          scf.for %arg15 = %c0 to %c1 step %c1 {
            %8 = arith.addi %arg12, %arg15 : index
            scf.for %arg16 = %c0 to %c1 step %c1 {
              %9 = arith.addi %arg14, %arg16 : index
              memref.store %cst, %arg8[%8, %9] : memref<?x22xf64>
              scf.for %arg17 = %c0 to %c6 step %c1 {
                %10 = arith.muli %arg17, %c4 : index
                %11 = memref.load %arg9[%8, %10] : memref<?x24xf64>
                %12 = memref.load %arg10[%10, %9] : memref<?x22xf64>
                %13 = arith.mulf %11, %12 : f64
                %14 = memref.load %arg8[%8, %9] : memref<?x22xf64>
                %15 = arith.addf %14, %13 : f64
                memref.store %15, %arg8[%8, %9] : memref<?x22xf64>
                %16 = arith.addi %10, %c1 : index
                %17 = memref.load %arg9[%8, %16] : memref<?x24xf64>
                %18 = memref.load %arg10[%16, %9] : memref<?x22xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = memref.load %arg8[%8, %9] : memref<?x22xf64>
                %21 = arith.addf %20, %19 : f64
                memref.store %21, %arg8[%8, %9] : memref<?x22xf64>
                %22 = arith.addi %10, %c2 : index
                %23 = memref.load %arg9[%8, %22] : memref<?x24xf64>
                %24 = memref.load %arg10[%22, %9] : memref<?x22xf64>
                %25 = arith.mulf %23, %24 : f64
                %26 = memref.load %arg8[%8, %9] : memref<?x22xf64>
                %27 = arith.addf %26, %25 : f64
                memref.store %27, %arg8[%8, %9] : memref<?x22xf64>
                %28 = arith.addi %10, %c3 : index
                %29 = memref.load %arg9[%8, %28] : memref<?x24xf64>
                %30 = memref.load %arg10[%28, %9] : memref<?x22xf64>
                %31 = arith.mulf %29, %30 : f64
                %32 = memref.load %arg8[%8, %9] : memref<?x22xf64>
                %33 = arith.addf %32, %31 : f64
                memref.store %33, %arg8[%8, %9] : memref<?x22xf64>
              }
            }
          }
        }
        async.yield
      }
      %6 = async.add_to_group %token, %2 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %2
    %4 = async.create_group %c16 : !async.group
    %5 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c22 step %c1 {
          scf.for %arg15 = %c0 to %c1 step %c1 {
            %8 = arith.addi %arg12, %arg15 : index
            scf.for %arg16 = %c0 to %c1 step %c1 {
              %9 = arith.addi %arg14, %arg16 : index
              memref.store %cst, %arg11[%8, %9] : memref<?x22xf64>
              scf.for %arg17 = %c0 to %c4 step %c1 {
                %10 = arith.muli %arg17, %c4 : index
                %11 = memref.load %arg5[%8, %10] : memref<?x18xf64>
                %12 = memref.load %arg8[%10, %9] : memref<?x22xf64>
                %13 = arith.mulf %11, %12 : f64
                %14 = memref.load %arg11[%8, %9] : memref<?x22xf64>
                %15 = arith.addf %14, %13 : f64
                memref.store %15, %arg11[%8, %9] : memref<?x22xf64>
                %16 = arith.addi %10, %c1 : index
                %17 = memref.load %arg5[%8, %16] : memref<?x18xf64>
                %18 = memref.load %arg8[%16, %9] : memref<?x22xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = memref.load %arg11[%8, %9] : memref<?x22xf64>
                %21 = arith.addf %20, %19 : f64
                memref.store %21, %arg11[%8, %9] : memref<?x22xf64>
                %22 = arith.addi %10, %c2 : index
                %23 = memref.load %arg5[%8, %22] : memref<?x18xf64>
                %24 = memref.load %arg8[%22, %9] : memref<?x22xf64>
                %25 = arith.mulf %23, %24 : f64
                %26 = memref.load %arg11[%8, %9] : memref<?x22xf64>
                %27 = arith.addf %26, %25 : f64
                memref.store %27, %arg11[%8, %9] : memref<?x22xf64>
                %28 = arith.addi %10, %c3 : index
                %29 = memref.load %arg5[%8, %28] : memref<?x18xf64>
                %30 = memref.load %arg8[%28, %9] : memref<?x22xf64>
                %31 = arith.mulf %29, %30 : f64
                %32 = memref.load %arg11[%8, %9] : memref<?x22xf64>
                %33 = arith.addf %32, %31 : f64
                memref.store %33, %arg11[%8, %9] : memref<?x22xf64>
              }
              scf.for %arg17 = %c0 to %c2 step %c1 {
                %10 = arith.addi %arg17, %c16 : index
                %11 = memref.load %arg5[%8, %10] : memref<?x18xf64>
                %12 = memref.load %arg8[%10, %9] : memref<?x22xf64>
                %13 = arith.mulf %11, %12 : f64
                %14 = memref.load %arg11[%8, %9] : memref<?x22xf64>
                %15 = arith.addf %14, %13 : f64
                memref.store %15, %arg11[%8, %9] : memref<?x22xf64>
              }
            }
          }
        }
        async.yield
      }
      %6 = async.add_to_group %token, %4 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %4
    return
  }
}

