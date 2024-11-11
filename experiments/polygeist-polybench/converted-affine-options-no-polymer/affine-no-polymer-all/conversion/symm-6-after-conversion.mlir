module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %c20 = arith.constant 20 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %cst, %alloca[] : memref<f64>
    scf.for %arg7 = %c0 to %c20 step %c1 {
      scf.for %arg8 = %c0 to %c30 step %c1 {
        %0 = async.create_group %c1 : !async.group
        %1 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token = async.execute {
            %4 = arith.addi %arg7, %arg9 : index
            %5 = memref.load %arg5[%4, %4] : memref<?x20xf64>
            scf.for %arg11 = %c0 to %c1 step %c1 {
              %6 = arith.addi %arg8, %arg11 : index
              memref.store %cst, %alloca[] : memref<f64>
              %7 = memref.load %arg6[%4, %6] : memref<?x30xf64>
              %8 = arith.mulf %arg2, %7 : f64
              %9 = memref.load %arg6[%4, %6] : memref<?x30xf64>
              %10 = arith.mulf %arg2, %9 : f64
              %11 = memref.load %arg6[%4, %6] : memref<?x30xf64>
              %12 = arith.mulf %arg2, %11 : f64
              %13 = memref.load %arg6[%4, %6] : memref<?x30xf64>
              %14 = arith.mulf %arg2, %13 : f64
              %15 = arith.addi %arg7, %arg9 : index
              %16 = arith.cmpi slt, %15, %c0 : index
              %17 = arith.subi %c-1, %15 : index
              %18 = arith.select %16, %17, %15 : index
              %19 = arith.divsi %18, %c4 : index
              %20 = arith.subi %c-1, %19 : index
              %21 = arith.select %16, %20, %19 : index
              scf.for %arg12 = %c0 to %21 step %c1 {
                %38 = arith.muli %arg12, %c4 : index
                %39 = memref.load %arg5[%4, %38] : memref<?x20xf64>
                %40 = arith.mulf %8, %39 : f64
                %41 = memref.load %arg4[%38, %6] : memref<?x30xf64>
                %42 = arith.addf %41, %40 : f64
                memref.store %42, %arg4[%38, %6] : memref<?x30xf64>
                %43 = memref.load %arg6[%38, %6] : memref<?x30xf64>
                %44 = memref.load %arg5[%4, %38] : memref<?x20xf64>
                %45 = arith.mulf %43, %44 : f64
                %46 = memref.load %alloca[] : memref<f64>
                %47 = arith.addf %46, %45 : f64
                memref.store %47, %alloca[] : memref<f64>
                %48 = arith.addi %38, %c1 : index
                %49 = memref.load %arg5[%4, %48] : memref<?x20xf64>
                %50 = arith.mulf %10, %49 : f64
                %51 = memref.load %arg4[%48, %6] : memref<?x30xf64>
                %52 = arith.addf %51, %50 : f64
                memref.store %52, %arg4[%48, %6] : memref<?x30xf64>
                %53 = memref.load %arg6[%48, %6] : memref<?x30xf64>
                %54 = memref.load %arg5[%4, %48] : memref<?x20xf64>
                %55 = arith.mulf %53, %54 : f64
                %56 = memref.load %alloca[] : memref<f64>
                %57 = arith.addf %56, %55 : f64
                memref.store %57, %alloca[] : memref<f64>
                %58 = arith.addi %38, %c2 : index
                %59 = memref.load %arg5[%4, %58] : memref<?x20xf64>
                %60 = arith.mulf %12, %59 : f64
                %61 = memref.load %arg4[%58, %6] : memref<?x30xf64>
                %62 = arith.addf %61, %60 : f64
                memref.store %62, %arg4[%58, %6] : memref<?x30xf64>
                %63 = memref.load %arg6[%58, %6] : memref<?x30xf64>
                %64 = memref.load %arg5[%4, %58] : memref<?x20xf64>
                %65 = arith.mulf %63, %64 : f64
                %66 = memref.load %alloca[] : memref<f64>
                %67 = arith.addf %66, %65 : f64
                memref.store %67, %alloca[] : memref<f64>
                %68 = arith.addi %38, %c3 : index
                %69 = memref.load %arg5[%4, %68] : memref<?x20xf64>
                %70 = arith.mulf %14, %69 : f64
                %71 = memref.load %arg4[%68, %6] : memref<?x30xf64>
                %72 = arith.addf %71, %70 : f64
                memref.store %72, %arg4[%68, %6] : memref<?x30xf64>
                %73 = memref.load %arg6[%68, %6] : memref<?x30xf64>
                %74 = memref.load %arg5[%4, %68] : memref<?x20xf64>
                %75 = arith.mulf %73, %74 : f64
                %76 = memref.load %alloca[] : memref<f64>
                %77 = arith.addf %76, %75 : f64
                memref.store %77, %alloca[] : memref<f64>
              }
              %22 = memref.load %arg6[%4, %6] : memref<?x30xf64>
              %23 = arith.mulf %arg2, %22 : f64
              %24 = arith.addi %arg7, %arg9 : index
              %25 = arith.remsi %24, %c4 : index
              %26 = arith.cmpi slt, %25, %c0 : index
              %27 = arith.addi %25, %c4 : index
              %28 = arith.select %26, %27, %25 : index
              scf.for %arg12 = %c0 to %28 step %c1 {
                %38 = arith.cmpi slt, %4, %c0 : index
                %39 = arith.subi %c-1, %4 : index
                %40 = arith.select %38, %39, %4 : index
                %41 = arith.divsi %40, %c4 : index
                %42 = arith.subi %c-1, %41 : index
                %43 = arith.select %38, %42, %41 : index
                %44 = arith.muli %43, %c4 : index
                %45 = arith.addi %arg12, %44 : index
                %46 = memref.load %arg5[%4, %45] : memref<?x20xf64>
                %47 = arith.mulf %23, %46 : f64
                %48 = memref.load %arg4[%45, %6] : memref<?x30xf64>
                %49 = arith.addf %48, %47 : f64
                memref.store %49, %arg4[%45, %6] : memref<?x30xf64>
                %50 = memref.load %arg6[%45, %6] : memref<?x30xf64>
                %51 = memref.load %arg5[%4, %45] : memref<?x20xf64>
                %52 = arith.mulf %50, %51 : f64
                %53 = memref.load %alloca[] : memref<f64>
                %54 = arith.addf %53, %52 : f64
                memref.store %54, %alloca[] : memref<f64>
              }
              %29 = memref.load %arg4[%4, %6] : memref<?x30xf64>
              %30 = arith.mulf %arg3, %29 : f64
              %31 = memref.load %arg6[%4, %6] : memref<?x30xf64>
              %32 = arith.mulf %arg2, %31 : f64
              %33 = arith.mulf %32, %5 : f64
              %34 = arith.addf %30, %33 : f64
              %35 = memref.load %alloca[] : memref<f64>
              %36 = arith.mulf %arg2, %35 : f64
              %37 = arith.addf %34, %36 : f64
              memref.store %37, %arg4[%4, %6] : memref<?x30xf64>
            }
            async.yield
          }
          %2 = async.add_to_group %token, %0 : !async.token
          %3 = arith.addi %arg10, %c1 : index
          scf.yield %3 : index
        }
        async.await_all %0
      }
    }
    return
  }
}

