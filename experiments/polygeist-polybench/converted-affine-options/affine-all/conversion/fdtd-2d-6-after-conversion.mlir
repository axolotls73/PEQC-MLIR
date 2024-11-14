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
    %c1024 = arith.constant 1024 : index
    %c2 = arith.constant 2 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c1 step %c1 {
          scf.for %arg10 = %c0 to %c2 step %c1 {
            scf.for %arg11 = %c0 to %c2 step %c1 {
              %4 = arith.muli %arg9, %c32 : index
              %5 = arith.addi %arg11, %4 : index
              %6 = arith.cmpi eq, %5, %c0 : index
              scf.if %6 {
                %11 = arith.muli %arg10, %c32 : index
                %12 = arith.muli %arg7, %c1024 : index
                %13 = arith.addi %11, %12 : index
                %14 = arith.addi %13, %c-29 : index
                %15 = arith.maxsi %14, %c0 : index
                scf.for %arg12 = %15 to %c20 step %c1 {
                  %16 = arith.muli %arg7, %c32 : index
                  %17 = arith.addi %arg10, %16 : index
                  %18 = arith.cmpi eq, %17, %c0 : index
                  scf.if %18 {
                    %34 = memref.load %arg6[%arg12] : memref<?xf64>
                    memref.store %34, %arg4[%c0, %c0] : memref<?x30xf64>
                  }
                  %19 = memref.load %arg6[%arg12] : memref<?xf64>
                  %20 = arith.muli %arg10, %c32 : index
                  %21 = arith.muli %arg7, %c1024 : index
                  %22 = arith.addi %20, %21 : index
                  %23 = arith.addi %arg12, %c1 : index
                  %24 = arith.maxsi %22, %23 : index
                  %25 = arith.muli %arg10, %c32 : index
                  %26 = arith.muli %arg7, %c1024 : index
                  %27 = arith.addi %25, %26 : index
                  %28 = arith.addi %27, %c32 : index
                  %29 = arith.addi %arg12, %c30 : index
                  %30 = arith.minsi %28, %29 : index
                  scf.for %arg13 = %24 to %30 step %c1 {
                    %34 = arith.muli %arg12, %c-1 : index
                    %35 = arith.addi %34, %arg13 : index
                    memref.store %19, %arg4[%c0, %35] : memref<?x30xf64>
                    %36 = arith.muli %arg12, %c-1 : index
                    %37 = arith.addi %36, %arg13 : index
                    %38 = memref.load %arg3[%c0, %37] : memref<?x30xf64>
                    %39 = arith.muli %arg12, %c-1 : index
                    %40 = arith.addi %39, %arg13 : index
                    %41 = memref.load %arg5[%c0, %40] : memref<?x30xf64>
                    %42 = arith.muli %arg12, %c-1 : index
                    %43 = arith.addi %42, %arg13 : index
                    %44 = arith.addi %43, %c-1 : index
                    %45 = memref.load %arg5[%c0, %44] : memref<?x30xf64>
                    %46 = arith.subf %41, %45 : f64
                    %47 = arith.mulf %46, %cst_0 : f64
                    %48 = arith.subf %38, %47 : f64
                    %49 = arith.muli %arg12, %c-1 : index
                    %50 = arith.addi %49, %arg13 : index
                    memref.store %48, %arg3[%c0, %50] : memref<?x30xf64>
                  }
                  %31 = arith.muli %arg12, %c-1 : index
                  %32 = arith.addi %31, %c31 : index
                  %33 = arith.minsi %32, %c19 : index
                  scf.for %arg13 = %c0 to %33 step %c1 {
                    %34 = arith.addi %arg12, %arg13 : index
                    %35 = arith.addi %34, %c1 : index
                    %36 = arith.muli %arg7, %c32 : index
                    %37 = arith.addi %arg10, %36 : index
                    %38 = arith.cmpi eq, %37, %c0 : index
                    scf.if %38 {
                      %50 = arith.muli %35, %c-1 : index
                      %51 = arith.addi %50, %arg12 : index
                      %52 = memref.load %arg4[%51, %c0] : memref<?x30xf64>
                      %53 = arith.muli %35, %c-1 : index
                      %54 = arith.addi %53, %arg12 : index
                      %55 = memref.load %arg5[%54, %c0] : memref<?x30xf64>
                      %56 = arith.muli %35, %c-1 : index
                      %57 = arith.addi %56, %arg12 : index
                      %58 = arith.addi %57, %c-1 : index
                      %59 = memref.load %arg5[%58, %c0] : memref<?x30xf64>
                      %60 = arith.subf %55, %59 : f64
                      %61 = arith.mulf %60, %cst_0 : f64
                      %62 = arith.subf %52, %61 : f64
                      %63 = arith.muli %35, %c-1 : index
                      %64 = arith.addi %63, %arg12 : index
                      memref.store %62, %arg4[%64, %c0] : memref<?x30xf64>
                    }
                    %39 = arith.muli %arg10, %c32 : index
                    %40 = arith.muli %arg7, %c1024 : index
                    %41 = arith.addi %39, %40 : index
                    %42 = arith.addi %arg12, %c1 : index
                    %43 = arith.maxsi %41, %42 : index
                    %44 = arith.muli %arg10, %c32 : index
                    %45 = arith.muli %arg7, %c1024 : index
                    %46 = arith.addi %44, %45 : index
                    %47 = arith.addi %46, %c32 : index
                    %48 = arith.addi %arg12, %c30 : index
                    %49 = arith.minsi %47, %48 : index
                    scf.for %arg14 = %43 to %49 step %c1 {
                      %50 = arith.muli %35, %c-1 : index
                      %51 = arith.addi %50, %arg12 : index
                      %52 = arith.muli %arg12, %c-1 : index
                      %53 = arith.addi %52, %arg14 : index
                      %54 = memref.load %arg4[%51, %53] : memref<?x30xf64>
                      %55 = arith.muli %35, %c-1 : index
                      %56 = arith.addi %55, %arg12 : index
                      %57 = arith.muli %arg12, %c-1 : index
                      %58 = arith.addi %57, %arg14 : index
                      %59 = memref.load %arg5[%56, %58] : memref<?x30xf64>
                      %60 = arith.muli %35, %c-1 : index
                      %61 = arith.addi %60, %arg12 : index
                      %62 = arith.addi %61, %c-1 : index
                      %63 = arith.muli %arg12, %c-1 : index
                      %64 = arith.addi %63, %arg14 : index
                      %65 = memref.load %arg5[%62, %64] : memref<?x30xf64>
                      %66 = arith.subf %59, %65 : f64
                      %67 = arith.mulf %66, %cst_0 : f64
                      %68 = arith.subf %54, %67 : f64
                      %69 = arith.muli %35, %c-1 : index
                      %70 = arith.addi %69, %arg12 : index
                      %71 = arith.muli %arg12, %c-1 : index
                      %72 = arith.addi %71, %arg14 : index
                      memref.store %68, %arg4[%70, %72] : memref<?x30xf64>
                      %73 = arith.muli %35, %c-1 : index
                      %74 = arith.addi %73, %arg12 : index
                      %75 = arith.muli %arg12, %c-1 : index
                      %76 = arith.addi %75, %arg14 : index
                      %77 = memref.load %arg3[%74, %76] : memref<?x30xf64>
                      %78 = arith.muli %35, %c-1 : index
                      %79 = arith.addi %78, %arg12 : index
                      %80 = arith.muli %arg12, %c-1 : index
                      %81 = arith.addi %80, %arg14 : index
                      %82 = memref.load %arg5[%79, %81] : memref<?x30xf64>
                      %83 = arith.muli %35, %c-1 : index
                      %84 = arith.addi %83, %arg12 : index
                      %85 = arith.muli %arg12, %c-1 : index
                      %86 = arith.addi %85, %arg14 : index
                      %87 = arith.addi %86, %c-1 : index
                      %88 = memref.load %arg5[%84, %87] : memref<?x30xf64>
                      %89 = arith.subf %82, %88 : f64
                      %90 = arith.mulf %89, %cst_0 : f64
                      %91 = arith.subf %77, %90 : f64
                      %92 = arith.muli %35, %c-1 : index
                      %93 = arith.addi %92, %arg12 : index
                      %94 = arith.muli %arg12, %c-1 : index
                      %95 = arith.addi %94, %arg14 : index
                      memref.store %91, %arg3[%93, %95] : memref<?x30xf64>
                      %96 = arith.muli %35, %c-1 : index
                      %97 = arith.addi %96, %arg12 : index
                      %98 = arith.addi %97, %c-1 : index
                      %99 = arith.muli %arg12, %c-1 : index
                      %100 = arith.addi %99, %arg14 : index
                      %101 = arith.addi %100, %c-1 : index
                      %102 = memref.load %arg5[%98, %101] : memref<?x30xf64>
                      %103 = arith.muli %35, %c-1 : index
                      %104 = arith.addi %103, %arg12 : index
                      %105 = arith.addi %104, %c-1 : index
                      %106 = arith.muli %arg12, %c-1 : index
                      %107 = arith.addi %106, %arg14 : index
                      %108 = memref.load %arg3[%105, %107] : memref<?x30xf64>
                      %109 = arith.muli %35, %c-1 : index
                      %110 = arith.addi %109, %arg12 : index
                      %111 = arith.addi %110, %c-1 : index
                      %112 = arith.muli %arg12, %c-1 : index
                      %113 = arith.addi %112, %arg14 : index
                      %114 = arith.addi %113, %c-1 : index
                      %115 = memref.load %arg3[%111, %114] : memref<?x30xf64>
                      %116 = arith.subf %108, %115 : f64
                      %117 = arith.muli %35, %c-1 : index
                      %118 = arith.addi %117, %arg12 : index
                      %119 = arith.muli %arg12, %c-1 : index
                      %120 = arith.addi %119, %arg14 : index
                      %121 = arith.addi %120, %c-1 : index
                      %122 = memref.load %arg4[%118, %121] : memref<?x30xf64>
                      %123 = arith.addf %116, %122 : f64
                      %124 = arith.muli %35, %c-1 : index
                      %125 = arith.addi %124, %arg12 : index
                      %126 = arith.addi %125, %c-1 : index
                      %127 = arith.muli %arg12, %c-1 : index
                      %128 = arith.addi %127, %arg14 : index
                      %129 = arith.addi %128, %c-1 : index
                      %130 = memref.load %arg4[%126, %129] : memref<?x30xf64>
                      %131 = arith.subf %123, %130 : f64
                      %132 = arith.mulf %131, %cst : f64
                      %133 = arith.subf %102, %132 : f64
                      %134 = arith.muli %35, %c-1 : index
                      %135 = arith.addi %134, %arg12 : index
                      %136 = arith.addi %135, %c-1 : index
                      %137 = arith.muli %arg12, %c-1 : index
                      %138 = arith.addi %137, %arg14 : index
                      %139 = arith.addi %138, %c-1 : index
                      memref.store %133, %arg5[%136, %139] : memref<?x30xf64>
                    }
                  }
                }
              }
              %7 = arith.muli %arg9, %c32 : index
              %8 = arith.addi %arg11, %7 : index
              %9 = arith.addi %8, %c-1 : index
              %10 = arith.cmpi eq, %9, %c0 : index
              scf.if %10 {
                scf.for %arg12 = %c0 to %c7 step %c1 {
                  %11 = arith.addi %arg12, %c13 : index
                  %12 = arith.addi %arg12, %c1 : index
                  scf.for %arg13 = %c0 to %12 step %c1 {
                    %13 = arith.addi %arg13, %c32 : index
                    %14 = arith.muli %arg7, %c32 : index
                    %15 = arith.addi %arg10, %14 : index
                    %16 = arith.cmpi eq, %15, %c0 : index
                    scf.if %16 {
                      %28 = arith.muli %13, %c-1 : index
                      %29 = arith.addi %28, %11 : index
                      %30 = memref.load %arg4[%29, %c0] : memref<?x30xf64>
                      %31 = arith.muli %13, %c-1 : index
                      %32 = arith.addi %31, %11 : index
                      %33 = memref.load %arg5[%32, %c0] : memref<?x30xf64>
                      %34 = arith.muli %13, %c-1 : index
                      %35 = arith.addi %34, %11 : index
                      %36 = arith.addi %35, %c-1 : index
                      %37 = memref.load %arg5[%36, %c0] : memref<?x30xf64>
                      %38 = arith.subf %33, %37 : f64
                      %39 = arith.mulf %38, %cst_0 : f64
                      %40 = arith.subf %30, %39 : f64
                      %41 = arith.muli %13, %c-1 : index
                      %42 = arith.addi %41, %11 : index
                      memref.store %40, %arg4[%42, %c0] : memref<?x30xf64>
                    }
                    %17 = arith.muli %arg10, %c32 : index
                    %18 = arith.muli %arg7, %c1024 : index
                    %19 = arith.addi %17, %18 : index
                    %20 = arith.addi %arg12, %c14 : index
                    %21 = arith.maxsi %19, %20 : index
                    %22 = arith.muli %arg10, %c32 : index
                    %23 = arith.muli %arg7, %c1024 : index
                    %24 = arith.addi %22, %23 : index
                    %25 = arith.addi %24, %c32 : index
                    %26 = arith.addi %arg12, %c43 : index
                    %27 = arith.minsi %25, %26 : index
                    scf.for %arg14 = %21 to %27 step %c1 {
                      %28 = arith.muli %13, %c-1 : index
                      %29 = arith.addi %28, %11 : index
                      %30 = arith.muli %11, %c-1 : index
                      %31 = arith.addi %30, %arg14 : index
                      %32 = memref.load %arg4[%29, %31] : memref<?x30xf64>
                      %33 = arith.muli %13, %c-1 : index
                      %34 = arith.addi %33, %11 : index
                      %35 = arith.muli %11, %c-1 : index
                      %36 = arith.addi %35, %arg14 : index
                      %37 = memref.load %arg5[%34, %36] : memref<?x30xf64>
                      %38 = arith.muli %13, %c-1 : index
                      %39 = arith.addi %38, %11 : index
                      %40 = arith.addi %39, %c-1 : index
                      %41 = arith.muli %11, %c-1 : index
                      %42 = arith.addi %41, %arg14 : index
                      %43 = memref.load %arg5[%40, %42] : memref<?x30xf64>
                      %44 = arith.subf %37, %43 : f64
                      %45 = arith.mulf %44, %cst_0 : f64
                      %46 = arith.subf %32, %45 : f64
                      %47 = arith.muli %13, %c-1 : index
                      %48 = arith.addi %47, %11 : index
                      %49 = arith.muli %11, %c-1 : index
                      %50 = arith.addi %49, %arg14 : index
                      memref.store %46, %arg4[%48, %50] : memref<?x30xf64>
                      %51 = arith.muli %13, %c-1 : index
                      %52 = arith.addi %51, %11 : index
                      %53 = arith.muli %11, %c-1 : index
                      %54 = arith.addi %53, %arg14 : index
                      %55 = memref.load %arg3[%52, %54] : memref<?x30xf64>
                      %56 = arith.muli %13, %c-1 : index
                      %57 = arith.addi %56, %11 : index
                      %58 = arith.muli %11, %c-1 : index
                      %59 = arith.addi %58, %arg14 : index
                      %60 = memref.load %arg5[%57, %59] : memref<?x30xf64>
                      %61 = arith.muli %13, %c-1 : index
                      %62 = arith.addi %61, %11 : index
                      %63 = arith.muli %11, %c-1 : index
                      %64 = arith.addi %63, %arg14 : index
                      %65 = arith.addi %64, %c-1 : index
                      %66 = memref.load %arg5[%62, %65] : memref<?x30xf64>
                      %67 = arith.subf %60, %66 : f64
                      %68 = arith.mulf %67, %cst_0 : f64
                      %69 = arith.subf %55, %68 : f64
                      %70 = arith.muli %13, %c-1 : index
                      %71 = arith.addi %70, %11 : index
                      %72 = arith.muli %11, %c-1 : index
                      %73 = arith.addi %72, %arg14 : index
                      memref.store %69, %arg3[%71, %73] : memref<?x30xf64>
                      %74 = arith.muli %13, %c-1 : index
                      %75 = arith.addi %74, %11 : index
                      %76 = arith.addi %75, %c-1 : index
                      %77 = arith.muli %11, %c-1 : index
                      %78 = arith.addi %77, %arg14 : index
                      %79 = arith.addi %78, %c-1 : index
                      %80 = memref.load %arg5[%76, %79] : memref<?x30xf64>
                      %81 = arith.muli %13, %c-1 : index
                      %82 = arith.addi %81, %11 : index
                      %83 = arith.addi %82, %c-1 : index
                      %84 = arith.muli %11, %c-1 : index
                      %85 = arith.addi %84, %arg14 : index
                      %86 = memref.load %arg3[%83, %85] : memref<?x30xf64>
                      %87 = arith.muli %13, %c-1 : index
                      %88 = arith.addi %87, %11 : index
                      %89 = arith.addi %88, %c-1 : index
                      %90 = arith.muli %11, %c-1 : index
                      %91 = arith.addi %90, %arg14 : index
                      %92 = arith.addi %91, %c-1 : index
                      %93 = memref.load %arg3[%89, %92] : memref<?x30xf64>
                      %94 = arith.subf %86, %93 : f64
                      %95 = arith.muli %13, %c-1 : index
                      %96 = arith.addi %95, %11 : index
                      %97 = arith.muli %11, %c-1 : index
                      %98 = arith.addi %97, %arg14 : index
                      %99 = arith.addi %98, %c-1 : index
                      %100 = memref.load %arg4[%96, %99] : memref<?x30xf64>
                      %101 = arith.addf %94, %100 : f64
                      %102 = arith.muli %13, %c-1 : index
                      %103 = arith.addi %102, %11 : index
                      %104 = arith.addi %103, %c-1 : index
                      %105 = arith.muli %11, %c-1 : index
                      %106 = arith.addi %105, %arg14 : index
                      %107 = arith.addi %106, %c-1 : index
                      %108 = memref.load %arg4[%104, %107] : memref<?x30xf64>
                      %109 = arith.subf %101, %108 : f64
                      %110 = arith.mulf %109, %cst : f64
                      %111 = arith.subf %80, %110 : f64
                      %112 = arith.muli %13, %c-1 : index
                      %113 = arith.addi %112, %11 : index
                      %114 = arith.addi %113, %c-1 : index
                      %115 = arith.muli %11, %c-1 : index
                      %116 = arith.addi %115, %arg14 : index
                      %117 = arith.addi %116, %c-1 : index
                      memref.store %111, %arg5[%114, %117] : memref<?x30xf64>
                    }
                  }
                }
              }
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

