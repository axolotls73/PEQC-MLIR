module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
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
    %1 = scf.for %arg7 = %c0 to %c30 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %4 = arith.addi %arg7, %arg9 : index
          %5 = arith.addi %arg7, %arg9 : index
          %6 = arith.addi %5, %c1 : index
          %7 = arith.cmpi slt, %6, %c0 : index
          %8 = arith.subi %c-1, %6 : index
          %9 = arith.select %7, %8, %6 : index
          %10 = arith.divsi %9, %c4 : index
          %11 = arith.subi %c-1, %10 : index
          %12 = arith.select %7, %11, %10 : index
          scf.for %arg10 = %c0 to %12 step %c1 {
            %25 = arith.muli %arg10, %c4 : index
            %26 = memref.load %arg4[%4, %25] : memref<?x30xf64>
            %27 = arith.mulf %26, %arg3 : f64
            memref.store %27, %arg4[%4, %25] : memref<?x30xf64>
            %28 = arith.addi %25, %c1 : index
            %29 = memref.load %arg4[%4, %28] : memref<?x30xf64>
            %30 = arith.mulf %29, %arg3 : f64
            memref.store %30, %arg4[%4, %28] : memref<?x30xf64>
            %31 = arith.addi %25, %c2 : index
            %32 = memref.load %arg4[%4, %31] : memref<?x30xf64>
            %33 = arith.mulf %32, %arg3 : f64
            memref.store %33, %arg4[%4, %31] : memref<?x30xf64>
            %34 = arith.addi %25, %c3 : index
            %35 = memref.load %arg4[%4, %34] : memref<?x30xf64>
            %36 = arith.mulf %35, %arg3 : f64
            memref.store %36, %arg4[%4, %34] : memref<?x30xf64>
          }
          %13 = arith.addi %arg7, %arg9 : index
          %14 = arith.addi %arg7, %arg9 : index
          %15 = arith.addi %14, %c1 : index
          %16 = arith.cmpi slt, %15, %c0 : index
          %17 = arith.subi %c-1, %15 : index
          %18 = arith.select %16, %17, %15 : index
          %19 = arith.divsi %18, %c4 : index
          %20 = arith.subi %c-1, %19 : index
          %21 = arith.select %16, %20, %19 : index
          %22 = arith.muli %21, %c-4 : index
          %23 = arith.addi %13, %22 : index
          %24 = arith.addi %23, %c1 : index
          scf.for %arg10 = %c0 to %24 step %c1 {
            %25 = arith.addi %4, %c1 : index
            %26 = arith.cmpi slt, %25, %c0 : index
            %27 = arith.subi %c-1, %25 : index
            %28 = arith.select %26, %27, %25 : index
            %29 = arith.divsi %28, %c4 : index
            %30 = arith.subi %c-1, %29 : index
            %31 = arith.select %26, %30, %29 : index
            %32 = arith.muli %31, %c4 : index
            %33 = arith.addi %arg10, %32 : index
            %34 = memref.load %arg4[%4, %33] : memref<?x30xf64>
            %35 = arith.mulf %34, %arg3 : f64
            memref.store %35, %arg4[%4, %33] : memref<?x30xf64>
          }
          scf.for %arg10 = %c0 to %c20 step %c1 {
            %25 = memref.load %arg6[%4, %arg10] : memref<?x20xf64>
            %26 = memref.load %arg5[%4, %arg10] : memref<?x20xf64>
            %27 = memref.load %arg6[%4, %arg10] : memref<?x20xf64>
            %28 = memref.load %arg5[%4, %arg10] : memref<?x20xf64>
            %29 = memref.load %arg6[%4, %arg10] : memref<?x20xf64>
            %30 = memref.load %arg5[%4, %arg10] : memref<?x20xf64>
            %31 = memref.load %arg6[%4, %arg10] : memref<?x20xf64>
            %32 = memref.load %arg5[%4, %arg10] : memref<?x20xf64>
            %33 = arith.addi %arg7, %arg9 : index
            %34 = arith.addi %33, %c1 : index
            %35 = arith.cmpi slt, %34, %c0 : index
            %36 = arith.subi %c-1, %34 : index
            %37 = arith.select %35, %36, %34 : index
            %38 = arith.divsi %37, %c4 : index
            %39 = arith.subi %c-1, %38 : index
            %40 = arith.select %35, %39, %38 : index
            scf.for %arg11 = %c0 to %40 step %c1 {
              %55 = arith.muli %arg11, %c4 : index
              %56 = memref.load %arg5[%55, %arg10] : memref<?x20xf64>
              %57 = arith.mulf %56, %arg2 : f64
              %58 = arith.mulf %57, %25 : f64
              %59 = memref.load %arg6[%55, %arg10] : memref<?x20xf64>
              %60 = arith.mulf %59, %arg2 : f64
              %61 = arith.mulf %60, %26 : f64
              %62 = arith.addf %58, %61 : f64
              %63 = memref.load %arg4[%4, %55] : memref<?x30xf64>
              %64 = arith.addf %63, %62 : f64
              memref.store %64, %arg4[%4, %55] : memref<?x30xf64>
              %65 = arith.addi %55, %c1 : index
              %66 = memref.load %arg5[%65, %arg10] : memref<?x20xf64>
              %67 = arith.mulf %66, %arg2 : f64
              %68 = arith.mulf %67, %27 : f64
              %69 = memref.load %arg6[%65, %arg10] : memref<?x20xf64>
              %70 = arith.mulf %69, %arg2 : f64
              %71 = arith.mulf %70, %28 : f64
              %72 = arith.addf %68, %71 : f64
              %73 = memref.load %arg4[%4, %65] : memref<?x30xf64>
              %74 = arith.addf %73, %72 : f64
              memref.store %74, %arg4[%4, %65] : memref<?x30xf64>
              %75 = arith.addi %55, %c2 : index
              %76 = memref.load %arg5[%75, %arg10] : memref<?x20xf64>
              %77 = arith.mulf %76, %arg2 : f64
              %78 = arith.mulf %77, %29 : f64
              %79 = memref.load %arg6[%75, %arg10] : memref<?x20xf64>
              %80 = arith.mulf %79, %arg2 : f64
              %81 = arith.mulf %80, %30 : f64
              %82 = arith.addf %78, %81 : f64
              %83 = memref.load %arg4[%4, %75] : memref<?x30xf64>
              %84 = arith.addf %83, %82 : f64
              memref.store %84, %arg4[%4, %75] : memref<?x30xf64>
              %85 = arith.addi %55, %c3 : index
              %86 = memref.load %arg5[%85, %arg10] : memref<?x20xf64>
              %87 = arith.mulf %86, %arg2 : f64
              %88 = arith.mulf %87, %31 : f64
              %89 = memref.load %arg6[%85, %arg10] : memref<?x20xf64>
              %90 = arith.mulf %89, %arg2 : f64
              %91 = arith.mulf %90, %32 : f64
              %92 = arith.addf %88, %91 : f64
              %93 = memref.load %arg4[%4, %85] : memref<?x30xf64>
              %94 = arith.addf %93, %92 : f64
              memref.store %94, %arg4[%4, %85] : memref<?x30xf64>
            }
            %41 = memref.load %arg6[%4, %arg10] : memref<?x20xf64>
            %42 = memref.load %arg5[%4, %arg10] : memref<?x20xf64>
            %43 = arith.addi %arg7, %arg9 : index
            %44 = arith.addi %arg7, %arg9 : index
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
            scf.for %arg11 = %c0 to %54 step %c1 {
              %55 = arith.addi %4, %c1 : index
              %56 = arith.cmpi slt, %55, %c0 : index
              %57 = arith.subi %c-1, %55 : index
              %58 = arith.select %56, %57, %55 : index
              %59 = arith.divsi %58, %c4 : index
              %60 = arith.subi %c-1, %59 : index
              %61 = arith.select %56, %60, %59 : index
              %62 = arith.muli %61, %c4 : index
              %63 = arith.addi %arg11, %62 : index
              %64 = memref.load %arg5[%63, %arg10] : memref<?x20xf64>
              %65 = arith.mulf %64, %arg2 : f64
              %66 = arith.mulf %65, %41 : f64
              %67 = memref.load %arg6[%63, %arg10] : memref<?x20xf64>
              %68 = arith.mulf %67, %arg2 : f64
              %69 = arith.mulf %68, %42 : f64
              %70 = arith.addf %66, %69 : f64
              %71 = memref.load %arg4[%4, %63] : memref<?x30xf64>
              %72 = arith.addf %71, %70 : f64
              memref.store %72, %arg4[%4, %63] : memref<?x30xf64>
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

