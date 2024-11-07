module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c42 = arith.constant 42 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c10 = arith.constant 10 : index
    %c-8 = arith.constant -8 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg6 = %c0 to %c2 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c2 step %c1 {
          %4 = arith.muli %arg6, %c32 : index
          %5 = arith.muli %arg6, %c32 : index
          %6 = arith.addi %5, %c32 : index
          %7 = arith.minsi %6, %c40 : index
          %8 = async.create_group %c42 : !async.group
          %9 = scf.for %arg9 = %4 to %7 step %c1 iter_args(%arg10 = %c0) -> (index) {
            %token_0 = async.execute {
              %12 = arith.muli %arg8, %c-8 : index
              %13 = arith.addi %12, %c10 : index
              %14 = arith.minsi %13, %c8 : index
              scf.for %arg11 = %c0 to %14 step %c1 {
                %15 = arith.muli %arg8, %c32 : index
                %16 = arith.muli %arg11, %c4 : index
                %17 = arith.addi %15, %16 : index
                %18 = memref.load %arg1[%arg9] : memref<?xf64>
                %19 = memref.load %arg5[%arg9, %17] : memref<?x40xf64>
                %20 = memref.load %arg3[%17] : memref<?xf64>
                %21 = arith.mulf %19, %20 : f64
                %22 = arith.addf %18, %21 : f64
                memref.store %22, %arg1[%arg9] : memref<?xf64>
                %23 = memref.load %arg2[%arg9] : memref<?xf64>
                %24 = memref.load %arg5[%17, %arg9] : memref<?x40xf64>
                %25 = memref.load %arg4[%17] : memref<?xf64>
                %26 = arith.mulf %24, %25 : f64
                %27 = arith.addf %23, %26 : f64
                memref.store %27, %arg2[%arg9] : memref<?xf64>
                %28 = arith.addi %17, %c1 : index
                %29 = memref.load %arg1[%arg9] : memref<?xf64>
                %30 = memref.load %arg5[%arg9, %28] : memref<?x40xf64>
                %31 = memref.load %arg3[%28] : memref<?xf64>
                %32 = arith.mulf %30, %31 : f64
                %33 = arith.addf %29, %32 : f64
                memref.store %33, %arg1[%arg9] : memref<?xf64>
                %34 = memref.load %arg2[%arg9] : memref<?xf64>
                %35 = memref.load %arg5[%28, %arg9] : memref<?x40xf64>
                %36 = memref.load %arg4[%28] : memref<?xf64>
                %37 = arith.mulf %35, %36 : f64
                %38 = arith.addf %34, %37 : f64
                memref.store %38, %arg2[%arg9] : memref<?xf64>
                %39 = arith.addi %17, %c2 : index
                %40 = memref.load %arg1[%arg9] : memref<?xf64>
                %41 = memref.load %arg5[%arg9, %39] : memref<?x40xf64>
                %42 = memref.load %arg3[%39] : memref<?xf64>
                %43 = arith.mulf %41, %42 : f64
                %44 = arith.addf %40, %43 : f64
                memref.store %44, %arg1[%arg9] : memref<?xf64>
                %45 = memref.load %arg2[%arg9] : memref<?xf64>
                %46 = memref.load %arg5[%39, %arg9] : memref<?x40xf64>
                %47 = memref.load %arg4[%39] : memref<?xf64>
                %48 = arith.mulf %46, %47 : f64
                %49 = arith.addf %45, %48 : f64
                memref.store %49, %arg2[%arg9] : memref<?xf64>
                %50 = arith.addi %17, %c3 : index
                %51 = memref.load %arg1[%arg9] : memref<?xf64>
                %52 = memref.load %arg5[%arg9, %50] : memref<?x40xf64>
                %53 = memref.load %arg3[%50] : memref<?xf64>
                %54 = arith.mulf %52, %53 : f64
                %55 = arith.addf %51, %54 : f64
                memref.store %55, %arg1[%arg9] : memref<?xf64>
                %56 = memref.load %arg2[%arg9] : memref<?xf64>
                %57 = memref.load %arg5[%50, %arg9] : memref<?x40xf64>
                %58 = memref.load %arg4[%50] : memref<?xf64>
                %59 = arith.mulf %57, %58 : f64
                %60 = arith.addf %56, %59 : f64
                memref.store %60, %arg2[%arg9] : memref<?xf64>
              }
              async.yield
            }
            %10 = async.add_to_group %token_0, %8 : !async.token
            %11 = arith.addi %arg10, %c1 : index
            scf.yield %11 : index
          }
          async.await_all %8
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg7, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

