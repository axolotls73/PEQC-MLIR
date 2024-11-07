module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c28 = arith.constant 28 : index
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %0 = async.create_group %c1 : !async.group
      %1 = scf.for %arg5 = %c0 to %c1 step %c1 iter_args(%arg6 = %c0) -> (index) {
        %token = async.execute {
          %4 = async.create_group %c28 : !async.group
          %5 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
            %token_0 = async.execute {
              %10 = arith.addi %arg7, %c1 : index
              %11 = async.create_group %c7 : !async.group
              %12 = scf.for %arg9 = %c0 to %c7 step %c1 iter_args(%arg10 = %c0) -> (index) {
                %token_1 = async.execute {
                  %15 = arith.muli %arg9, %c4 : index
                  %16 = arith.addi %15, %c1 : index
                  %17 = memref.load %arg2[%10, %16] : memref<?x30xf64>
                  %18 = arith.addi %16, %c-1 : index
                  %19 = memref.load %arg2[%10, %18] : memref<?x30xf64>
                  %20 = arith.addf %17, %19 : f64
                  %21 = arith.addi %16, %c1 : index
                  %22 = memref.load %arg2[%10, %21] : memref<?x30xf64>
                  %23 = arith.addf %20, %22 : f64
                  %24 = arith.addi %10, %c1 : index
                  %25 = memref.load %arg2[%24, %16] : memref<?x30xf64>
                  %26 = arith.addf %23, %25 : f64
                  %27 = arith.addi %10, %c-1 : index
                  %28 = memref.load %arg2[%27, %16] : memref<?x30xf64>
                  %29 = arith.addf %26, %28 : f64
                  %30 = arith.mulf %29, %cst : f64
                  memref.store %30, %arg3[%10, %16] : memref<?x30xf64>
                  %31 = arith.addi %16, %c1 : index
                  %32 = memref.load %arg2[%10, %31] : memref<?x30xf64>
                  %33 = arith.addi %31, %c-1 : index
                  %34 = memref.load %arg2[%10, %33] : memref<?x30xf64>
                  %35 = arith.addf %32, %34 : f64
                  %36 = arith.addi %31, %c1 : index
                  %37 = memref.load %arg2[%10, %36] : memref<?x30xf64>
                  %38 = arith.addf %35, %37 : f64
                  %39 = arith.addi %10, %c1 : index
                  %40 = memref.load %arg2[%39, %31] : memref<?x30xf64>
                  %41 = arith.addf %38, %40 : f64
                  %42 = arith.addi %10, %c-1 : index
                  %43 = memref.load %arg2[%42, %31] : memref<?x30xf64>
                  %44 = arith.addf %41, %43 : f64
                  %45 = arith.mulf %44, %cst : f64
                  memref.store %45, %arg3[%10, %31] : memref<?x30xf64>
                  %46 = arith.addi %16, %c2 : index
                  %47 = memref.load %arg2[%10, %46] : memref<?x30xf64>
                  %48 = arith.addi %46, %c-1 : index
                  %49 = memref.load %arg2[%10, %48] : memref<?x30xf64>
                  %50 = arith.addf %47, %49 : f64
                  %51 = arith.addi %46, %c1 : index
                  %52 = memref.load %arg2[%10, %51] : memref<?x30xf64>
                  %53 = arith.addf %50, %52 : f64
                  %54 = arith.addi %10, %c1 : index
                  %55 = memref.load %arg2[%54, %46] : memref<?x30xf64>
                  %56 = arith.addf %53, %55 : f64
                  %57 = arith.addi %10, %c-1 : index
                  %58 = memref.load %arg2[%57, %46] : memref<?x30xf64>
                  %59 = arith.addf %56, %58 : f64
                  %60 = arith.mulf %59, %cst : f64
                  memref.store %60, %arg3[%10, %46] : memref<?x30xf64>
                  %61 = arith.addi %16, %c3 : index
                  %62 = memref.load %arg2[%10, %61] : memref<?x30xf64>
                  %63 = arith.addi %61, %c-1 : index
                  %64 = memref.load %arg2[%10, %63] : memref<?x30xf64>
                  %65 = arith.addf %62, %64 : f64
                  %66 = arith.addi %61, %c1 : index
                  %67 = memref.load %arg2[%10, %66] : memref<?x30xf64>
                  %68 = arith.addf %65, %67 : f64
                  %69 = arith.addi %10, %c1 : index
                  %70 = memref.load %arg2[%69, %61] : memref<?x30xf64>
                  %71 = arith.addf %68, %70 : f64
                  %72 = arith.addi %10, %c-1 : index
                  %73 = memref.load %arg2[%72, %61] : memref<?x30xf64>
                  %74 = arith.addf %71, %73 : f64
                  %75 = arith.mulf %74, %cst : f64
                  memref.store %75, %arg3[%10, %61] : memref<?x30xf64>
                  async.yield
                }
                %13 = async.add_to_group %token_1, %11 : !async.token
                %14 = arith.addi %arg10, %c1 : index
                scf.yield %14 : index
              }
              async.await_all %11
              async.yield
            }
            %8 = async.add_to_group %token_0, %4 : !async.token
            %9 = arith.addi %arg8, %c1 : index
            scf.yield %9 : index
          }
          async.await_all %4
          %6 = async.create_group %c28 : !async.group
          %7 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
            %token_0 = async.execute {
              %10 = arith.addi %arg7, %c1 : index
              %11 = async.create_group %c7 : !async.group
              %12 = scf.for %arg9 = %c0 to %c7 step %c1 iter_args(%arg10 = %c0) -> (index) {
                %token_1 = async.execute {
                  %15 = arith.muli %arg9, %c4 : index
                  %16 = arith.addi %15, %c1 : index
                  %17 = memref.load %arg3[%10, %16] : memref<?x30xf64>
                  %18 = arith.addi %16, %c-1 : index
                  %19 = memref.load %arg3[%10, %18] : memref<?x30xf64>
                  %20 = arith.addf %17, %19 : f64
                  %21 = arith.addi %16, %c1 : index
                  %22 = memref.load %arg3[%10, %21] : memref<?x30xf64>
                  %23 = arith.addf %20, %22 : f64
                  %24 = arith.addi %10, %c1 : index
                  %25 = memref.load %arg3[%24, %16] : memref<?x30xf64>
                  %26 = arith.addf %23, %25 : f64
                  %27 = arith.addi %10, %c-1 : index
                  %28 = memref.load %arg3[%27, %16] : memref<?x30xf64>
                  %29 = arith.addf %26, %28 : f64
                  %30 = arith.mulf %29, %cst : f64
                  memref.store %30, %arg2[%10, %16] : memref<?x30xf64>
                  %31 = arith.addi %16, %c1 : index
                  %32 = memref.load %arg3[%10, %31] : memref<?x30xf64>
                  %33 = arith.addi %31, %c-1 : index
                  %34 = memref.load %arg3[%10, %33] : memref<?x30xf64>
                  %35 = arith.addf %32, %34 : f64
                  %36 = arith.addi %31, %c1 : index
                  %37 = memref.load %arg3[%10, %36] : memref<?x30xf64>
                  %38 = arith.addf %35, %37 : f64
                  %39 = arith.addi %10, %c1 : index
                  %40 = memref.load %arg3[%39, %31] : memref<?x30xf64>
                  %41 = arith.addf %38, %40 : f64
                  %42 = arith.addi %10, %c-1 : index
                  %43 = memref.load %arg3[%42, %31] : memref<?x30xf64>
                  %44 = arith.addf %41, %43 : f64
                  %45 = arith.mulf %44, %cst : f64
                  memref.store %45, %arg2[%10, %31] : memref<?x30xf64>
                  %46 = arith.addi %16, %c2 : index
                  %47 = memref.load %arg3[%10, %46] : memref<?x30xf64>
                  %48 = arith.addi %46, %c-1 : index
                  %49 = memref.load %arg3[%10, %48] : memref<?x30xf64>
                  %50 = arith.addf %47, %49 : f64
                  %51 = arith.addi %46, %c1 : index
                  %52 = memref.load %arg3[%10, %51] : memref<?x30xf64>
                  %53 = arith.addf %50, %52 : f64
                  %54 = arith.addi %10, %c1 : index
                  %55 = memref.load %arg3[%54, %46] : memref<?x30xf64>
                  %56 = arith.addf %53, %55 : f64
                  %57 = arith.addi %10, %c-1 : index
                  %58 = memref.load %arg3[%57, %46] : memref<?x30xf64>
                  %59 = arith.addf %56, %58 : f64
                  %60 = arith.mulf %59, %cst : f64
                  memref.store %60, %arg2[%10, %46] : memref<?x30xf64>
                  %61 = arith.addi %16, %c3 : index
                  %62 = memref.load %arg3[%10, %61] : memref<?x30xf64>
                  %63 = arith.addi %61, %c-1 : index
                  %64 = memref.load %arg3[%10, %63] : memref<?x30xf64>
                  %65 = arith.addf %62, %64 : f64
                  %66 = arith.addi %61, %c1 : index
                  %67 = memref.load %arg3[%10, %66] : memref<?x30xf64>
                  %68 = arith.addf %65, %67 : f64
                  %69 = arith.addi %10, %c1 : index
                  %70 = memref.load %arg3[%69, %61] : memref<?x30xf64>
                  %71 = arith.addf %68, %70 : f64
                  %72 = arith.addi %10, %c-1 : index
                  %73 = memref.load %arg3[%72, %61] : memref<?x30xf64>
                  %74 = arith.addf %71, %73 : f64
                  %75 = arith.mulf %74, %cst : f64
                  memref.store %75, %arg2[%10, %61] : memref<?x30xf64>
                  async.yield
                }
                %13 = async.add_to_group %token_1, %11 : !async.token
                %14 = arith.addi %arg10, %c1 : index
                scf.yield %14 : index
              }
              async.await_all %11
              async.yield
            }
            %8 = async.add_to_group %token_0, %6 : !async.token
            %9 = arith.addi %arg8, %c1 : index
            scf.yield %9 : index
          }
          async.await_all %6
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg6, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

