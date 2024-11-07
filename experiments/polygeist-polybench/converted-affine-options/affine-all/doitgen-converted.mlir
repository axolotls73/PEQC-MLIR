module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c12 = arith.constant 12 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c-1 = arith.constant -1 : index
    %c31 = arith.constant 31 : index
    %c10 = arith.constant 10 : index
    %c7 = arith.constant 7 : index
    %c-7 = arith.constant -7 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c3 step %c1 {
      %0 = arith.muli %arg6, %c32 : index
      %1 = arith.addi %0, %c-7 : index
      %2 = arith.cmpi sle, %1, %c0 : index
      %3 = arith.subi %c0, %1 : index
      %4 = arith.subi %1, %c1 : index
      %5 = arith.select %2, %3, %4 : index
      %6 = arith.divsi %5, %c7 : index
      %7 = arith.subi %c0, %6 : index
      %8 = arith.addi %6, %c1 : index
      %9 = arith.select %2, %7, %8 : index
      %10 = arith.maxsi %9, %c0 : index
      %11 = arith.muli %arg6, %c32 : index
      %12 = arith.addi %11, %c31 : index
      %13 = arith.cmpi slt, %12, %c0 : index
      %14 = arith.subi %c-1, %12 : index
      %15 = arith.select %13, %14, %12 : index
      %16 = arith.divsi %15, %c7 : index
      %17 = arith.subi %c-1, %16 : index
      %18 = arith.select %13, %17, %16 : index
      %19 = arith.addi %18, %c1 : index
      %20 = arith.minsi %19, %c10 : index
      scf.for %arg7 = %10 to %20 step %c1 {
        %21 = arith.muli %arg6, %c32 : index
        %22 = arith.muli %arg7, %c7 : index
        %23 = arith.maxsi %21, %22 : index
        %24 = arith.muli %arg6, %c32 : index
        %25 = arith.addi %24, %c32 : index
        %26 = arith.muli %arg7, %c7 : index
        %27 = arith.addi %26, %c8 : index
        %28 = arith.minsi %25, %27 : index
        scf.for %arg8 = %23 to %28 step %c1 {
          %29 = async.create_group %c3 : !async.group
          %30 = scf.for %arg9 = %c0 to %c3 step %c1 iter_args(%arg10 = %c0) -> (index) {
            %token = async.execute {
              %35 = arith.muli %arg9, %c4 : index
              memref.store %cst, %arg5[%35] : memref<?xf64>
              %36 = arith.addi %35, %c1 : index
              memref.store %cst, %arg5[%36] : memref<?xf64>
              %37 = arith.addi %35, %c2 : index
              memref.store %cst, %arg5[%37] : memref<?xf64>
              %38 = arith.addi %35, %c3 : index
              memref.store %cst, %arg5[%38] : memref<?xf64>
              async.yield
            }
            %33 = async.add_to_group %token, %29 : !async.token
            %34 = arith.addi %arg10, %c1 : index
            scf.yield %34 : index
          }
          async.await_all %29
          scf.for %arg9 = %c0 to %c12 step %c1 {
            %33 = async.create_group %c3 : !async.group
            %34 = scf.for %arg10 = %c0 to %c3 step %c1 iter_args(%arg11 = %c0) -> (index) {
              %token = async.execute {
                %37 = arith.muli %arg10, %c4 : index
                %38 = memref.load %arg5[%37] : memref<?xf64>
                %39 = arith.muli %arg7, %c-7 : index
                %40 = arith.addi %39, %arg8 : index
                %41 = memref.load %arg3[%arg7, %40, %arg9] : memref<?x8x12xf64>
                %42 = memref.load %arg4[%arg9, %37] : memref<?x12xf64>
                %43 = arith.mulf %41, %42 : f64
                %44 = arith.addf %38, %43 : f64
                memref.store %44, %arg5[%37] : memref<?xf64>
                %45 = arith.addi %37, %c1 : index
                %46 = memref.load %arg5[%45] : memref<?xf64>
                %47 = arith.muli %arg7, %c-7 : index
                %48 = arith.addi %47, %arg8 : index
                %49 = memref.load %arg3[%arg7, %48, %arg9] : memref<?x8x12xf64>
                %50 = memref.load %arg4[%arg9, %45] : memref<?x12xf64>
                %51 = arith.mulf %49, %50 : f64
                %52 = arith.addf %46, %51 : f64
                memref.store %52, %arg5[%45] : memref<?xf64>
                %53 = arith.addi %37, %c2 : index
                %54 = memref.load %arg5[%53] : memref<?xf64>
                %55 = arith.muli %arg7, %c-7 : index
                %56 = arith.addi %55, %arg8 : index
                %57 = memref.load %arg3[%arg7, %56, %arg9] : memref<?x8x12xf64>
                %58 = memref.load %arg4[%arg9, %53] : memref<?x12xf64>
                %59 = arith.mulf %57, %58 : f64
                %60 = arith.addf %54, %59 : f64
                memref.store %60, %arg5[%53] : memref<?xf64>
                %61 = arith.addi %37, %c3 : index
                %62 = memref.load %arg5[%61] : memref<?xf64>
                %63 = arith.muli %arg7, %c-7 : index
                %64 = arith.addi %63, %arg8 : index
                %65 = memref.load %arg3[%arg7, %64, %arg9] : memref<?x8x12xf64>
                %66 = memref.load %arg4[%arg9, %61] : memref<?x12xf64>
                %67 = arith.mulf %65, %66 : f64
                %68 = arith.addf %62, %67 : f64
                memref.store %68, %arg5[%61] : memref<?xf64>
                async.yield
              }
              %35 = async.add_to_group %token, %33 : !async.token
              %36 = arith.addi %arg11, %c1 : index
              scf.yield %36 : index
            }
            async.await_all %33
          }
          %31 = async.create_group %c3 : !async.group
          %32 = scf.for %arg9 = %c0 to %c3 step %c1 iter_args(%arg10 = %c0) -> (index) {
            %token = async.execute {
              %35 = arith.muli %arg9, %c4 : index
              %36 = memref.load %arg5[%35] : memref<?xf64>
              %37 = arith.muli %arg7, %c-7 : index
              %38 = arith.addi %37, %arg8 : index
              memref.store %36, %arg3[%arg7, %38, %35] : memref<?x8x12xf64>
              %39 = arith.addi %35, %c1 : index
              %40 = memref.load %arg5[%39] : memref<?xf64>
              %41 = arith.muli %arg7, %c-7 : index
              %42 = arith.addi %41, %arg8 : index
              memref.store %40, %arg3[%arg7, %42, %39] : memref<?x8x12xf64>
              %43 = arith.addi %35, %c2 : index
              %44 = memref.load %arg5[%43] : memref<?xf64>
              %45 = arith.muli %arg7, %c-7 : index
              %46 = arith.addi %45, %arg8 : index
              memref.store %44, %arg3[%arg7, %46, %43] : memref<?x8x12xf64>
              %47 = arith.addi %35, %c3 : index
              %48 = memref.load %arg5[%47] : memref<?xf64>
              %49 = arith.muli %arg7, %c-7 : index
              %50 = arith.addi %49, %arg8 : index
              memref.store %48, %arg3[%arg7, %50, %47] : memref<?x8x12xf64>
              async.yield
            }
            %33 = async.add_to_group %token, %31 : !async.token
            %34 = arith.addi %arg10, %c1 : index
            scf.yield %34 : index
          }
          async.await_all %31
        }
      }
    }
    return
  }
}

