module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c42 = arith.constant 42 : index
    %c20 = arith.constant 20 : index
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
        %4 = async.create_group %c1 : !async.group
        %5 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_0 = async.execute {
            %8 = arith.addi %arg6, %arg8 : index
            %9 = arith.addi %arg6, %arg8 : index
            %10 = arith.addi %9, %c1 : index
            %11 = arith.cmpi slt, %10, %c0 : index
            %12 = arith.subi %c-1, %10 : index
            %13 = arith.select %11, %12, %10 : index
            %14 = arith.divsi %13, %c4 : index
            %15 = arith.subi %c-1, %14 : index
            %16 = arith.select %11, %15, %14 : index
            %17 = async.create_group %c42 : !async.group
            %18 = scf.for %arg10 = %c0 to %16 step %c1 iter_args(%arg11 = %c0) -> (index) {
              %token_1 = async.execute {
                %35 = arith.muli %arg10, %c4 : index
                %36 = memref.load %arg4[%8, %35] : memref<?x30xf64>
                %37 = arith.mulf %36, %arg3 : f64
                memref.store %37, %arg4[%8, %35] : memref<?x30xf64>
                %38 = arith.addi %35, %c1 : index
                %39 = memref.load %arg4[%8, %38] : memref<?x30xf64>
                %40 = arith.mulf %39, %arg3 : f64
                memref.store %40, %arg4[%8, %38] : memref<?x30xf64>
                %41 = arith.addi %35, %c2 : index
                %42 = memref.load %arg4[%8, %41] : memref<?x30xf64>
                %43 = arith.mulf %42, %arg3 : f64
                memref.store %43, %arg4[%8, %41] : memref<?x30xf64>
                %44 = arith.addi %35, %c3 : index
                %45 = memref.load %arg4[%8, %44] : memref<?x30xf64>
                %46 = arith.mulf %45, %arg3 : f64
                memref.store %46, %arg4[%8, %44] : memref<?x30xf64>
                async.yield
              }
              %33 = async.add_to_group %token_1, %17 : !async.token
              %34 = arith.addi %arg11, %c1 : index
              scf.yield %34 : index
            }
            async.await_all %17
            %19 = arith.addi %arg6, %arg8 : index
            %20 = arith.addi %arg6, %arg8 : index
            %21 = arith.addi %20, %c1 : index
            %22 = arith.cmpi slt, %21, %c0 : index
            %23 = arith.subi %c-1, %21 : index
            %24 = arith.select %22, %23, %21 : index
            %25 = arith.divsi %24, %c4 : index
            %26 = arith.subi %c-1, %25 : index
            %27 = arith.select %22, %26, %25 : index
            %28 = arith.muli %27, %c-4 : index
            %29 = arith.addi %19, %28 : index
            %30 = arith.addi %29, %c1 : index
            %31 = async.create_group %c42 : !async.group
            %32 = scf.for %arg10 = %c0 to %30 step %c1 iter_args(%arg11 = %c0) -> (index) {
              %token_1 = async.execute {
                %35 = arith.addi %8, %c1 : index
                %36 = arith.cmpi slt, %35, %c0 : index
                %37 = arith.subi %c-1, %35 : index
                %38 = arith.select %36, %37, %35 : index
                %39 = arith.divsi %38, %c4 : index
                %40 = arith.subi %c-1, %39 : index
                %41 = arith.select %36, %40, %39 : index
                %42 = arith.muli %41, %c4 : index
                %43 = arith.addi %42, %arg10 : index
                %44 = memref.load %arg4[%8, %43] : memref<?x30xf64>
                %45 = arith.mulf %44, %arg3 : f64
                memref.store %45, %arg4[%8, %43] : memref<?x30xf64>
                async.yield
              }
              %33 = async.add_to_group %token_1, %31 : !async.token
              %34 = arith.addi %arg11, %c1 : index
              scf.yield %34 : index
            }
            async.await_all %31
            scf.for %arg10 = %c0 to %c20 step %c1 {
              %33 = arith.addi %arg6, %arg8 : index
              %34 = arith.addi %33, %c1 : index
              %35 = arith.cmpi slt, %34, %c0 : index
              %36 = arith.subi %c-1, %34 : index
              %37 = arith.select %35, %36, %34 : index
              %38 = arith.divsi %37, %c4 : index
              %39 = arith.subi %c-1, %38 : index
              %40 = arith.select %35, %39, %38 : index
              %41 = async.create_group %c42 : !async.group
              %42 = scf.for %arg11 = %c0 to %40 step %c1 iter_args(%arg12 = %c0) -> (index) {
                %token_1 = async.execute {
                  %59 = arith.muli %arg11, %c4 : index
                  %60 = memref.load %arg5[%8, %arg10] : memref<?x20xf64>
                  %61 = arith.mulf %arg2, %60 : f64
                  %62 = memref.load %arg5[%59, %arg10] : memref<?x20xf64>
                  %63 = arith.mulf %61, %62 : f64
                  %64 = memref.load %arg4[%8, %59] : memref<?x30xf64>
                  %65 = arith.addf %64, %63 : f64
                  memref.store %65, %arg4[%8, %59] : memref<?x30xf64>
                  %66 = arith.addi %59, %c1 : index
                  %67 = memref.load %arg5[%8, %arg10] : memref<?x20xf64>
                  %68 = arith.mulf %arg2, %67 : f64
                  %69 = memref.load %arg5[%66, %arg10] : memref<?x20xf64>
                  %70 = arith.mulf %68, %69 : f64
                  %71 = memref.load %arg4[%8, %66] : memref<?x30xf64>
                  %72 = arith.addf %71, %70 : f64
                  memref.store %72, %arg4[%8, %66] : memref<?x30xf64>
                  %73 = arith.addi %59, %c2 : index
                  %74 = memref.load %arg5[%8, %arg10] : memref<?x20xf64>
                  %75 = arith.mulf %arg2, %74 : f64
                  %76 = memref.load %arg5[%73, %arg10] : memref<?x20xf64>
                  %77 = arith.mulf %75, %76 : f64
                  %78 = memref.load %arg4[%8, %73] : memref<?x30xf64>
                  %79 = arith.addf %78, %77 : f64
                  memref.store %79, %arg4[%8, %73] : memref<?x30xf64>
                  %80 = arith.addi %59, %c3 : index
                  %81 = memref.load %arg5[%8, %arg10] : memref<?x20xf64>
                  %82 = arith.mulf %arg2, %81 : f64
                  %83 = memref.load %arg5[%80, %arg10] : memref<?x20xf64>
                  %84 = arith.mulf %82, %83 : f64
                  %85 = memref.load %arg4[%8, %80] : memref<?x30xf64>
                  %86 = arith.addf %85, %84 : f64
                  memref.store %86, %arg4[%8, %80] : memref<?x30xf64>
                  async.yield
                }
                %57 = async.add_to_group %token_1, %41 : !async.token
                %58 = arith.addi %arg12, %c1 : index
                scf.yield %58 : index
              }
              async.await_all %41
              %43 = arith.addi %arg6, %arg8 : index
              %44 = arith.addi %arg6, %arg8 : index
              %45 = arith.addi %44, %c1 : index
              %46 = arith.cmpi slt, %45, %c0 : index
              %47 = arith.subi %c-1, %45 : index
              %48 = arith.select %46, %47, %45 : index
              %49 = arith.divsi %48, %c4 : index
              %50 = arith.subi %c-1, %49 : index
              %51 = arith.select %46, %50, %49 : index
              %52 = arith.muli %51, %c-4 : index
              %53 = arith.addi %43, %52 : index
              %54 = arith.addi %53, %c1 : index
              %55 = async.create_group %c42 : !async.group
              %56 = scf.for %arg11 = %c0 to %54 step %c1 iter_args(%arg12 = %c0) -> (index) {
                %token_1 = async.execute {
                  %59 = arith.addi %8, %c1 : index
                  %60 = arith.cmpi slt, %59, %c0 : index
                  %61 = arith.subi %c-1, %59 : index
                  %62 = arith.select %60, %61, %59 : index
                  %63 = arith.divsi %62, %c4 : index
                  %64 = arith.subi %c-1, %63 : index
                  %65 = arith.select %60, %64, %63 : index
                  %66 = arith.muli %65, %c4 : index
                  %67 = arith.addi %66, %arg11 : index
                  %68 = memref.load %arg5[%8, %arg10] : memref<?x20xf64>
                  %69 = arith.mulf %arg2, %68 : f64
                  %70 = memref.load %arg5[%67, %arg10] : memref<?x20xf64>
                  %71 = arith.mulf %69, %70 : f64
                  %72 = memref.load %arg4[%8, %67] : memref<?x30xf64>
                  %73 = arith.addf %72, %71 : f64
                  memref.store %73, %arg4[%8, %67] : memref<?x30xf64>
                  async.yield
                }
                %57 = async.add_to_group %token_1, %55 : !async.token
                %58 = arith.addi %arg12, %c1 : index
                scf.yield %58 : index
              }
              async.await_all %55
            }
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
    return
  }
}

