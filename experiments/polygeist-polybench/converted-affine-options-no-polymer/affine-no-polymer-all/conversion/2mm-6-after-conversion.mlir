module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c24 = arith.constant 24 : index
    %c20 = arith.constant 20 : index
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
    %1 = scf.for %arg11 = %c0 to %c1 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg11, %c32 : index
        scf.for %arg13 = %c0 to %c1 step %c1 {
          %7 = arith.muli %arg13, %c32 : index
          scf.for %arg14 = %c0 to %c16 step %c1 {
            %8 = arith.addi %6, %arg14 : index
            scf.for %arg15 = %c0 to %c18 step %c1 {
              %9 = arith.addi %7, %arg15 : index
              memref.store %cst, %arg6[%8, %9] : memref<?x18xf64>
              scf.for %arg16 = %c0 to %c5 step %c1 {
                %10 = arith.muli %arg16, %c4 : index
                %11 = memref.load %arg7[%8, %10] : memref<?x22xf64>
                %12 = arith.mulf %arg4, %11 : f64
                %13 = memref.load %arg8[%10, %9] : memref<?x18xf64>
                %14 = arith.mulf %12, %13 : f64
                %15 = memref.load %arg6[%8, %9] : memref<?x18xf64>
                %16 = arith.addf %15, %14 : f64
                memref.store %16, %arg6[%8, %9] : memref<?x18xf64>
                %17 = arith.addi %10, %c1 : index
                %18 = memref.load %arg7[%8, %17] : memref<?x22xf64>
                %19 = arith.mulf %arg4, %18 : f64
                %20 = memref.load %arg8[%17, %9] : memref<?x18xf64>
                %21 = arith.mulf %19, %20 : f64
                %22 = memref.load %arg6[%8, %9] : memref<?x18xf64>
                %23 = arith.addf %22, %21 : f64
                memref.store %23, %arg6[%8, %9] : memref<?x18xf64>
                %24 = arith.addi %10, %c2 : index
                %25 = memref.load %arg7[%8, %24] : memref<?x22xf64>
                %26 = arith.mulf %arg4, %25 : f64
                %27 = memref.load %arg8[%24, %9] : memref<?x18xf64>
                %28 = arith.mulf %26, %27 : f64
                %29 = memref.load %arg6[%8, %9] : memref<?x18xf64>
                %30 = arith.addf %29, %28 : f64
                memref.store %30, %arg6[%8, %9] : memref<?x18xf64>
                %31 = arith.addi %10, %c3 : index
                %32 = memref.load %arg7[%8, %31] : memref<?x22xf64>
                %33 = arith.mulf %arg4, %32 : f64
                %34 = memref.load %arg8[%31, %9] : memref<?x18xf64>
                %35 = arith.mulf %33, %34 : f64
                %36 = memref.load %arg6[%8, %9] : memref<?x18xf64>
                %37 = arith.addf %36, %35 : f64
                memref.store %37, %arg6[%8, %9] : memref<?x18xf64>
              }
              scf.for %arg16 = %c0 to %c2 step %c1 {
                %10 = arith.addi %arg16, %c20 : index
                %11 = memref.load %arg7[%8, %10] : memref<?x22xf64>
                %12 = arith.mulf %arg4, %11 : f64
                %13 = memref.load %arg8[%10, %9] : memref<?x18xf64>
                %14 = arith.mulf %12, %13 : f64
                %15 = memref.load %arg6[%8, %9] : memref<?x18xf64>
                %16 = arith.addf %15, %14 : f64
                memref.store %16, %arg6[%8, %9] : memref<?x18xf64>
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
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg11 = %c0 to %c1 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg11, %c32 : index
        scf.for %arg13 = %c0 to %c1 step %c1 {
          %7 = arith.muli %arg13, %c32 : index
          scf.for %arg14 = %c0 to %c16 step %c1 {
            %8 = arith.addi %6, %arg14 : index
            scf.for %arg15 = %c0 to %c24 step %c1 {
              %9 = arith.addi %7, %arg15 : index
              %10 = memref.load %arg10[%8, %9] : memref<?x24xf64>
              %11 = arith.mulf %10, %arg5 : f64
              memref.store %11, %arg10[%8, %9] : memref<?x24xf64>
              scf.for %arg16 = %c0 to %c4 step %c1 {
                %12 = arith.muli %arg16, %c4 : index
                %13 = memref.load %arg6[%8, %12] : memref<?x18xf64>
                %14 = memref.load %arg9[%12, %9] : memref<?x24xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = memref.load %arg10[%8, %9] : memref<?x24xf64>
                %17 = arith.addf %16, %15 : f64
                memref.store %17, %arg10[%8, %9] : memref<?x24xf64>
                %18 = arith.addi %12, %c1 : index
                %19 = memref.load %arg6[%8, %18] : memref<?x18xf64>
                %20 = memref.load %arg9[%18, %9] : memref<?x24xf64>
                %21 = arith.mulf %19, %20 : f64
                %22 = memref.load %arg10[%8, %9] : memref<?x24xf64>
                %23 = arith.addf %22, %21 : f64
                memref.store %23, %arg10[%8, %9] : memref<?x24xf64>
                %24 = arith.addi %12, %c2 : index
                %25 = memref.load %arg6[%8, %24] : memref<?x18xf64>
                %26 = memref.load %arg9[%24, %9] : memref<?x24xf64>
                %27 = arith.mulf %25, %26 : f64
                %28 = memref.load %arg10[%8, %9] : memref<?x24xf64>
                %29 = arith.addf %28, %27 : f64
                memref.store %29, %arg10[%8, %9] : memref<?x24xf64>
                %30 = arith.addi %12, %c3 : index
                %31 = memref.load %arg6[%8, %30] : memref<?x18xf64>
                %32 = memref.load %arg9[%30, %9] : memref<?x24xf64>
                %33 = arith.mulf %31, %32 : f64
                %34 = memref.load %arg10[%8, %9] : memref<?x24xf64>
                %35 = arith.addf %34, %33 : f64
                memref.store %35, %arg10[%8, %9] : memref<?x24xf64>
              }
              scf.for %arg16 = %c0 to %c2 step %c1 {
                %12 = arith.addi %arg16, %c16 : index
                %13 = memref.load %arg6[%8, %12] : memref<?x18xf64>
                %14 = memref.load %arg9[%12, %9] : memref<?x24xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = memref.load %arg10[%8, %9] : memref<?x24xf64>
                %17 = arith.addf %16, %15 : f64
                memref.store %17, %arg10[%8, %9] : memref<?x24xf64>
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

