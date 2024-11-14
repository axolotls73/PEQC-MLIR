module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %c20 = arith.constant 20 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c30 = arith.constant 30 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c30 step %c1 {
          %5 = arith.addi %4, %arg9 : index
          %6 = arith.muli %arg7, %c32 : index
          %7 = arith.addi %arg9, %6 : index
          %8 = arith.addi %7, %c1 : index
          %9 = arith.cmpi slt, %8, %c0 : index
          %10 = arith.subi %c-1, %8 : index
          %11 = arith.select %9, %10, %8 : index
          %12 = arith.divsi %11, %c4 : index
          %13 = arith.subi %c-1, %12 : index
          %14 = arith.select %9, %13, %12 : index
          scf.for %arg10 = %c0 to %14 step %c1 {
            %29 = arith.muli %arg10, %c4 : index
            %30 = memref.load %arg4[%5, %29] : memref<?x30xf64>
            %31 = arith.mulf %30, %arg3 : f64
            memref.store %31, %arg4[%5, %29] : memref<?x30xf64>
            %32 = arith.addi %29, %c1 : index
            %33 = memref.load %arg4[%5, %32] : memref<?x30xf64>
            %34 = arith.mulf %33, %arg3 : f64
            memref.store %34, %arg4[%5, %32] : memref<?x30xf64>
            %35 = arith.addi %29, %c2 : index
            %36 = memref.load %arg4[%5, %35] : memref<?x30xf64>
            %37 = arith.mulf %36, %arg3 : f64
            memref.store %37, %arg4[%5, %35] : memref<?x30xf64>
            %38 = arith.addi %29, %c3 : index
            %39 = memref.load %arg4[%5, %38] : memref<?x30xf64>
            %40 = arith.mulf %39, %arg3 : f64
            memref.store %40, %arg4[%5, %38] : memref<?x30xf64>
          }
          %15 = arith.muli %arg7, %c32 : index
          %16 = arith.addi %arg9, %15 : index
          %17 = arith.muli %arg7, %c32 : index
          %18 = arith.addi %arg9, %17 : index
          %19 = arith.addi %18, %c1 : index
          %20 = arith.cmpi slt, %19, %c0 : index
          %21 = arith.subi %c-1, %19 : index
          %22 = arith.select %20, %21, %19 : index
          %23 = arith.divsi %22, %c4 : index
          %24 = arith.subi %c-1, %23 : index
          %25 = arith.select %20, %24, %23 : index
          %26 = arith.muli %25, %c-4 : index
          %27 = arith.addi %16, %26 : index
          %28 = arith.addi %27, %c1 : index
          scf.for %arg10 = %c0 to %28 step %c1 {
            %29 = arith.addi %5, %c1 : index
            %30 = arith.cmpi slt, %29, %c0 : index
            %31 = arith.subi %c-1, %29 : index
            %32 = arith.select %30, %31, %29 : index
            %33 = arith.divsi %32, %c4 : index
            %34 = arith.subi %c-1, %33 : index
            %35 = arith.select %30, %34, %33 : index
            %36 = arith.muli %35, %c4 : index
            %37 = arith.addi %arg10, %36 : index
            %38 = memref.load %arg4[%5, %37] : memref<?x30xf64>
            %39 = arith.mulf %38, %arg3 : f64
            memref.store %39, %arg4[%5, %37] : memref<?x30xf64>
          }
          scf.for %arg10 = %c0 to %c20 step %c1 {
            %29 = memref.load %arg6[%5, %arg10] : memref<?x20xf64>
            %30 = memref.load %arg5[%5, %arg10] : memref<?x20xf64>
            %31 = memref.load %arg6[%5, %arg10] : memref<?x20xf64>
            %32 = memref.load %arg5[%5, %arg10] : memref<?x20xf64>
            %33 = memref.load %arg6[%5, %arg10] : memref<?x20xf64>
            %34 = memref.load %arg5[%5, %arg10] : memref<?x20xf64>
            %35 = memref.load %arg6[%5, %arg10] : memref<?x20xf64>
            %36 = memref.load %arg5[%5, %arg10] : memref<?x20xf64>
            %37 = arith.muli %arg7, %c32 : index
            %38 = arith.addi %arg9, %37 : index
            %39 = arith.addi %38, %c1 : index
            %40 = arith.cmpi slt, %39, %c0 : index
            %41 = arith.subi %c-1, %39 : index
            %42 = arith.select %40, %41, %39 : index
            %43 = arith.divsi %42, %c4 : index
            %44 = arith.subi %c-1, %43 : index
            %45 = arith.select %40, %44, %43 : index
            scf.for %arg11 = %c0 to %45 step %c1 {
              %62 = arith.muli %arg11, %c4 : index
              %63 = memref.load %arg5[%62, %arg10] : memref<?x20xf64>
              %64 = arith.mulf %63, %arg2 : f64
              %65 = arith.mulf %64, %29 : f64
              %66 = memref.load %arg6[%62, %arg10] : memref<?x20xf64>
              %67 = arith.mulf %66, %arg2 : f64
              %68 = arith.mulf %67, %30 : f64
              %69 = arith.addf %65, %68 : f64
              %70 = memref.load %arg4[%5, %62] : memref<?x30xf64>
              %71 = arith.addf %70, %69 : f64
              memref.store %71, %arg4[%5, %62] : memref<?x30xf64>
              %72 = arith.addi %62, %c1 : index
              %73 = memref.load %arg5[%72, %arg10] : memref<?x20xf64>
              %74 = arith.mulf %73, %arg2 : f64
              %75 = arith.mulf %74, %31 : f64
              %76 = memref.load %arg6[%72, %arg10] : memref<?x20xf64>
              %77 = arith.mulf %76, %arg2 : f64
              %78 = arith.mulf %77, %32 : f64
              %79 = arith.addf %75, %78 : f64
              %80 = memref.load %arg4[%5, %72] : memref<?x30xf64>
              %81 = arith.addf %80, %79 : f64
              memref.store %81, %arg4[%5, %72] : memref<?x30xf64>
              %82 = arith.addi %62, %c2 : index
              %83 = memref.load %arg5[%82, %arg10] : memref<?x20xf64>
              %84 = arith.mulf %83, %arg2 : f64
              %85 = arith.mulf %84, %33 : f64
              %86 = memref.load %arg6[%82, %arg10] : memref<?x20xf64>
              %87 = arith.mulf %86, %arg2 : f64
              %88 = arith.mulf %87, %34 : f64
              %89 = arith.addf %85, %88 : f64
              %90 = memref.load %arg4[%5, %82] : memref<?x30xf64>
              %91 = arith.addf %90, %89 : f64
              memref.store %91, %arg4[%5, %82] : memref<?x30xf64>
              %92 = arith.addi %62, %c3 : index
              %93 = memref.load %arg5[%92, %arg10] : memref<?x20xf64>
              %94 = arith.mulf %93, %arg2 : f64
              %95 = arith.mulf %94, %35 : f64
              %96 = memref.load %arg6[%92, %arg10] : memref<?x20xf64>
              %97 = arith.mulf %96, %arg2 : f64
              %98 = arith.mulf %97, %36 : f64
              %99 = arith.addf %95, %98 : f64
              %100 = memref.load %arg4[%5, %92] : memref<?x30xf64>
              %101 = arith.addf %100, %99 : f64
              memref.store %101, %arg4[%5, %92] : memref<?x30xf64>
            }
            %46 = memref.load %arg6[%5, %arg10] : memref<?x20xf64>
            %47 = memref.load %arg5[%5, %arg10] : memref<?x20xf64>
            %48 = arith.muli %arg7, %c32 : index
            %49 = arith.addi %arg9, %48 : index
            %50 = arith.muli %arg7, %c32 : index
            %51 = arith.addi %arg9, %50 : index
            %52 = arith.addi %51, %c1 : index
            %53 = arith.cmpi slt, %52, %c0 : index
            %54 = arith.subi %c-1, %52 : index
            %55 = arith.select %53, %54, %52 : index
            %56 = arith.divsi %55, %c4 : index
            %57 = arith.subi %c-1, %56 : index
            %58 = arith.select %53, %57, %56 : index
            %59 = arith.muli %58, %c-4 : index
            %60 = arith.addi %49, %59 : index
            %61 = arith.addi %60, %c1 : index
            scf.for %arg11 = %c0 to %61 step %c1 {
              %62 = arith.addi %5, %c1 : index
              %63 = arith.cmpi slt, %62, %c0 : index
              %64 = arith.subi %c-1, %62 : index
              %65 = arith.select %63, %64, %62 : index
              %66 = arith.divsi %65, %c4 : index
              %67 = arith.subi %c-1, %66 : index
              %68 = arith.select %63, %67, %66 : index
              %69 = arith.muli %68, %c4 : index
              %70 = arith.addi %arg11, %69 : index
              %71 = memref.load %arg5[%70, %arg10] : memref<?x20xf64>
              %72 = arith.mulf %71, %arg2 : f64
              %73 = arith.mulf %72, %46 : f64
              %74 = memref.load %arg6[%70, %arg10] : memref<?x20xf64>
              %75 = arith.mulf %74, %arg2 : f64
              %76 = arith.mulf %75, %47 : f64
              %77 = arith.addf %73, %76 : f64
              %78 = memref.load %arg4[%5, %70] : memref<?x30xf64>
              %79 = arith.addf %78, %77 : f64
              memref.store %79, %arg4[%5, %70] : memref<?x30xf64>
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

