module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c6 = arith.constant 6 : index
    %c22 = arith.constant 22 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c18 = arith.constant 18 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %8 = arith.muli %arg12, %c32 : index
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %9 = arith.muli %arg14, %c32 : index
          scf.for %arg15 = %c0 to %c16 step %c1 {
            %10 = arith.addi %8, %arg15 : index
            scf.for %arg16 = %c0 to %c18 step %c1 {
              %11 = arith.addi %9, %arg16 : index
              memref.store %cst, %arg5[%10, %11] : memref<?x18xf64>
              scf.for %arg17 = %c0 to %c5 step %c1 {
                %12 = arith.muli %arg17, %c4 : index
                %13 = memref.load %arg6[%10, %12] : memref<?x20xf64>
                %14 = memref.load %arg7[%12, %11] : memref<?x18xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = memref.load %arg5[%10, %11] : memref<?x18xf64>
                %17 = arith.addf %16, %15 : f64
                memref.store %17, %arg5[%10, %11] : memref<?x18xf64>
                %18 = arith.addi %12, %c1 : index
                %19 = memref.load %arg6[%10, %18] : memref<?x20xf64>
                %20 = memref.load %arg7[%18, %11] : memref<?x18xf64>
                %21 = arith.mulf %19, %20 : f64
                %22 = memref.load %arg5[%10, %11] : memref<?x18xf64>
                %23 = arith.addf %22, %21 : f64
                memref.store %23, %arg5[%10, %11] : memref<?x18xf64>
                %24 = arith.addi %12, %c2 : index
                %25 = memref.load %arg6[%10, %24] : memref<?x20xf64>
                %26 = memref.load %arg7[%24, %11] : memref<?x18xf64>
                %27 = arith.mulf %25, %26 : f64
                %28 = memref.load %arg5[%10, %11] : memref<?x18xf64>
                %29 = arith.addf %28, %27 : f64
                memref.store %29, %arg5[%10, %11] : memref<?x18xf64>
                %30 = arith.addi %12, %c3 : index
                %31 = memref.load %arg6[%10, %30] : memref<?x20xf64>
                %32 = memref.load %arg7[%30, %11] : memref<?x18xf64>
                %33 = arith.mulf %31, %32 : f64
                %34 = memref.load %arg5[%10, %11] : memref<?x18xf64>
                %35 = arith.addf %34, %33 : f64
                memref.store %35, %arg5[%10, %11] : memref<?x18xf64>
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
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %8 = arith.muli %arg12, %c32 : index
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %9 = arith.muli %arg14, %c32 : index
          scf.for %arg15 = %c0 to %c18 step %c1 {
            %10 = arith.addi %8, %arg15 : index
            scf.for %arg16 = %c0 to %c22 step %c1 {
              %11 = arith.addi %9, %arg16 : index
              memref.store %cst, %arg8[%10, %11] : memref<?x22xf64>
              scf.for %arg17 = %c0 to %c6 step %c1 {
                %12 = arith.muli %arg17, %c4 : index
                %13 = memref.load %arg9[%10, %12] : memref<?x24xf64>
                %14 = memref.load %arg10[%12, %11] : memref<?x22xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = memref.load %arg8[%10, %11] : memref<?x22xf64>
                %17 = arith.addf %16, %15 : f64
                memref.store %17, %arg8[%10, %11] : memref<?x22xf64>
                %18 = arith.addi %12, %c1 : index
                %19 = memref.load %arg9[%10, %18] : memref<?x24xf64>
                %20 = memref.load %arg10[%18, %11] : memref<?x22xf64>
                %21 = arith.mulf %19, %20 : f64
                %22 = memref.load %arg8[%10, %11] : memref<?x22xf64>
                %23 = arith.addf %22, %21 : f64
                memref.store %23, %arg8[%10, %11] : memref<?x22xf64>
                %24 = arith.addi %12, %c2 : index
                %25 = memref.load %arg9[%10, %24] : memref<?x24xf64>
                %26 = memref.load %arg10[%24, %11] : memref<?x22xf64>
                %27 = arith.mulf %25, %26 : f64
                %28 = memref.load %arg8[%10, %11] : memref<?x22xf64>
                %29 = arith.addf %28, %27 : f64
                memref.store %29, %arg8[%10, %11] : memref<?x22xf64>
                %30 = arith.addi %12, %c3 : index
                %31 = memref.load %arg9[%10, %30] : memref<?x24xf64>
                %32 = memref.load %arg10[%30, %11] : memref<?x22xf64>
                %33 = arith.mulf %31, %32 : f64
                %34 = memref.load %arg8[%10, %11] : memref<?x22xf64>
                %35 = arith.addf %34, %33 : f64
                memref.store %35, %arg8[%10, %11] : memref<?x22xf64>
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
    %4 = async.create_group %c1 : !async.group
    %5 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %8 = arith.muli %arg12, %c32 : index
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %9 = arith.muli %arg14, %c32 : index
          scf.for %arg15 = %c0 to %c16 step %c1 {
            %10 = arith.addi %8, %arg15 : index
            scf.for %arg16 = %c0 to %c22 step %c1 {
              %11 = arith.addi %9, %arg16 : index
              memref.store %cst, %arg11[%10, %11] : memref<?x22xf64>
              scf.for %arg17 = %c0 to %c4 step %c1 {
                %12 = arith.muli %arg17, %c4 : index
                %13 = memref.load %arg5[%10, %12] : memref<?x18xf64>
                %14 = memref.load %arg8[%12, %11] : memref<?x22xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = memref.load %arg11[%10, %11] : memref<?x22xf64>
                %17 = arith.addf %16, %15 : f64
                memref.store %17, %arg11[%10, %11] : memref<?x22xf64>
                %18 = arith.addi %12, %c1 : index
                %19 = memref.load %arg5[%10, %18] : memref<?x18xf64>
                %20 = memref.load %arg8[%18, %11] : memref<?x22xf64>
                %21 = arith.mulf %19, %20 : f64
                %22 = memref.load %arg11[%10, %11] : memref<?x22xf64>
                %23 = arith.addf %22, %21 : f64
                memref.store %23, %arg11[%10, %11] : memref<?x22xf64>
                %24 = arith.addi %12, %c2 : index
                %25 = memref.load %arg5[%10, %24] : memref<?x18xf64>
                %26 = memref.load %arg8[%24, %11] : memref<?x22xf64>
                %27 = arith.mulf %25, %26 : f64
                %28 = memref.load %arg11[%10, %11] : memref<?x22xf64>
                %29 = arith.addf %28, %27 : f64
                memref.store %29, %arg11[%10, %11] : memref<?x22xf64>
                %30 = arith.addi %12, %c3 : index
                %31 = memref.load %arg5[%10, %30] : memref<?x18xf64>
                %32 = memref.load %arg8[%30, %11] : memref<?x22xf64>
                %33 = arith.mulf %31, %32 : f64
                %34 = memref.load %arg11[%10, %11] : memref<?x22xf64>
                %35 = arith.addf %34, %33 : f64
                memref.store %35, %arg11[%10, %11] : memref<?x22xf64>
              }
              scf.for %arg17 = %c0 to %c2 step %c1 {
                %12 = arith.addi %arg17, %c16 : index
                %13 = memref.load %arg5[%10, %12] : memref<?x18xf64>
                %14 = memref.load %arg8[%12, %11] : memref<?x22xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = memref.load %arg11[%10, %11] : memref<?x22xf64>
                %17 = arith.addf %16, %15 : f64
                memref.store %17, %arg11[%10, %11] : memref<?x22xf64>
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

