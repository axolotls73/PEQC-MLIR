module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c42 = arith.constant 42 : index
    %c5 = arith.constant 5 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c30 : !async.group
    %1 = scf.for %arg6 = %c0 to %c30 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %6 = async.create_group %c1 : !async.group
        %7 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_0 = async.execute {
            %10 = arith.addi %arg6, %arg8 : index
            %11 = arith.addi %arg6, %arg8 : index
            %12 = arith.addi %11, %c1 : index
            %13 = arith.cmpi slt, %12, %c0 : index
            %14 = arith.subi %c-1, %12 : index
            %15 = arith.select %13, %14, %12 : index
            %16 = arith.divsi %15, %c4 : index
            %17 = arith.subi %c-1, %16 : index
            %18 = arith.select %13, %17, %16 : index
            %19 = async.create_group %c42 : !async.group
            %20 = scf.for %arg10 = %c0 to %18 step %c1 iter_args(%arg11 = %c0) -> (index) {
              %token_1 = async.execute {
                %37 = arith.muli %arg10, %c4 : index
                %38 = memref.load %arg4[%10, %37] : memref<?x30xf64>
                %39 = arith.mulf %38, %arg3 : f64
                memref.store %39, %arg4[%10, %37] : memref<?x30xf64>
                %40 = arith.addi %37, %c1 : index
                %41 = memref.load %arg4[%10, %40] : memref<?x30xf64>
                %42 = arith.mulf %41, %arg3 : f64
                memref.store %42, %arg4[%10, %40] : memref<?x30xf64>
                %43 = arith.addi %37, %c2 : index
                %44 = memref.load %arg4[%10, %43] : memref<?x30xf64>
                %45 = arith.mulf %44, %arg3 : f64
                memref.store %45, %arg4[%10, %43] : memref<?x30xf64>
                %46 = arith.addi %37, %c3 : index
                %47 = memref.load %arg4[%10, %46] : memref<?x30xf64>
                %48 = arith.mulf %47, %arg3 : f64
                memref.store %48, %arg4[%10, %46] : memref<?x30xf64>
                async.yield
              }
              %35 = async.add_to_group %token_1, %19 : !async.token
              %36 = arith.addi %arg11, %c1 : index
              scf.yield %36 : index
            }
            async.await_all %19
            %21 = arith.addi %arg6, %arg8 : index
            %22 = arith.addi %arg6, %arg8 : index
            %23 = arith.addi %22, %c1 : index
            %24 = arith.cmpi slt, %23, %c0 : index
            %25 = arith.subi %c-1, %23 : index
            %26 = arith.select %24, %25, %23 : index
            %27 = arith.divsi %26, %c4 : index
            %28 = arith.subi %c-1, %27 : index
            %29 = arith.select %24, %28, %27 : index
            %30 = arith.muli %29, %c-4 : index
            %31 = arith.addi %21, %30 : index
            %32 = arith.addi %31, %c1 : index
            %33 = async.create_group %c42 : !async.group
            %34 = scf.for %arg10 = %c0 to %32 step %c1 iter_args(%arg11 = %c0) -> (index) {
              %token_1 = async.execute {
                %37 = arith.addi %10, %c1 : index
                %38 = arith.cmpi slt, %37, %c0 : index
                %39 = arith.subi %c-1, %37 : index
                %40 = arith.select %38, %39, %37 : index
                %41 = arith.divsi %40, %c4 : index
                %42 = arith.subi %c-1, %41 : index
                %43 = arith.select %38, %42, %41 : index
                %44 = arith.muli %43, %c4 : index
                %45 = arith.addi %44, %arg10 : index
                %46 = memref.load %arg4[%10, %45] : memref<?x30xf64>
                %47 = arith.mulf %46, %arg3 : f64
                memref.store %47, %arg4[%10, %45] : memref<?x30xf64>
                async.yield
              }
              %35 = async.add_to_group %token_1, %33 : !async.token
              %36 = arith.addi %arg11, %c1 : index
              scf.yield %36 : index
            }
            async.await_all %33
            async.yield
          }
          %8 = async.add_to_group %token_0, %6 : !async.token
          %9 = arith.addi %arg9, %c1 : index
          scf.yield %9 : index
        }
        async.await_all %6
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c30 : !async.group
    %3 = scf.for %arg6 = %c0 to %c30 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.addi %arg6, %c1 : index
        %7 = async.create_group %c42 : !async.group
        %8 = scf.for %arg8 = %c0 to %6 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_0 = async.execute {
            scf.for %arg10 = %c0 to %c5 step %c1 {
              %11 = arith.muli %arg10, %c4 : index
              %12 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
              %13 = memref.load %arg5[%arg6, %11] : memref<?x20xf64>
              %14 = arith.mulf %arg2, %13 : f64
              %15 = memref.load %arg5[%arg8, %11] : memref<?x20xf64>
              %16 = arith.mulf %14, %15 : f64
              %17 = arith.addf %12, %16 : f64
              memref.store %17, %arg4[%arg6, %arg8] : memref<?x30xf64>
              %18 = arith.addi %11, %c1 : index
              %19 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
              %20 = memref.load %arg5[%arg6, %18] : memref<?x20xf64>
              %21 = arith.mulf %arg2, %20 : f64
              %22 = memref.load %arg5[%arg8, %18] : memref<?x20xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = arith.addf %19, %23 : f64
              memref.store %24, %arg4[%arg6, %arg8] : memref<?x30xf64>
              %25 = arith.addi %11, %c2 : index
              %26 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
              %27 = memref.load %arg5[%arg6, %25] : memref<?x20xf64>
              %28 = arith.mulf %arg2, %27 : f64
              %29 = memref.load %arg5[%arg8, %25] : memref<?x20xf64>
              %30 = arith.mulf %28, %29 : f64
              %31 = arith.addf %26, %30 : f64
              memref.store %31, %arg4[%arg6, %arg8] : memref<?x30xf64>
              %32 = arith.addi %11, %c3 : index
              %33 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
              %34 = memref.load %arg5[%arg6, %32] : memref<?x20xf64>
              %35 = arith.mulf %arg2, %34 : f64
              %36 = memref.load %arg5[%arg8, %32] : memref<?x20xf64>
              %37 = arith.mulf %35, %36 : f64
              %38 = arith.addf %33, %37 : f64
              memref.store %38, %arg4[%arg6, %arg8] : memref<?x30xf64>
            }
            async.yield
          }
          %9 = async.add_to_group %token_0, %7 : !async.token
          %10 = arith.addi %arg9, %c1 : index
          scf.yield %10 : index
        }
        async.await_all %7
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

