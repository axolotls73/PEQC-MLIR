module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %8 = arith.muli %arg14, %c32 : index
          %9 = arith.muli %arg14, %c32 : index
          %10 = arith.addi %9, %c32 : index
          %11 = arith.minsi %10, %c40 : index
          scf.for %arg15 = %8 to %11 step %c1 {
            %12 = arith.muli %arg12, %c32 : index
            %13 = arith.muli %arg12, %c32 : index
            %14 = arith.addi %13, %c32 : index
            %15 = arith.minsi %14, %c40 : index
            scf.for %arg16 = %12 to %15 step %c1 {
              %16 = memref.load %arg3[%arg15, %arg16] : memref<?x40xf64>
              %17 = memref.load %arg4[%arg15] : memref<?xf64>
              %18 = memref.load %arg5[%arg16] : memref<?xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = arith.addf %16, %19 : f64
              %21 = memref.load %arg6[%arg15] : memref<?xf64>
              %22 = memref.load %arg7[%arg16] : memref<?xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = arith.addf %20, %23 : f64
              memref.store %24, %arg3[%arg15, %arg16] : memref<?x40xf64>
              %25 = memref.load %arg9[%arg16] : memref<?xf64>
              %26 = memref.load %arg3[%arg15, %arg16] : memref<?x40xf64>
              %27 = arith.mulf %arg2, %26 : f64
              %28 = memref.load %arg10[%arg15] : memref<?xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = arith.addf %25, %29 : f64
              memref.store %30, %arg9[%arg16] : memref<?xf64>
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
    %2 = async.create_group %c2 : !async.group
    %3 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %8 = arith.muli %arg12, %c32 : index
        %9 = arith.muli %arg12, %c32 : index
        %10 = arith.addi %9, %c32 : index
        %11 = arith.minsi %10, %c40 : index
        scf.for %arg14 = %8 to %11 step %c1 {
          %12 = memref.load %arg9[%arg14] : memref<?xf64>
          %13 = memref.load %arg11[%arg14] : memref<?xf64>
          %14 = arith.addf %12, %13 : f64
          memref.store %14, %arg9[%arg14] : memref<?xf64>
        }
        async.yield
      }
      %6 = async.add_to_group %token, %2 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %2
    %4 = async.create_group %c2 : !async.group
    %5 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %8 = arith.muli %arg12, %c32 : index
          %9 = arith.muli %arg12, %c32 : index
          %10 = arith.addi %9, %c32 : index
          %11 = arith.minsi %10, %c40 : index
          scf.for %arg15 = %8 to %11 step %c1 {
            %12 = arith.muli %arg14, %c32 : index
            %13 = arith.muli %arg14, %c32 : index
            %14 = arith.addi %13, %c32 : index
            %15 = arith.minsi %14, %c40 : index
            scf.for %arg16 = %12 to %15 step %c1 {
              %16 = memref.load %arg8[%arg15] : memref<?xf64>
              %17 = memref.load %arg3[%arg15, %arg16] : memref<?x40xf64>
              %18 = arith.mulf %arg1, %17 : f64
              %19 = memref.load %arg9[%arg16] : memref<?xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = arith.addf %16, %20 : f64
              memref.store %21, %arg8[%arg15] : memref<?xf64>
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

