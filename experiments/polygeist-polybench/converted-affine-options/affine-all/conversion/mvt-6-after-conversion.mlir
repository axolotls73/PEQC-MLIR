module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c10 = arith.constant 10 : index
    %c-8 = arith.constant -8 : index
    %c32 = arith.constant 32 : index
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg6 = %c0 to %c2 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c2 step %c1 {
          %4 = arith.muli %arg6, %c-32 : index
          %5 = arith.addi %4, %c40 : index
          %6 = arith.minsi %5, %c32 : index
          scf.for %arg9 = %c0 to %6 step %c1 {
            %7 = arith.muli %arg6, %c32 : index
            %8 = arith.addi %7, %arg9 : index
            %9 = arith.muli %arg8, %c-8 : index
            %10 = arith.addi %9, %c10 : index
            %11 = arith.minsi %10, %c8 : index
            scf.for %arg10 = %c0 to %11 step %c1 {
              %12 = arith.muli %arg8, %c32 : index
              %13 = arith.muli %arg10, %c4 : index
              %14 = arith.addi %12, %13 : index
              %15 = memref.load %arg1[%8] : memref<?xf64>
              %16 = memref.load %arg5[%8, %14] : memref<?x40xf64>
              %17 = memref.load %arg3[%14] : memref<?xf64>
              %18 = arith.mulf %16, %17 : f64
              %19 = arith.addf %15, %18 : f64
              memref.store %19, %arg1[%8] : memref<?xf64>
              %20 = memref.load %arg2[%8] : memref<?xf64>
              %21 = memref.load %arg5[%14, %8] : memref<?x40xf64>
              %22 = memref.load %arg4[%14] : memref<?xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = arith.addf %20, %23 : f64
              memref.store %24, %arg2[%8] : memref<?xf64>
              %25 = arith.addi %14, %c1 : index
              %26 = memref.load %arg1[%8] : memref<?xf64>
              %27 = memref.load %arg5[%8, %25] : memref<?x40xf64>
              %28 = memref.load %arg3[%25] : memref<?xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = arith.addf %26, %29 : f64
              memref.store %30, %arg1[%8] : memref<?xf64>
              %31 = memref.load %arg2[%8] : memref<?xf64>
              %32 = memref.load %arg5[%25, %8] : memref<?x40xf64>
              %33 = memref.load %arg4[%25] : memref<?xf64>
              %34 = arith.mulf %32, %33 : f64
              %35 = arith.addf %31, %34 : f64
              memref.store %35, %arg2[%8] : memref<?xf64>
              %36 = arith.addi %14, %c2 : index
              %37 = memref.load %arg1[%8] : memref<?xf64>
              %38 = memref.load %arg5[%8, %36] : memref<?x40xf64>
              %39 = memref.load %arg3[%36] : memref<?xf64>
              %40 = arith.mulf %38, %39 : f64
              %41 = arith.addf %37, %40 : f64
              memref.store %41, %arg1[%8] : memref<?xf64>
              %42 = memref.load %arg2[%8] : memref<?xf64>
              %43 = memref.load %arg5[%36, %8] : memref<?x40xf64>
              %44 = memref.load %arg4[%36] : memref<?xf64>
              %45 = arith.mulf %43, %44 : f64
              %46 = arith.addf %42, %45 : f64
              memref.store %46, %arg2[%8] : memref<?xf64>
              %47 = arith.addi %14, %c3 : index
              %48 = memref.load %arg1[%8] : memref<?xf64>
              %49 = memref.load %arg5[%8, %47] : memref<?x40xf64>
              %50 = memref.load %arg3[%47] : memref<?xf64>
              %51 = arith.mulf %49, %50 : f64
              %52 = arith.addf %48, %51 : f64
              memref.store %52, %arg1[%8] : memref<?xf64>
              %53 = memref.load %arg2[%8] : memref<?xf64>
              %54 = memref.load %arg5[%47, %8] : memref<?x40xf64>
              %55 = memref.load %arg4[%47] : memref<?xf64>
              %56 = arith.mulf %54, %55 : f64
              %57 = arith.addf %53, %56 : f64
              memref.store %57, %arg2[%8] : memref<?xf64>
            }
          }
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

