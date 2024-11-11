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
            scf.for %arg7 = %c0 to %c1 step %c1 {
              %5 = arith.addi %0, %arg7 : index
              scf.for %arg8 = %c0 to %c9 step %c1 {
                %6 = arith.muli %arg8, %c4 : index
                %7 = arith.addi %6, %c1 : index
                %8 = arith.addi %5, %c-1 : index
                %9 = arith.addi %7, %c-1 : index
                %10 = memref.load %arg2[%8, %9] : memref<?x40xf64>
                %11 = arith.addi %5, %c-1 : index
                %12 = memref.load %arg2[%11, %7] : memref<?x40xf64>
                %13 = arith.addf %10, %12 : f64
                %14 = arith.addi %5, %c-1 : index
                %15 = arith.addi %7, %c1 : index
                %16 = memref.load %arg2[%14, %15] : memref<?x40xf64>
                %17 = arith.addf %13, %16 : f64
                %18 = arith.addi %7, %c-1 : index
                %19 = memref.load %arg2[%5, %18] : memref<?x40xf64>
                %20 = arith.addf %17, %19 : f64
                %21 = memref.load %arg2[%5, %7] : memref<?x40xf64>
                %22 = arith.addf %20, %21 : f64
                %23 = arith.addi %7, %c1 : index
                %24 = memref.load %arg2[%5, %23] : memref<?x40xf64>
                %25 = arith.addf %22, %24 : f64
                %26 = arith.addi %5, %c1 : index
                %27 = arith.addi %7, %c-1 : index
                %28 = memref.load %arg2[%26, %27] : memref<?x40xf64>
                %29 = arith.addf %25, %28 : f64
                %30 = arith.addi %5, %c1 : index
                %31 = memref.load %arg2[%30, %7] : memref<?x40xf64>
                %32 = arith.addf %29, %31 : f64
                %33 = arith.addi %5, %c1 : index
                %34 = arith.addi %7, %c1 : index
                %35 = memref.load %arg2[%33, %34] : memref<?x40xf64>
                %36 = arith.addf %32, %35 : f64
                %37 = arith.divf %36, %cst : f64
                memref.store %37, %arg2[%5, %7] : memref<?x40xf64>
                %38 = arith.addi %7, %c1 : index
                %39 = arith.addi %5, %c-1 : index
                %40 = arith.addi %38, %c-1 : index
                %41 = memref.load %arg2[%39, %40] : memref<?x40xf64>
                %42 = arith.addi %5, %c-1 : index
                %43 = memref.load %arg2[%42, %38] : memref<?x40xf64>
                %44 = arith.addf %41, %43 : f64
                %45 = arith.addi %5, %c-1 : index
                %46 = arith.addi %38, %c1 : index
                %47 = memref.load %arg2[%45, %46] : memref<?x40xf64>
                %48 = arith.addf %44, %47 : f64
                %49 = arith.addi %38, %c-1 : index
                %50 = memref.load %arg2[%5, %49] : memref<?x40xf64>
                %51 = arith.addf %48, %50 : f64
                %52 = memref.load %arg2[%5, %38] : memref<?x40xf64>
                %53 = arith.addf %51, %52 : f64
                %54 = arith.addi %38, %c1 : index
                %55 = memref.load %arg2[%5, %54] : memref<?x40xf64>
                %56 = arith.addf %53, %55 : f64
                %57 = arith.addi %5, %c1 : index
                %58 = arith.addi %38, %c-1 : index
                %59 = memref.load %arg2[%57, %58] : memref<?x40xf64>
                %60 = arith.addf %56, %59 : f64
                %61 = arith.addi %5, %c1 : index
                %62 = memref.load %arg2[%61, %38] : memref<?x40xf64>
                %63 = arith.addf %60, %62 : f64
                %64 = arith.addi %5, %c1 : index
                %65 = arith.addi %38, %c1 : index
                %66 = memref.load %arg2[%64, %65] : memref<?x40xf64>
                %67 = arith.addf %63, %66 : f64
                %68 = arith.divf %67, %cst : f64
                memref.store %68, %arg2[%5, %38] : memref<?x40xf64>
                %69 = arith.addi %7, %c2 : index
                %70 = arith.addi %5, %c-1 : index
                %71 = arith.addi %69, %c-1 : index
                %72 = memref.load %arg2[%70, %71] : memref<?x40xf64>
                %73 = arith.addi %5, %c-1 : index
                %74 = memref.load %arg2[%73, %69] : memref<?x40xf64>
                %75 = arith.addf %72, %74 : f64
                %76 = arith.addi %5, %c-1 : index
                %77 = arith.addi %69, %c1 : index
                %78 = memref.load %arg2[%76, %77] : memref<?x40xf64>
                %79 = arith.addf %75, %78 : f64
                %80 = arith.addi %69, %c-1 : index
                %81 = memref.load %arg2[%5, %80] : memref<?x40xf64>
                %82 = arith.addf %79, %81 : f64
                %83 = memref.load %arg2[%5, %69] : memref<?x40xf64>
                %84 = arith.addf %82, %83 : f64
                %85 = arith.addi %69, %c1 : index
                %86 = memref.load %arg2[%5, %85] : memref<?x40xf64>
                %87 = arith.addf %84, %86 : f64
                %88 = arith.addi %5, %c1 : index
                %89 = arith.addi %69, %c-1 : index
                %90 = memref.load %arg2[%88, %89] : memref<?x40xf64>
                %91 = arith.addf %87, %90 : f64
                %92 = arith.addi %5, %c1 : index
                %93 = memref.load %arg2[%92, %69] : memref<?x40xf64>
                %94 = arith.addf %91, %93 : f64
                %95 = arith.addi %5, %c1 : index
                %96 = arith.addi %69, %c1 : index
                %97 = memref.load %arg2[%95, %96] : memref<?x40xf64>
                %98 = arith.addf %94, %97 : f64
                %99 = arith.divf %98, %cst : f64
                memref.store %99, %arg2[%5, %69] : memref<?x40xf64>
                %100 = arith.addi %7, %c3 : index
                %101 = arith.addi %5, %c-1 : index
                %102 = arith.addi %100, %c-1 : index
                %103 = memref.load %arg2[%101, %102] : memref<?x40xf64>
                %104 = arith.addi %5, %c-1 : index
                %105 = memref.load %arg2[%104, %100] : memref<?x40xf64>
                %106 = arith.addf %103, %105 : f64
                %107 = arith.addi %5, %c-1 : index
                %108 = arith.addi %100, %c1 : index
                %109 = memref.load %arg2[%107, %108] : memref<?x40xf64>
                %110 = arith.addf %106, %109 : f64
                %111 = arith.addi %100, %c-1 : index
                %112 = memref.load %arg2[%5, %111] : memref<?x40xf64>
                %113 = arith.addf %110, %112 : f64
                %114 = memref.load %arg2[%5, %100] : memref<?x40xf64>
                %115 = arith.addf %113, %114 : f64
                %116 = arith.addi %100, %c1 : index
                %117 = memref.load %arg2[%5, %116] : memref<?x40xf64>
                %118 = arith.addf %115, %117 : f64
                %119 = arith.addi %5, %c1 : index
                %120 = arith.addi %100, %c-1 : index
                %121 = memref.load %arg2[%119, %120] : memref<?x40xf64>
                %122 = arith.addf %118, %121 : f64
                %123 = arith.addi %5, %c1 : index
                %124 = memref.load %arg2[%123, %100] : memref<?x40xf64>
                %125 = arith.addf %122, %124 : f64
                %126 = arith.addi %5, %c1 : index
                %127 = arith.addi %100, %c1 : index
                %128 = memref.load %arg2[%126, %127] : memref<?x40xf64>
                %129 = arith.addf %125, %128 : f64
                %130 = arith.divf %129, %cst : f64
                memref.store %130, %arg2[%5, %100] : memref<?x40xf64>
              }
              scf.for %arg8 = %c0 to %c2 step %c1 {
                %6 = arith.addi %arg8, %c37 : index
                %7 = arith.addi %5, %c-1 : index
                %8 = arith.addi %6, %c-1 : index
                %9 = memref.load %arg2[%7, %8] : memref<?x40xf64>
                %10 = arith.addi %5, %c-1 : index
                %11 = memref.load %arg2[%10, %6] : memref<?x40xf64>
                %12 = arith.addf %9, %11 : f64
                %13 = arith.addi %5, %c-1 : index
                %14 = arith.addi %6, %c1 : index
                %15 = memref.load %arg2[%13, %14] : memref<?x40xf64>
                %16 = arith.addf %12, %15 : f64
                %17 = arith.addi %6, %c-1 : index
                %18 = memref.load %arg2[%5, %17] : memref<?x40xf64>
                %19 = arith.addf %16, %18 : f64
                %20 = memref.load %arg2[%5, %6] : memref<?x40xf64>
                %21 = arith.addf %19, %20 : f64
                %22 = arith.addi %6, %c1 : index
                %23 = memref.load %arg2[%5, %22] : memref<?x40xf64>
                %24 = arith.addf %21, %23 : f64
                %25 = arith.addi %5, %c1 : index
                %26 = arith.addi %6, %c-1 : index
                %27 = memref.load %arg2[%25, %26] : memref<?x40xf64>
                %28 = arith.addf %24, %27 : f64
                %29 = arith.addi %5, %c1 : index
                %30 = memref.load %arg2[%29, %6] : memref<?x40xf64>
                %31 = arith.addf %28, %30 : f64
                %32 = arith.addi %5, %c1 : index
                %33 = arith.addi %6, %c1 : index
                %34 = memref.load %arg2[%32, %33] : memref<?x40xf64>
                %35 = arith.addf %31, %34 : f64
                %36 = arith.divf %35, %cst : f64
                memref.store %36, %arg2[%5, %6] : memref<?x40xf64>
              }
            }
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

