module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %c37 = arith.constant 37 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c9 = arith.constant 9 : index
    %c38 = arith.constant 38 : index
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c20 step %c1 {
      scf.for %arg4 = %c0 to %c38 step %c1 {
        %0 = arith.addi %arg4, %c1 : index
        %1 = async.create_group %c1 : !async.group
        %2 = scf.for %arg5 = %c0 to %c1 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %5 = async.create_group %c1 : !async.group
            %6 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
              %token_0 = async.execute {
                %9 = arith.addi %0, %arg7 : index
                scf.for %arg9 = %c0 to %c9 step %c1 {
                  %10 = arith.muli %arg9, %c4 : index
                  %11 = arith.addi %10, %c1 : index
                  %12 = arith.addi %9, %c-1 : index
                  %13 = arith.addi %11, %c-1 : index
                  %14 = memref.load %arg2[%12, %13] : memref<?x40xf64>
                  %15 = arith.addi %9, %c-1 : index
                  %16 = memref.load %arg2[%15, %11] : memref<?x40xf64>
                  %17 = arith.addf %14, %16 : f64
                  %18 = arith.addi %9, %c-1 : index
                  %19 = arith.addi %11, %c1 : index
                  %20 = memref.load %arg2[%18, %19] : memref<?x40xf64>
                  %21 = arith.addf %17, %20 : f64
                  %22 = arith.addi %11, %c-1 : index
                  %23 = memref.load %arg2[%9, %22] : memref<?x40xf64>
                  %24 = arith.addf %21, %23 : f64
                  %25 = memref.load %arg2[%9, %11] : memref<?x40xf64>
                  %26 = arith.addf %24, %25 : f64
                  %27 = arith.addi %11, %c1 : index
                  %28 = memref.load %arg2[%9, %27] : memref<?x40xf64>
                  %29 = arith.addf %26, %28 : f64
                  %30 = arith.addi %9, %c1 : index
                  %31 = arith.addi %11, %c-1 : index
                  %32 = memref.load %arg2[%30, %31] : memref<?x40xf64>
                  %33 = arith.addf %29, %32 : f64
                  %34 = arith.addi %9, %c1 : index
                  %35 = memref.load %arg2[%34, %11] : memref<?x40xf64>
                  %36 = arith.addf %33, %35 : f64
                  %37 = arith.addi %9, %c1 : index
                  %38 = arith.addi %11, %c1 : index
                  %39 = memref.load %arg2[%37, %38] : memref<?x40xf64>
                  %40 = arith.addf %36, %39 : f64
                  %41 = arith.divf %40, %cst : f64
                  memref.store %41, %arg2[%9, %11] : memref<?x40xf64>
                  %42 = arith.addi %11, %c1 : index
                  %43 = arith.addi %9, %c-1 : index
                  %44 = arith.addi %42, %c-1 : index
                  %45 = memref.load %arg2[%43, %44] : memref<?x40xf64>
                  %46 = arith.addi %9, %c-1 : index
                  %47 = memref.load %arg2[%46, %42] : memref<?x40xf64>
                  %48 = arith.addf %45, %47 : f64
                  %49 = arith.addi %9, %c-1 : index
                  %50 = arith.addi %42, %c1 : index
                  %51 = memref.load %arg2[%49, %50] : memref<?x40xf64>
                  %52 = arith.addf %48, %51 : f64
                  %53 = arith.addi %42, %c-1 : index
                  %54 = memref.load %arg2[%9, %53] : memref<?x40xf64>
                  %55 = arith.addf %52, %54 : f64
                  %56 = memref.load %arg2[%9, %42] : memref<?x40xf64>
                  %57 = arith.addf %55, %56 : f64
                  %58 = arith.addi %42, %c1 : index
                  %59 = memref.load %arg2[%9, %58] : memref<?x40xf64>
                  %60 = arith.addf %57, %59 : f64
                  %61 = arith.addi %9, %c1 : index
                  %62 = arith.addi %42, %c-1 : index
                  %63 = memref.load %arg2[%61, %62] : memref<?x40xf64>
                  %64 = arith.addf %60, %63 : f64
                  %65 = arith.addi %9, %c1 : index
                  %66 = memref.load %arg2[%65, %42] : memref<?x40xf64>
                  %67 = arith.addf %64, %66 : f64
                  %68 = arith.addi %9, %c1 : index
                  %69 = arith.addi %42, %c1 : index
                  %70 = memref.load %arg2[%68, %69] : memref<?x40xf64>
                  %71 = arith.addf %67, %70 : f64
                  %72 = arith.divf %71, %cst : f64
                  memref.store %72, %arg2[%9, %42] : memref<?x40xf64>
                  %73 = arith.addi %11, %c2 : index
                  %74 = arith.addi %9, %c-1 : index
                  %75 = arith.addi %73, %c-1 : index
                  %76 = memref.load %arg2[%74, %75] : memref<?x40xf64>
                  %77 = arith.addi %9, %c-1 : index
                  %78 = memref.load %arg2[%77, %73] : memref<?x40xf64>
                  %79 = arith.addf %76, %78 : f64
                  %80 = arith.addi %9, %c-1 : index
                  %81 = arith.addi %73, %c1 : index
                  %82 = memref.load %arg2[%80, %81] : memref<?x40xf64>
                  %83 = arith.addf %79, %82 : f64
                  %84 = arith.addi %73, %c-1 : index
                  %85 = memref.load %arg2[%9, %84] : memref<?x40xf64>
                  %86 = arith.addf %83, %85 : f64
                  %87 = memref.load %arg2[%9, %73] : memref<?x40xf64>
                  %88 = arith.addf %86, %87 : f64
                  %89 = arith.addi %73, %c1 : index
                  %90 = memref.load %arg2[%9, %89] : memref<?x40xf64>
                  %91 = arith.addf %88, %90 : f64
                  %92 = arith.addi %9, %c1 : index
                  %93 = arith.addi %73, %c-1 : index
                  %94 = memref.load %arg2[%92, %93] : memref<?x40xf64>
                  %95 = arith.addf %91, %94 : f64
                  %96 = arith.addi %9, %c1 : index
                  %97 = memref.load %arg2[%96, %73] : memref<?x40xf64>
                  %98 = arith.addf %95, %97 : f64
                  %99 = arith.addi %9, %c1 : index
                  %100 = arith.addi %73, %c1 : index
                  %101 = memref.load %arg2[%99, %100] : memref<?x40xf64>
                  %102 = arith.addf %98, %101 : f64
                  %103 = arith.divf %102, %cst : f64
                  memref.store %103, %arg2[%9, %73] : memref<?x40xf64>
                  %104 = arith.addi %11, %c3 : index
                  %105 = arith.addi %9, %c-1 : index
                  %106 = arith.addi %104, %c-1 : index
                  %107 = memref.load %arg2[%105, %106] : memref<?x40xf64>
                  %108 = arith.addi %9, %c-1 : index
                  %109 = memref.load %arg2[%108, %104] : memref<?x40xf64>
                  %110 = arith.addf %107, %109 : f64
                  %111 = arith.addi %9, %c-1 : index
                  %112 = arith.addi %104, %c1 : index
                  %113 = memref.load %arg2[%111, %112] : memref<?x40xf64>
                  %114 = arith.addf %110, %113 : f64
                  %115 = arith.addi %104, %c-1 : index
                  %116 = memref.load %arg2[%9, %115] : memref<?x40xf64>
                  %117 = arith.addf %114, %116 : f64
                  %118 = memref.load %arg2[%9, %104] : memref<?x40xf64>
                  %119 = arith.addf %117, %118 : f64
                  %120 = arith.addi %104, %c1 : index
                  %121 = memref.load %arg2[%9, %120] : memref<?x40xf64>
                  %122 = arith.addf %119, %121 : f64
                  %123 = arith.addi %9, %c1 : index
                  %124 = arith.addi %104, %c-1 : index
                  %125 = memref.load %arg2[%123, %124] : memref<?x40xf64>
                  %126 = arith.addf %122, %125 : f64
                  %127 = arith.addi %9, %c1 : index
                  %128 = memref.load %arg2[%127, %104] : memref<?x40xf64>
                  %129 = arith.addf %126, %128 : f64
                  %130 = arith.addi %9, %c1 : index
                  %131 = arith.addi %104, %c1 : index
                  %132 = memref.load %arg2[%130, %131] : memref<?x40xf64>
                  %133 = arith.addf %129, %132 : f64
                  %134 = arith.divf %133, %cst : f64
                  memref.store %134, %arg2[%9, %104] : memref<?x40xf64>
                }
                scf.for %arg9 = %c0 to %c2 step %c1 {
                  %10 = arith.addi %arg9, %c37 : index
                  %11 = arith.addi %9, %c-1 : index
                  %12 = arith.addi %10, %c-1 : index
                  %13 = memref.load %arg2[%11, %12] : memref<?x40xf64>
                  %14 = arith.addi %9, %c-1 : index
                  %15 = memref.load %arg2[%14, %10] : memref<?x40xf64>
                  %16 = arith.addf %13, %15 : f64
                  %17 = arith.addi %9, %c-1 : index
                  %18 = arith.addi %10, %c1 : index
                  %19 = memref.load %arg2[%17, %18] : memref<?x40xf64>
                  %20 = arith.addf %16, %19 : f64
                  %21 = arith.addi %10, %c-1 : index
                  %22 = memref.load %arg2[%9, %21] : memref<?x40xf64>
                  %23 = arith.addf %20, %22 : f64
                  %24 = memref.load %arg2[%9, %10] : memref<?x40xf64>
                  %25 = arith.addf %23, %24 : f64
                  %26 = arith.addi %10, %c1 : index
                  %27 = memref.load %arg2[%9, %26] : memref<?x40xf64>
                  %28 = arith.addf %25, %27 : f64
                  %29 = arith.addi %9, %c1 : index
                  %30 = arith.addi %10, %c-1 : index
                  %31 = memref.load %arg2[%29, %30] : memref<?x40xf64>
                  %32 = arith.addf %28, %31 : f64
                  %33 = arith.addi %9, %c1 : index
                  %34 = memref.load %arg2[%33, %10] : memref<?x40xf64>
                  %35 = arith.addf %32, %34 : f64
                  %36 = arith.addi %9, %c1 : index
                  %37 = arith.addi %10, %c1 : index
                  %38 = memref.load %arg2[%36, %37] : memref<?x40xf64>
                  %39 = arith.addf %35, %38 : f64
                  %40 = arith.divf %39, %cst : f64
                  memref.store %40, %arg2[%9, %10] : memref<?x40xf64>
                }
                async.yield
              }
              %7 = async.add_to_group %token_0, %5 : !async.token
              %8 = arith.addi %arg8, %c1 : index
              scf.yield %8 : index
            }
            async.await_all %5
            async.yield
          }
          %3 = async.add_to_group %token, %1 : !async.token
          %4 = arith.addi %arg6, %c1 : index
          scf.yield %4 : index
        }
        async.await_all %1
      }
    }
    return
  }
}

