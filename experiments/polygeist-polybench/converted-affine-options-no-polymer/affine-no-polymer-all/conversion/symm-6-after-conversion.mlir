module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c30 = arith.constant 30 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %cst, %alloca[] : memref<f64>
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %5 = arith.muli %arg9, %c32 : index
          scf.for %arg10 = %c0 to %c20 step %c1 {
            %6 = arith.addi %4, %arg10 : index
            %7 = memref.load %arg5[%6, %6] : memref<?x20xf64>
            scf.for %arg11 = %c0 to %c30 step %c1 {
              %8 = arith.addi %5, %arg11 : index
              memref.store %cst, %alloca[] : memref<f64>
              %9 = memref.load %arg6[%6, %8] : memref<?x30xf64>
              %10 = arith.mulf %arg2, %9 : f64
              %11 = memref.load %arg6[%6, %8] : memref<?x30xf64>
              %12 = arith.mulf %arg2, %11 : f64
              %13 = memref.load %arg6[%6, %8] : memref<?x30xf64>
              %14 = arith.mulf %arg2, %13 : f64
              %15 = memref.load %arg6[%6, %8] : memref<?x30xf64>
              %16 = arith.mulf %arg2, %15 : f64
              %17 = arith.muli %arg7, %c8 : index
              %18 = arith.cmpi slt, %arg10, %c0 : index
              %19 = arith.subi %c-1, %arg10 : index
              %20 = arith.select %18, %19, %arg10 : index
              %21 = arith.divsi %20, %c4 : index
              %22 = arith.subi %c-1, %21 : index
              %23 = arith.select %18, %22, %21 : index
              %24 = arith.addi %17, %23 : index
              scf.for %arg12 = %c0 to %24 step %c1 {
                %40 = arith.muli %arg12, %c4 : index
                %41 = memref.load %arg5[%6, %40] : memref<?x20xf64>
                %42 = arith.mulf %10, %41 : f64
                %43 = memref.load %arg4[%40, %8] : memref<?x30xf64>
                %44 = arith.addf %43, %42 : f64
                memref.store %44, %arg4[%40, %8] : memref<?x30xf64>
                %45 = memref.load %arg6[%40, %8] : memref<?x30xf64>
                %46 = memref.load %arg5[%6, %40] : memref<?x20xf64>
                %47 = arith.mulf %45, %46 : f64
                %48 = memref.load %alloca[] : memref<f64>
                %49 = arith.addf %48, %47 : f64
                memref.store %49, %alloca[] : memref<f64>
                %50 = arith.addi %40, %c1 : index
                %51 = memref.load %arg5[%6, %50] : memref<?x20xf64>
                %52 = arith.mulf %12, %51 : f64
                %53 = memref.load %arg4[%50, %8] : memref<?x30xf64>
                %54 = arith.addf %53, %52 : f64
                memref.store %54, %arg4[%50, %8] : memref<?x30xf64>
                %55 = memref.load %arg6[%50, %8] : memref<?x30xf64>
                %56 = memref.load %arg5[%6, %50] : memref<?x20xf64>
                %57 = arith.mulf %55, %56 : f64
                %58 = memref.load %alloca[] : memref<f64>
                %59 = arith.addf %58, %57 : f64
                memref.store %59, %alloca[] : memref<f64>
                %60 = arith.addi %40, %c2 : index
                %61 = memref.load %arg5[%6, %60] : memref<?x20xf64>
                %62 = arith.mulf %14, %61 : f64
                %63 = memref.load %arg4[%60, %8] : memref<?x30xf64>
                %64 = arith.addf %63, %62 : f64
                memref.store %64, %arg4[%60, %8] : memref<?x30xf64>
                %65 = memref.load %arg6[%60, %8] : memref<?x30xf64>
                %66 = memref.load %arg5[%6, %60] : memref<?x20xf64>
                %67 = arith.mulf %65, %66 : f64
                %68 = memref.load %alloca[] : memref<f64>
                %69 = arith.addf %68, %67 : f64
                memref.store %69, %alloca[] : memref<f64>
                %70 = arith.addi %40, %c3 : index
                %71 = memref.load %arg5[%6, %70] : memref<?x20xf64>
                %72 = arith.mulf %16, %71 : f64
                %73 = memref.load %arg4[%70, %8] : memref<?x30xf64>
                %74 = arith.addf %73, %72 : f64
                memref.store %74, %arg4[%70, %8] : memref<?x30xf64>
                %75 = memref.load %arg6[%70, %8] : memref<?x30xf64>
                %76 = memref.load %arg5[%6, %70] : memref<?x20xf64>
                %77 = arith.mulf %75, %76 : f64
                %78 = memref.load %alloca[] : memref<f64>
                %79 = arith.addf %78, %77 : f64
                memref.store %79, %alloca[] : memref<f64>
              }
              %25 = memref.load %arg6[%6, %8] : memref<?x30xf64>
              %26 = arith.mulf %arg2, %25 : f64
              %27 = arith.remsi %6, %c4 : index
              %28 = arith.cmpi slt, %27, %c0 : index
              %29 = arith.addi %27, %c4 : index
              %30 = arith.select %28, %29, %27 : index
              scf.for %arg12 = %c0 to %30 step %c1 {
                %40 = arith.cmpi slt, %6, %c0 : index
                %41 = arith.subi %c-1, %6 : index
                %42 = arith.select %40, %41, %6 : index
                %43 = arith.divsi %42, %c4 : index
                %44 = arith.subi %c-1, %43 : index
                %45 = arith.select %40, %44, %43 : index
                %46 = arith.muli %45, %c4 : index
                %47 = arith.addi %arg12, %46 : index
                %48 = memref.load %arg5[%6, %47] : memref<?x20xf64>
                %49 = arith.mulf %26, %48 : f64
                %50 = memref.load %arg4[%47, %8] : memref<?x30xf64>
                %51 = arith.addf %50, %49 : f64
                memref.store %51, %arg4[%47, %8] : memref<?x30xf64>
                %52 = memref.load %arg6[%47, %8] : memref<?x30xf64>
                %53 = memref.load %arg5[%6, %47] : memref<?x20xf64>
                %54 = arith.mulf %52, %53 : f64
                %55 = memref.load %alloca[] : memref<f64>
                %56 = arith.addf %55, %54 : f64
                memref.store %56, %alloca[] : memref<f64>
              }
              %31 = memref.load %arg4[%6, %8] : memref<?x30xf64>
              %32 = arith.mulf %arg3, %31 : f64
              %33 = memref.load %arg6[%6, %8] : memref<?x30xf64>
              %34 = arith.mulf %arg2, %33 : f64
              %35 = arith.mulf %34, %7 : f64
              %36 = arith.addf %32, %35 : f64
              %37 = memref.load %alloca[] : memref<f64>
              %38 = arith.mulf %arg2, %37 : f64
              %39 = arith.addf %36, %38 : f64
              memref.store %39, %arg4[%6, %8] : memref<?x30xf64>
            }
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg8, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

