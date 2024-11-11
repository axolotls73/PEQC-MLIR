module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c27 = arith.constant 27 : index
    %c7 = arith.constant 7 : index
    %c32 = arith.constant 32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c28 : !async.group
    %1 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %11 = arith.addi %arg7, %arg9 : index
          memref.store %cst_0, %arg5[%11] : memref<?xf64>
          scf.for %arg10 = %c0 to %c8 step %c1 {
            %14 = arith.muli %arg10, %c4 : index
            %15 = memref.load %arg3[%14, %11] : memref<?x28xf64>
            %16 = memref.load %arg5[%11] : memref<?xf64>
            %17 = arith.addf %16, %15 : f64
            memref.store %17, %arg5[%11] : memref<?xf64>
            %18 = arith.addi %14, %c1 : index
            %19 = memref.load %arg3[%18, %11] : memref<?x28xf64>
            %20 = memref.load %arg5[%11] : memref<?xf64>
            %21 = arith.addf %20, %19 : f64
            memref.store %21, %arg5[%11] : memref<?xf64>
            %22 = arith.addi %14, %c2 : index
            %23 = memref.load %arg3[%22, %11] : memref<?x28xf64>
            %24 = memref.load %arg5[%11] : memref<?xf64>
            %25 = arith.addf %24, %23 : f64
            memref.store %25, %arg5[%11] : memref<?xf64>
            %26 = arith.addi %14, %c3 : index
            %27 = memref.load %arg3[%26, %11] : memref<?x28xf64>
            %28 = memref.load %arg5[%11] : memref<?xf64>
            %29 = arith.addf %28, %27 : f64
            memref.store %29, %arg5[%11] : memref<?xf64>
          }
          %12 = memref.load %arg5[%11] : memref<?xf64>
          %13 = arith.divf %12, %arg2 : f64
          memref.store %13, %arg5[%11] : memref<?xf64>
        }
        async.yield
      }
      %9 = async.add_to_group %token, %0 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %0
    %2 = async.create_group %c28 : !async.group
    %3 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %11 = arith.addi %arg7, %arg9 : index
          memref.store %cst_0, %arg6[%11] : memref<?xf64>
          %12 = memref.load %arg5[%11] : memref<?xf64>
          %13 = memref.load %arg5[%11] : memref<?xf64>
          %14 = memref.load %arg5[%11] : memref<?xf64>
          %15 = memref.load %arg5[%11] : memref<?xf64>
          scf.for %arg10 = %c0 to %c8 step %c1 {
            %21 = arith.muli %arg10, %c4 : index
            %22 = memref.load %arg3[%21, %11] : memref<?x28xf64>
            %23 = arith.subf %22, %12 : f64
            %24 = arith.mulf %23, %23 : f64
            %25 = memref.load %arg6[%11] : memref<?xf64>
            %26 = arith.addf %25, %24 : f64
            memref.store %26, %arg6[%11] : memref<?xf64>
            %27 = arith.addi %21, %c1 : index
            %28 = memref.load %arg3[%27, %11] : memref<?x28xf64>
            %29 = arith.subf %28, %13 : f64
            %30 = arith.mulf %29, %29 : f64
            %31 = memref.load %arg6[%11] : memref<?xf64>
            %32 = arith.addf %31, %30 : f64
            memref.store %32, %arg6[%11] : memref<?xf64>
            %33 = arith.addi %21, %c2 : index
            %34 = memref.load %arg3[%33, %11] : memref<?x28xf64>
            %35 = arith.subf %34, %14 : f64
            %36 = arith.mulf %35, %35 : f64
            %37 = memref.load %arg6[%11] : memref<?xf64>
            %38 = arith.addf %37, %36 : f64
            memref.store %38, %arg6[%11] : memref<?xf64>
            %39 = arith.addi %21, %c3 : index
            %40 = memref.load %arg3[%39, %11] : memref<?x28xf64>
            %41 = arith.subf %40, %15 : f64
            %42 = arith.mulf %41, %41 : f64
            %43 = memref.load %arg6[%11] : memref<?xf64>
            %44 = arith.addf %43, %42 : f64
            memref.store %44, %arg6[%11] : memref<?xf64>
          }
          %16 = memref.load %arg6[%11] : memref<?xf64>
          %17 = arith.divf %16, %arg2 : f64
          %18 = math.sqrt %17 : f64
          %19 = arith.cmpf ole, %18, %cst_1 : f64
          %20 = arith.select %19, %cst, %18 : f64
          memref.store %20, %arg6[%11] : memref<?xf64>
        }
        async.yield
      }
      %9 = async.add_to_group %token, %2 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %2
    %4 = math.sqrt %arg2 : f64
    %5 = async.create_group %c32 : !async.group
    %6 = scf.for %arg7 = %c0 to %c32 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c7 step %c1 {
          %11 = arith.muli %arg9, %c4 : index
          scf.for %arg10 = %c0 to %c1 step %c1 {
            %12 = arith.addi %arg7, %arg10 : index
            scf.for %arg11 = %c0 to %c1 step %c1 {
              %13 = arith.muli %arg11, %c4 : index
              %14 = arith.addi %11, %13 : index
              %15 = memref.load %arg5[%14] : memref<?xf64>
              %16 = memref.load %arg3[%12, %14] : memref<?x28xf64>
              %17 = arith.subf %16, %15 : f64
              memref.store %17, %arg3[%12, %14] : memref<?x28xf64>
              %18 = memref.load %arg6[%14] : memref<?xf64>
              %19 = arith.mulf %4, %18 : f64
              %20 = arith.divf %17, %19 : f64
              memref.store %20, %arg3[%12, %14] : memref<?x28xf64>
              %21 = arith.addi %14, %c1 : index
              %22 = memref.load %arg5[%21] : memref<?xf64>
              %23 = memref.load %arg3[%12, %21] : memref<?x28xf64>
              %24 = arith.subf %23, %22 : f64
              memref.store %24, %arg3[%12, %21] : memref<?x28xf64>
              %25 = memref.load %arg6[%21] : memref<?xf64>
              %26 = arith.mulf %4, %25 : f64
              %27 = arith.divf %24, %26 : f64
              memref.store %27, %arg3[%12, %21] : memref<?x28xf64>
              %28 = arith.addi %14, %c2 : index
              %29 = memref.load %arg5[%28] : memref<?xf64>
              %30 = memref.load %arg3[%12, %28] : memref<?x28xf64>
              %31 = arith.subf %30, %29 : f64
              memref.store %31, %arg3[%12, %28] : memref<?x28xf64>
              %32 = memref.load %arg6[%28] : memref<?xf64>
              %33 = arith.mulf %4, %32 : f64
              %34 = arith.divf %31, %33 : f64
              memref.store %34, %arg3[%12, %28] : memref<?x28xf64>
              %35 = arith.addi %14, %c3 : index
              %36 = memref.load %arg5[%35] : memref<?xf64>
              %37 = memref.load %arg3[%12, %35] : memref<?x28xf64>
              %38 = arith.subf %37, %36 : f64
              memref.store %38, %arg3[%12, %35] : memref<?x28xf64>
              %39 = memref.load %arg6[%35] : memref<?xf64>
              %40 = arith.mulf %4, %39 : f64
              %41 = arith.divf %38, %40 : f64
              memref.store %41, %arg3[%12, %35] : memref<?x28xf64>
            }
          }
        }
        async.yield
      }
      %9 = async.add_to_group %token, %5 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %5
    %7 = async.create_group %c27 : !async.group
    %8 = scf.for %arg7 = %c0 to %c27 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %11 = arith.addi %arg7, %arg9 : index
          memref.store %cst, %arg4[%11, %11] : memref<?x28xf64>
          %12 = arith.muli %arg7, %c-1 : index
          %13 = arith.muli %arg9, %c-1 : index
          %14 = arith.addi %12, %13 : index
          %15 = arith.addi %14, %c27 : index
          scf.for %arg10 = %c0 to %15 step %c1 {
            %16 = arith.addi %11, %arg10 : index
            %17 = arith.addi %16, %c1 : index
            memref.store %cst_0, %arg4[%11, %17] : memref<?x28xf64>
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %19 = arith.muli %arg11, %c4 : index
              %20 = memref.load %arg3[%19, %11] : memref<?x28xf64>
              %21 = memref.load %arg3[%19, %17] : memref<?x28xf64>
              %22 = arith.mulf %20, %21 : f64
              %23 = memref.load %arg4[%11, %17] : memref<?x28xf64>
              %24 = arith.addf %23, %22 : f64
              memref.store %24, %arg4[%11, %17] : memref<?x28xf64>
              %25 = arith.addi %19, %c1 : index
              %26 = memref.load %arg3[%25, %11] : memref<?x28xf64>
              %27 = memref.load %arg3[%25, %17] : memref<?x28xf64>
              %28 = arith.mulf %26, %27 : f64
              %29 = memref.load %arg4[%11, %17] : memref<?x28xf64>
              %30 = arith.addf %29, %28 : f64
              memref.store %30, %arg4[%11, %17] : memref<?x28xf64>
              %31 = arith.addi %19, %c2 : index
              %32 = memref.load %arg3[%31, %11] : memref<?x28xf64>
              %33 = memref.load %arg3[%31, %17] : memref<?x28xf64>
              %34 = arith.mulf %32, %33 : f64
              %35 = memref.load %arg4[%11, %17] : memref<?x28xf64>
              %36 = arith.addf %35, %34 : f64
              memref.store %36, %arg4[%11, %17] : memref<?x28xf64>
              %37 = arith.addi %19, %c3 : index
              %38 = memref.load %arg3[%37, %11] : memref<?x28xf64>
              %39 = memref.load %arg3[%37, %17] : memref<?x28xf64>
              %40 = arith.mulf %38, %39 : f64
              %41 = memref.load %arg4[%11, %17] : memref<?x28xf64>
              %42 = arith.addf %41, %40 : f64
              memref.store %42, %arg4[%11, %17] : memref<?x28xf64>
            }
            %18 = memref.load %arg4[%11, %17] : memref<?x28xf64>
            memref.store %18, %arg4[%17, %11] : memref<?x28xf64>
          }
        }
        async.yield
      }
      %9 = async.add_to_group %token, %7 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %7
    memref.store %cst, %arg4[%c27, %c27] : memref<?x28xf64>
    return
  }
}

