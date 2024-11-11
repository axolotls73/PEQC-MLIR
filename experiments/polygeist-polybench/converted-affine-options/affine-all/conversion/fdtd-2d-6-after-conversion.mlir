module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c43 = arith.constant 43 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c7 = arith.constant 7 : index
    %c19 = arith.constant 19 : index
    %c31 = arith.constant 31 : index
    %c-1 = arith.constant -1 : index
    %c30 = arith.constant 30 : index
    %c20 = arith.constant 20 : index
    %c-29 = arith.constant -29 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        %0 = async.create_group %c1 : !async.group
        %1 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token = async.execute {
            scf.for %arg11 = %c0 to %c1 step %c1 {
              %4 = arith.addi %arg8, %arg11 : index
              %5 = arith.cmpi eq, %4, %c0 : index
              scf.if %5 {
                %9 = arith.muli %arg7, %c32 : index
                %10 = arith.muli %arg9, %c32 : index
                %11 = arith.addi %9, %10 : index
                %12 = arith.addi %11, %c-29 : index
                %13 = arith.maxsi %12, %c0 : index
                scf.for %arg12 = %13 to %c20 step %c1 {
                  %14 = arith.addi %arg7, %arg9 : index
                  %15 = arith.cmpi eq, %14, %c0 : index
                  scf.if %15 {
                    %31 = memref.load %arg6[%arg12] : memref<?xf64>
                    memref.store %31, %arg4[%c0, %c0] : memref<?x30xf64>
                  }
                  %16 = memref.load %arg6[%arg12] : memref<?xf64>
                  %17 = arith.muli %arg7, %c32 : index
                  %18 = arith.muli %arg9, %c32 : index
                  %19 = arith.addi %17, %18 : index
                  %20 = arith.addi %arg12, %c1 : index
                  %21 = arith.maxsi %19, %20 : index
                  %22 = arith.muli %arg7, %c32 : index
                  %23 = arith.muli %arg9, %c32 : index
                  %24 = arith.addi %22, %23 : index
                  %25 = arith.addi %24, %c32 : index
                  %26 = arith.addi %arg12, %c30 : index
                  %27 = arith.minsi %25, %26 : index
                  scf.for %arg13 = %21 to %27 step %c1 {
                    %31 = arith.muli %arg12, %c-1 : index
                    %32 = arith.addi %31, %arg13 : index
                    memref.store %16, %arg4[%c0, %32] : memref<?x30xf64>
                    %33 = arith.muli %arg12, %c-1 : index
                    %34 = arith.addi %33, %arg13 : index
                    %35 = memref.load %arg3[%c0, %34] : memref<?x30xf64>
                    %36 = arith.muli %arg12, %c-1 : index
                    %37 = arith.addi %36, %arg13 : index
                    %38 = memref.load %arg5[%c0, %37] : memref<?x30xf64>
                    %39 = arith.muli %arg12, %c-1 : index
                    %40 = arith.addi %39, %arg13 : index
                    %41 = arith.addi %40, %c-1 : index
                    %42 = memref.load %arg5[%c0, %41] : memref<?x30xf64>
                    %43 = arith.subf %38, %42 : f64
                    %44 = arith.mulf %43, %cst_0 : f64
                    %45 = arith.subf %35, %44 : f64
                    %46 = arith.muli %arg12, %c-1 : index
                    %47 = arith.addi %46, %arg13 : index
                    memref.store %45, %arg3[%c0, %47] : memref<?x30xf64>
                  }
                  %28 = arith.muli %arg12, %c-1 : index
                  %29 = arith.addi %28, %c31 : index
                  %30 = arith.minsi %29, %c19 : index
                  scf.for %arg13 = %c0 to %30 step %c1 {
                    %31 = arith.addi %arg12, %arg13 : index
                    %32 = arith.addi %31, %c1 : index
                    %33 = arith.addi %arg7, %arg9 : index
                    %34 = arith.cmpi eq, %33, %c0 : index
                    scf.if %34 {
                      %46 = arith.muli %32, %c-1 : index
                      %47 = arith.addi %46, %arg12 : index
                      %48 = memref.load %arg4[%47, %c0] : memref<?x30xf64>
                      %49 = arith.muli %32, %c-1 : index
                      %50 = arith.addi %49, %arg12 : index
                      %51 = memref.load %arg5[%50, %c0] : memref<?x30xf64>
                      %52 = arith.muli %32, %c-1 : index
                      %53 = arith.addi %52, %arg12 : index
                      %54 = arith.addi %53, %c-1 : index
                      %55 = memref.load %arg5[%54, %c0] : memref<?x30xf64>
                      %56 = arith.subf %51, %55 : f64
                      %57 = arith.mulf %56, %cst_0 : f64
                      %58 = arith.subf %48, %57 : f64
                      %59 = arith.muli %32, %c-1 : index
                      %60 = arith.addi %59, %arg12 : index
                      memref.store %58, %arg4[%60, %c0] : memref<?x30xf64>
                    }
                    %35 = arith.muli %arg7, %c32 : index
                    %36 = arith.muli %arg9, %c32 : index
                    %37 = arith.addi %35, %36 : index
                    %38 = arith.addi %arg12, %c1 : index
                    %39 = arith.maxsi %37, %38 : index
                    %40 = arith.muli %arg7, %c32 : index
                    %41 = arith.muli %arg9, %c32 : index
                    %42 = arith.addi %40, %41 : index
                    %43 = arith.addi %42, %c32 : index
                    %44 = arith.addi %arg12, %c30 : index
                    %45 = arith.minsi %43, %44 : index
                    scf.for %arg14 = %39 to %45 step %c1 {
                      %46 = arith.muli %32, %c-1 : index
                      %47 = arith.addi %46, %arg12 : index
                      %48 = arith.muli %arg12, %c-1 : index
                      %49 = arith.addi %48, %arg14 : index
                      %50 = memref.load %arg4[%47, %49] : memref<?x30xf64>
                      %51 = arith.muli %32, %c-1 : index
                      %52 = arith.addi %51, %arg12 : index
                      %53 = arith.muli %arg12, %c-1 : index
                      %54 = arith.addi %53, %arg14 : index
                      %55 = memref.load %arg5[%52, %54] : memref<?x30xf64>
                      %56 = arith.muli %32, %c-1 : index
                      %57 = arith.addi %56, %arg12 : index
                      %58 = arith.addi %57, %c-1 : index
                      %59 = arith.muli %arg12, %c-1 : index
                      %60 = arith.addi %59, %arg14 : index
                      %61 = memref.load %arg5[%58, %60] : memref<?x30xf64>
                      %62 = arith.subf %55, %61 : f64
                      %63 = arith.mulf %62, %cst_0 : f64
                      %64 = arith.subf %50, %63 : f64
                      %65 = arith.muli %32, %c-1 : index
                      %66 = arith.addi %65, %arg12 : index
                      %67 = arith.muli %arg12, %c-1 : index
                      %68 = arith.addi %67, %arg14 : index
                      memref.store %64, %arg4[%66, %68] : memref<?x30xf64>
                      %69 = arith.muli %32, %c-1 : index
                      %70 = arith.addi %69, %arg12 : index
                      %71 = arith.muli %arg12, %c-1 : index
                      %72 = arith.addi %71, %arg14 : index
                      %73 = memref.load %arg3[%70, %72] : memref<?x30xf64>
                      %74 = arith.muli %32, %c-1 : index
                      %75 = arith.addi %74, %arg12 : index
                      %76 = arith.muli %arg12, %c-1 : index
                      %77 = arith.addi %76, %arg14 : index
                      %78 = memref.load %arg5[%75, %77] : memref<?x30xf64>
                      %79 = arith.muli %32, %c-1 : index
                      %80 = arith.addi %79, %arg12 : index
                      %81 = arith.muli %arg12, %c-1 : index
                      %82 = arith.addi %81, %arg14 : index
                      %83 = arith.addi %82, %c-1 : index
                      %84 = memref.load %arg5[%80, %83] : memref<?x30xf64>
                      %85 = arith.subf %78, %84 : f64
                      %86 = arith.mulf %85, %cst_0 : f64
                      %87 = arith.subf %73, %86 : f64
                      %88 = arith.muli %32, %c-1 : index
                      %89 = arith.addi %88, %arg12 : index
                      %90 = arith.muli %arg12, %c-1 : index
                      %91 = arith.addi %90, %arg14 : index
                      memref.store %87, %arg3[%89, %91] : memref<?x30xf64>
                      %92 = arith.muli %32, %c-1 : index
                      %93 = arith.addi %92, %arg12 : index
                      %94 = arith.addi %93, %c-1 : index
                      %95 = arith.muli %arg12, %c-1 : index
                      %96 = arith.addi %95, %arg14 : index
                      %97 = arith.addi %96, %c-1 : index
                      %98 = memref.load %arg5[%94, %97] : memref<?x30xf64>
                      %99 = arith.muli %32, %c-1 : index
                      %100 = arith.addi %99, %arg12 : index
                      %101 = arith.addi %100, %c-1 : index
                      %102 = arith.muli %arg12, %c-1 : index
                      %103 = arith.addi %102, %arg14 : index
                      %104 = memref.load %arg3[%101, %103] : memref<?x30xf64>
                      %105 = arith.muli %32, %c-1 : index
                      %106 = arith.addi %105, %arg12 : index
                      %107 = arith.addi %106, %c-1 : index
                      %108 = arith.muli %arg12, %c-1 : index
                      %109 = arith.addi %108, %arg14 : index
                      %110 = arith.addi %109, %c-1 : index
                      %111 = memref.load %arg3[%107, %110] : memref<?x30xf64>
                      %112 = arith.subf %104, %111 : f64
                      %113 = arith.muli %32, %c-1 : index
                      %114 = arith.addi %113, %arg12 : index
                      %115 = arith.muli %arg12, %c-1 : index
                      %116 = arith.addi %115, %arg14 : index
                      %117 = arith.addi %116, %c-1 : index
                      %118 = memref.load %arg4[%114, %117] : memref<?x30xf64>
                      %119 = arith.addf %112, %118 : f64
                      %120 = arith.muli %32, %c-1 : index
                      %121 = arith.addi %120, %arg12 : index
                      %122 = arith.addi %121, %c-1 : index
                      %123 = arith.muli %arg12, %c-1 : index
                      %124 = arith.addi %123, %arg14 : index
                      %125 = arith.addi %124, %c-1 : index
                      %126 = memref.load %arg4[%122, %125] : memref<?x30xf64>
                      %127 = arith.subf %119, %126 : f64
                      %128 = arith.mulf %127, %cst : f64
                      %129 = arith.subf %98, %128 : f64
                      %130 = arith.muli %32, %c-1 : index
                      %131 = arith.addi %130, %arg12 : index
                      %132 = arith.addi %131, %c-1 : index
                      %133 = arith.muli %arg12, %c-1 : index
                      %134 = arith.addi %133, %arg14 : index
                      %135 = arith.addi %134, %c-1 : index
                      memref.store %129, %arg5[%132, %135] : memref<?x30xf64>
                    }
                  }
                }
              }
              %6 = arith.addi %arg8, %arg11 : index
              %7 = arith.addi %6, %c-1 : index
              %8 = arith.cmpi eq, %7, %c0 : index
              scf.if %8 {
                scf.for %arg12 = %c0 to %c7 step %c1 {
                  %9 = arith.addi %arg12, %c13 : index
                  %10 = arith.addi %arg12, %c1 : index
                  scf.for %arg13 = %c0 to %10 step %c1 {
                    %11 = arith.addi %arg13, %c32 : index
                    %12 = arith.addi %arg7, %arg9 : index
                    %13 = arith.cmpi eq, %12, %c0 : index
                    scf.if %13 {
                      %25 = arith.muli %11, %c-1 : index
                      %26 = arith.addi %25, %9 : index
                      %27 = memref.load %arg4[%26, %c0] : memref<?x30xf64>
                      %28 = arith.muli %11, %c-1 : index
                      %29 = arith.addi %28, %9 : index
                      %30 = memref.load %arg5[%29, %c0] : memref<?x30xf64>
                      %31 = arith.muli %11, %c-1 : index
                      %32 = arith.addi %31, %9 : index
                      %33 = arith.addi %32, %c-1 : index
                      %34 = memref.load %arg5[%33, %c0] : memref<?x30xf64>
                      %35 = arith.subf %30, %34 : f64
                      %36 = arith.mulf %35, %cst_0 : f64
                      %37 = arith.subf %27, %36 : f64
                      %38 = arith.muli %11, %c-1 : index
                      %39 = arith.addi %38, %9 : index
                      memref.store %37, %arg4[%39, %c0] : memref<?x30xf64>
                    }
                    %14 = arith.muli %arg7, %c32 : index
                    %15 = arith.muli %arg9, %c32 : index
                    %16 = arith.addi %14, %15 : index
                    %17 = arith.addi %arg12, %c14 : index
                    %18 = arith.maxsi %16, %17 : index
                    %19 = arith.muli %arg7, %c32 : index
                    %20 = arith.muli %arg9, %c32 : index
                    %21 = arith.addi %19, %20 : index
                    %22 = arith.addi %21, %c32 : index
                    %23 = arith.addi %arg12, %c43 : index
                    %24 = arith.minsi %22, %23 : index
                    scf.for %arg14 = %18 to %24 step %c1 {
                      %25 = arith.muli %11, %c-1 : index
                      %26 = arith.addi %25, %9 : index
                      %27 = arith.muli %9, %c-1 : index
                      %28 = arith.addi %27, %arg14 : index
                      %29 = memref.load %arg4[%26, %28] : memref<?x30xf64>
                      %30 = arith.muli %11, %c-1 : index
                      %31 = arith.addi %30, %9 : index
                      %32 = arith.muli %9, %c-1 : index
                      %33 = arith.addi %32, %arg14 : index
                      %34 = memref.load %arg5[%31, %33] : memref<?x30xf64>
                      %35 = arith.muli %11, %c-1 : index
                      %36 = arith.addi %35, %9 : index
                      %37 = arith.addi %36, %c-1 : index
                      %38 = arith.muli %9, %c-1 : index
                      %39 = arith.addi %38, %arg14 : index
                      %40 = memref.load %arg5[%37, %39] : memref<?x30xf64>
                      %41 = arith.subf %34, %40 : f64
                      %42 = arith.mulf %41, %cst_0 : f64
                      %43 = arith.subf %29, %42 : f64
                      %44 = arith.muli %11, %c-1 : index
                      %45 = arith.addi %44, %9 : index
                      %46 = arith.muli %9, %c-1 : index
                      %47 = arith.addi %46, %arg14 : index
                      memref.store %43, %arg4[%45, %47] : memref<?x30xf64>
                      %48 = arith.muli %11, %c-1 : index
                      %49 = arith.addi %48, %9 : index
                      %50 = arith.muli %9, %c-1 : index
                      %51 = arith.addi %50, %arg14 : index
                      %52 = memref.load %arg3[%49, %51] : memref<?x30xf64>
                      %53 = arith.muli %11, %c-1 : index
                      %54 = arith.addi %53, %9 : index
                      %55 = arith.muli %9, %c-1 : index
                      %56 = arith.addi %55, %arg14 : index
                      %57 = memref.load %arg5[%54, %56] : memref<?x30xf64>
                      %58 = arith.muli %11, %c-1 : index
                      %59 = arith.addi %58, %9 : index
                      %60 = arith.muli %9, %c-1 : index
                      %61 = arith.addi %60, %arg14 : index
                      %62 = arith.addi %61, %c-1 : index
                      %63 = memref.load %arg5[%59, %62] : memref<?x30xf64>
                      %64 = arith.subf %57, %63 : f64
                      %65 = arith.mulf %64, %cst_0 : f64
                      %66 = arith.subf %52, %65 : f64
                      %67 = arith.muli %11, %c-1 : index
                      %68 = arith.addi %67, %9 : index
                      %69 = arith.muli %9, %c-1 : index
                      %70 = arith.addi %69, %arg14 : index
                      memref.store %66, %arg3[%68, %70] : memref<?x30xf64>
                      %71 = arith.muli %11, %c-1 : index
                      %72 = arith.addi %71, %9 : index
                      %73 = arith.addi %72, %c-1 : index
                      %74 = arith.muli %9, %c-1 : index
                      %75 = arith.addi %74, %arg14 : index
                      %76 = arith.addi %75, %c-1 : index
                      %77 = memref.load %arg5[%73, %76] : memref<?x30xf64>
                      %78 = arith.muli %11, %c-1 : index
                      %79 = arith.addi %78, %9 : index
                      %80 = arith.addi %79, %c-1 : index
                      %81 = arith.muli %9, %c-1 : index
                      %82 = arith.addi %81, %arg14 : index
                      %83 = memref.load %arg3[%80, %82] : memref<?x30xf64>
                      %84 = arith.muli %11, %c-1 : index
                      %85 = arith.addi %84, %9 : index
                      %86 = arith.addi %85, %c-1 : index
                      %87 = arith.muli %9, %c-1 : index
                      %88 = arith.addi %87, %arg14 : index
                      %89 = arith.addi %88, %c-1 : index
                      %90 = memref.load %arg3[%86, %89] : memref<?x30xf64>
                      %91 = arith.subf %83, %90 : f64
                      %92 = arith.muli %11, %c-1 : index
                      %93 = arith.addi %92, %9 : index
                      %94 = arith.muli %9, %c-1 : index
                      %95 = arith.addi %94, %arg14 : index
                      %96 = arith.addi %95, %c-1 : index
                      %97 = memref.load %arg4[%93, %96] : memref<?x30xf64>
                      %98 = arith.addf %91, %97 : f64
                      %99 = arith.muli %11, %c-1 : index
                      %100 = arith.addi %99, %9 : index
                      %101 = arith.addi %100, %c-1 : index
                      %102 = arith.muli %9, %c-1 : index
                      %103 = arith.addi %102, %arg14 : index
                      %104 = arith.addi %103, %c-1 : index
                      %105 = memref.load %arg4[%101, %104] : memref<?x30xf64>
                      %106 = arith.subf %98, %105 : f64
                      %107 = arith.mulf %106, %cst : f64
                      %108 = arith.subf %77, %107 : f64
                      %109 = arith.muli %11, %c-1 : index
                      %110 = arith.addi %109, %9 : index
                      %111 = arith.addi %110, %c-1 : index
                      %112 = arith.muli %9, %c-1 : index
                      %113 = arith.addi %112, %arg14 : index
                      %114 = arith.addi %113, %c-1 : index
                      memref.store %108, %arg5[%111, %114] : memref<?x30xf64>
                    }
                  }
                }
              }
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

