module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c30 : !async.group
    %1 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %4 = async.create_group %c1 : !async.group
        %5 = scf.for %arg10 = %c0 to %c1 step %c1 iter_args(%arg11 = %c0) -> (index) {
          %token_0 = async.execute {
            %8 = arith.addi %arg8, %arg10 : index
            memref.store %cst, %arg5[%8] : memref<?xf64>
            memref.store %cst, %arg7[%8] : memref<?xf64>
            scf.for %arg12 = %c0 to %c7 step %c1 {
              %14 = arith.muli %arg12, %c4 : index
              %15 = memref.load %arg3[%8, %14] : memref<?x30xf64>
              %16 = memref.load %arg6[%14] : memref<?xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = memref.load %arg5[%8] : memref<?xf64>
              %19 = arith.addf %17, %18 : f64
              memref.store %19, %arg5[%8] : memref<?xf64>
              %20 = memref.load %arg4[%8, %14] : memref<?x30xf64>
              %21 = memref.load %arg6[%14] : memref<?xf64>
              %22 = arith.mulf %20, %21 : f64
              %23 = memref.load %arg7[%8] : memref<?xf64>
              %24 = arith.addf %22, %23 : f64
              memref.store %24, %arg7[%8] : memref<?xf64>
              %25 = arith.addi %14, %c1 : index
              %26 = memref.load %arg3[%8, %25] : memref<?x30xf64>
              %27 = memref.load %arg6[%25] : memref<?xf64>
              %28 = arith.mulf %26, %27 : f64
              %29 = memref.load %arg5[%8] : memref<?xf64>
              %30 = arith.addf %28, %29 : f64
              memref.store %30, %arg5[%8] : memref<?xf64>
              %31 = memref.load %arg4[%8, %25] : memref<?x30xf64>
              %32 = memref.load %arg6[%25] : memref<?xf64>
              %33 = arith.mulf %31, %32 : f64
              %34 = memref.load %arg7[%8] : memref<?xf64>
              %35 = arith.addf %33, %34 : f64
              memref.store %35, %arg7[%8] : memref<?xf64>
              %36 = arith.addi %14, %c2 : index
              %37 = memref.load %arg3[%8, %36] : memref<?x30xf64>
              %38 = memref.load %arg6[%36] : memref<?xf64>
              %39 = arith.mulf %37, %38 : f64
              %40 = memref.load %arg5[%8] : memref<?xf64>
              %41 = arith.addf %39, %40 : f64
              memref.store %41, %arg5[%8] : memref<?xf64>
              %42 = memref.load %arg4[%8, %36] : memref<?x30xf64>
              %43 = memref.load %arg6[%36] : memref<?xf64>
              %44 = arith.mulf %42, %43 : f64
              %45 = memref.load %arg7[%8] : memref<?xf64>
              %46 = arith.addf %44, %45 : f64
              memref.store %46, %arg7[%8] : memref<?xf64>
              %47 = arith.addi %14, %c3 : index
              %48 = memref.load %arg3[%8, %47] : memref<?x30xf64>
              %49 = memref.load %arg6[%47] : memref<?xf64>
              %50 = arith.mulf %48, %49 : f64
              %51 = memref.load %arg5[%8] : memref<?xf64>
              %52 = arith.addf %50, %51 : f64
              memref.store %52, %arg5[%8] : memref<?xf64>
              %53 = memref.load %arg4[%8, %47] : memref<?x30xf64>
              %54 = memref.load %arg6[%47] : memref<?xf64>
              %55 = arith.mulf %53, %54 : f64
              %56 = memref.load %arg7[%8] : memref<?xf64>
              %57 = arith.addf %55, %56 : f64
              memref.store %57, %arg7[%8] : memref<?xf64>
            }
            scf.for %arg12 = %c0 to %c2 step %c1 {
              %14 = arith.addi %arg12, %c28 : index
              %15 = memref.load %arg3[%8, %14] : memref<?x30xf64>
              %16 = memref.load %arg6[%14] : memref<?xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = memref.load %arg5[%8] : memref<?xf64>
              %19 = arith.addf %17, %18 : f64
              memref.store %19, %arg5[%8] : memref<?xf64>
              %20 = memref.load %arg4[%8, %14] : memref<?x30xf64>
              %21 = memref.load %arg6[%14] : memref<?xf64>
              %22 = arith.mulf %20, %21 : f64
              %23 = memref.load %arg7[%8] : memref<?xf64>
              %24 = arith.addf %22, %23 : f64
              memref.store %24, %arg7[%8] : memref<?xf64>
            }
            %9 = memref.load %arg5[%8] : memref<?xf64>
            %10 = arith.mulf %arg1, %9 : f64
            %11 = memref.load %arg7[%8] : memref<?xf64>
            %12 = arith.mulf %arg2, %11 : f64
            %13 = arith.addf %10, %12 : f64
            memref.store %13, %arg7[%8] : memref<?xf64>
            async.yield
          }
          %6 = async.add_to_group %token_0, %4 : !async.token
          %7 = arith.addi %arg11, %c1 : index
          scf.yield %7 : index
        }
        async.await_all %4
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg9, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

