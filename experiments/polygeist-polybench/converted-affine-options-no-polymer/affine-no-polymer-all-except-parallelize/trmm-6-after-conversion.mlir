module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c19 = arith.constant 19 : index
    %c-1 = arith.constant -1 : index
    %c30 = arith.constant 30 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c20 step %c1 {
      %0 = async.create_group %c30 : !async.group
      %1 = scf.for %arg6 = %c0 to %c30 step %c1 iter_args(%arg7 = %c0) -> (index) {
        %token = async.execute {
          %4 = async.create_group %c1 : !async.group
          %5 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
            %token_0 = async.execute {
              %8 = arith.addi %arg5, %arg8 : index
              %9 = async.create_group %c1 : !async.group
              %10 = scf.for %arg10 = %c0 to %c1 step %c1 iter_args(%arg11 = %c0) -> (index) {
                %token_1 = async.execute {
                  %13 = arith.addi %arg6, %arg10 : index
                  %14 = arith.muli %arg5, %c-1 : index
                  %15 = arith.muli %arg8, %c-1 : index
                  %16 = arith.addi %14, %15 : index
                  %17 = arith.addi %16, %c19 : index
                  %18 = arith.cmpi slt, %17, %c0 : index
                  %19 = arith.subi %c-1, %17 : index
                  %20 = arith.select %18, %19, %17 : index
                  %21 = arith.divsi %20, %c4 : index
                  %22 = arith.subi %c-1, %21 : index
                  %23 = arith.select %18, %22, %21 : index
                  scf.for %arg12 = %c0 to %23 step %c1 {
                    %42 = arith.muli %arg12, %c4 : index
                    %43 = arith.addi %8, %42 : index
                    %44 = arith.addi %43, %c1 : index
                    %45 = memref.load %arg3[%44, %8] : memref<?x20xf64>
                    %46 = memref.load %arg4[%44, %13] : memref<?x30xf64>
                    %47 = arith.mulf %45, %46 : f64
                    %48 = memref.load %arg4[%8, %13] : memref<?x30xf64>
                    %49 = arith.addf %48, %47 : f64
                    memref.store %49, %arg4[%8, %13] : memref<?x30xf64>
                    %50 = arith.addi %44, %c1 : index
                    %51 = memref.load %arg3[%50, %8] : memref<?x20xf64>
                    %52 = memref.load %arg4[%50, %13] : memref<?x30xf64>
                    %53 = arith.mulf %51, %52 : f64
                    %54 = memref.load %arg4[%8, %13] : memref<?x30xf64>
                    %55 = arith.addf %54, %53 : f64
                    memref.store %55, %arg4[%8, %13] : memref<?x30xf64>
                    %56 = arith.addi %44, %c2 : index
                    %57 = memref.load %arg3[%56, %8] : memref<?x20xf64>
                    %58 = memref.load %arg4[%56, %13] : memref<?x30xf64>
                    %59 = arith.mulf %57, %58 : f64
                    %60 = memref.load %arg4[%8, %13] : memref<?x30xf64>
                    %61 = arith.addf %60, %59 : f64
                    memref.store %61, %arg4[%8, %13] : memref<?x30xf64>
                    %62 = arith.addi %44, %c3 : index
                    %63 = memref.load %arg3[%62, %8] : memref<?x20xf64>
                    %64 = memref.load %arg4[%62, %13] : memref<?x30xf64>
                    %65 = arith.mulf %63, %64 : f64
                    %66 = memref.load %arg4[%8, %13] : memref<?x30xf64>
                    %67 = arith.addf %66, %65 : f64
                    memref.store %67, %arg4[%8, %13] : memref<?x30xf64>
                  }
                  %24 = arith.muli %arg5, %c-1 : index
                  %25 = arith.muli %arg8, %c-1 : index
                  %26 = arith.addi %24, %25 : index
                  %27 = arith.muli %arg5, %c-1 : index
                  %28 = arith.muli %arg8, %c-1 : index
                  %29 = arith.addi %27, %28 : index
                  %30 = arith.addi %29, %c19 : index
                  %31 = arith.cmpi slt, %30, %c0 : index
                  %32 = arith.subi %c-1, %30 : index
                  %33 = arith.select %31, %32, %30 : index
                  %34 = arith.divsi %33, %c4 : index
                  %35 = arith.subi %c-1, %34 : index
                  %36 = arith.select %31, %35, %34 : index
                  %37 = arith.muli %36, %c-4 : index
                  %38 = arith.addi %26, %37 : index
                  %39 = arith.addi %38, %c19 : index
                  scf.for %arg12 = %c0 to %39 step %c1 {
                    %42 = arith.addi %8, %arg12 : index
                    %43 = arith.muli %8, %c-1 : index
                    %44 = arith.addi %43, %c19 : index
                    %45 = arith.cmpi slt, %44, %c0 : index
                    %46 = arith.subi %c-1, %44 : index
                    %47 = arith.select %45, %46, %44 : index
                    %48 = arith.divsi %47, %c4 : index
                    %49 = arith.subi %c-1, %48 : index
                    %50 = arith.select %45, %49, %48 : index
                    %51 = arith.muli %50, %c4 : index
                    %52 = arith.addi %42, %51 : index
                    %53 = arith.addi %52, %c1 : index
                    %54 = memref.load %arg3[%53, %8] : memref<?x20xf64>
                    %55 = memref.load %arg4[%53, %13] : memref<?x30xf64>
                    %56 = arith.mulf %54, %55 : f64
                    %57 = memref.load %arg4[%8, %13] : memref<?x30xf64>
                    %58 = arith.addf %57, %56 : f64
                    memref.store %58, %arg4[%8, %13] : memref<?x30xf64>
                  }
                  %40 = memref.load %arg4[%8, %13] : memref<?x30xf64>
                  %41 = arith.mulf %arg2, %40 : f64
                  memref.store %41, %arg4[%8, %13] : memref<?x30xf64>
                  async.yield
                }
                %11 = async.add_to_group %token_1, %9 : !async.token
                %12 = arith.addi %arg11, %c1 : index
                scf.yield %12 : index
              }
              async.await_all %9
              async.yield
            }
            %6 = async.add_to_group %token_0, %4 : !async.token
            %7 = arith.addi %arg9, %c1 : index
            scf.yield %7 : index
          }
          async.await_all %4
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg7, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

