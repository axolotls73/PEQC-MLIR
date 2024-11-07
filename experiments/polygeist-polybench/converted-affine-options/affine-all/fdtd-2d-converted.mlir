module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c42 = arith.constant 42 : index
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
            %4 = async.create_group %c1 : !async.group
            %5 = scf.for %arg11 = %c0 to %c1 step %c1 iter_args(%arg12 = %c0) -> (index) {
              %token_1 = async.execute {
                %8 = arith.addi %arg8, %arg11 : index
                %9 = arith.cmpi eq, %8, %c0 : index
                scf.if %9 {
                  %13 = arith.muli %arg7, %c32 : index
                  %14 = arith.muli %arg9, %c32 : index
                  %15 = arith.addi %13, %14 : index
                  %16 = arith.addi %15, %c-29 : index
                  %17 = arith.maxsi %16, %c0 : index
                  scf.for %arg13 = %17 to %c20 step %c1 {
                    %18 = arith.addi %arg7, %arg9 : index
                    %19 = arith.cmpi eq, %18, %c0 : index
                    scf.if %19 {
                      %36 = memref.load %arg6[%arg13] : memref<?xf64>
                      memref.store %36, %arg4[%c0, %c0] : memref<?x30xf64>
                    }
                    %20 = arith.muli %arg7, %c32 : index
                    %21 = arith.muli %arg9, %c32 : index
                    %22 = arith.addi %20, %21 : index
                    %23 = arith.addi %arg13, %c1 : index
                    %24 = arith.maxsi %22, %23 : index
                    %25 = arith.muli %arg7, %c32 : index
                    %26 = arith.muli %arg9, %c32 : index
                    %27 = arith.addi %25, %26 : index
                    %28 = arith.addi %27, %c32 : index
                    %29 = arith.addi %arg13, %c30 : index
                    %30 = arith.minsi %28, %29 : index
                    %31 = async.create_group %c42 : !async.group
                    %32 = scf.for %arg14 = %24 to %30 step %c1 iter_args(%arg15 = %c0) -> (index) {
                      %token_2 = async.execute {
                        %38 = memref.load %arg6[%arg13] : memref<?xf64>
                        %39 = arith.muli %arg13, %c-1 : index
                        %40 = arith.addi %39, %arg14 : index
                        memref.store %38, %arg4[%c0, %40] : memref<?x30xf64>
                        %41 = arith.muli %arg13, %c-1 : index
                        %42 = arith.addi %41, %arg14 : index
                        %43 = memref.load %arg3[%c0, %42] : memref<?x30xf64>
                        %44 = arith.muli %arg13, %c-1 : index
                        %45 = arith.addi %44, %arg14 : index
                        %46 = memref.load %arg5[%c0, %45] : memref<?x30xf64>
                        %47 = arith.muli %arg13, %c-1 : index
                        %48 = arith.addi %47, %arg14 : index
                        %49 = arith.addi %48, %c-1 : index
                        %50 = memref.load %arg5[%c0, %49] : memref<?x30xf64>
                        %51 = arith.subf %46, %50 : f64
                        %52 = arith.mulf %51, %cst_0 : f64
                        %53 = arith.subf %43, %52 : f64
                        %54 = arith.muli %arg13, %c-1 : index
                        %55 = arith.addi %54, %arg14 : index
                        memref.store %53, %arg3[%c0, %55] : memref<?x30xf64>
                        async.yield
                      }
                      %36 = async.add_to_group %token_2, %31 : !async.token
                      %37 = arith.addi %arg15, %c1 : index
                      scf.yield %37 : index
                    }
                    async.await_all %31
                    %33 = arith.muli %arg13, %c-1 : index
                    %34 = arith.addi %33, %c31 : index
                    %35 = arith.minsi %34, %c19 : index
                    scf.for %arg14 = %c0 to %35 step %c1 {
                      %36 = arith.addi %arg13, %arg14 : index
                      %37 = arith.addi %36, %c1 : index
                      %38 = arith.addi %arg7, %arg9 : index
                      %39 = arith.cmpi eq, %38, %c0 : index
                      scf.if %39 {
                        %51 = arith.muli %37, %c-1 : index
                        %52 = arith.addi %51, %arg13 : index
                        %53 = memref.load %arg4[%52, %c0] : memref<?x30xf64>
                        %54 = arith.muli %37, %c-1 : index
                        %55 = arith.addi %54, %arg13 : index
                        %56 = memref.load %arg5[%55, %c0] : memref<?x30xf64>
                        %57 = arith.muli %37, %c-1 : index
                        %58 = arith.addi %57, %arg13 : index
                        %59 = arith.addi %58, %c-1 : index
                        %60 = memref.load %arg5[%59, %c0] : memref<?x30xf64>
                        %61 = arith.subf %56, %60 : f64
                        %62 = arith.mulf %61, %cst_0 : f64
                        %63 = arith.subf %53, %62 : f64
                        %64 = arith.muli %37, %c-1 : index
                        %65 = arith.addi %64, %arg13 : index
                        memref.store %63, %arg4[%65, %c0] : memref<?x30xf64>
                      }
                      %40 = arith.muli %arg7, %c32 : index
                      %41 = arith.muli %arg9, %c32 : index
                      %42 = arith.addi %40, %41 : index
                      %43 = arith.addi %arg13, %c1 : index
                      %44 = arith.maxsi %42, %43 : index
                      %45 = arith.muli %arg7, %c32 : index
                      %46 = arith.muli %arg9, %c32 : index
                      %47 = arith.addi %45, %46 : index
                      %48 = arith.addi %47, %c32 : index
                      %49 = arith.addi %arg13, %c30 : index
                      %50 = arith.minsi %48, %49 : index
                      scf.for %arg15 = %44 to %50 step %c1 {
                        %51 = arith.muli %37, %c-1 : index
                        %52 = arith.addi %51, %arg13 : index
                        %53 = arith.muli %arg13, %c-1 : index
                        %54 = arith.addi %53, %arg15 : index
                        %55 = memref.load %arg4[%52, %54] : memref<?x30xf64>
                        %56 = arith.muli %37, %c-1 : index
                        %57 = arith.addi %56, %arg13 : index
                        %58 = arith.muli %arg13, %c-1 : index
                        %59 = arith.addi %58, %arg15 : index
                        %60 = memref.load %arg5[%57, %59] : memref<?x30xf64>
                        %61 = arith.muli %37, %c-1 : index
                        %62 = arith.addi %61, %arg13 : index
                        %63 = arith.addi %62, %c-1 : index
                        %64 = arith.muli %arg13, %c-1 : index
                        %65 = arith.addi %64, %arg15 : index
                        %66 = memref.load %arg5[%63, %65] : memref<?x30xf64>
                        %67 = arith.subf %60, %66 : f64
                        %68 = arith.mulf %67, %cst_0 : f64
                        %69 = arith.subf %55, %68 : f64
                        %70 = arith.muli %37, %c-1 : index
                        %71 = arith.addi %70, %arg13 : index
                        %72 = arith.muli %arg13, %c-1 : index
                        %73 = arith.addi %72, %arg15 : index
                        memref.store %69, %arg4[%71, %73] : memref<?x30xf64>
                        %74 = arith.muli %37, %c-1 : index
                        %75 = arith.addi %74, %arg13 : index
                        %76 = arith.muli %arg13, %c-1 : index
                        %77 = arith.addi %76, %arg15 : index
                        %78 = memref.load %arg3[%75, %77] : memref<?x30xf64>
                        %79 = arith.muli %37, %c-1 : index
                        %80 = arith.addi %79, %arg13 : index
                        %81 = arith.muli %arg13, %c-1 : index
                        %82 = arith.addi %81, %arg15 : index
                        %83 = memref.load %arg5[%80, %82] : memref<?x30xf64>
                        %84 = arith.muli %37, %c-1 : index
                        %85 = arith.addi %84, %arg13 : index
                        %86 = arith.muli %arg13, %c-1 : index
                        %87 = arith.addi %86, %arg15 : index
                        %88 = arith.addi %87, %c-1 : index
                        %89 = memref.load %arg5[%85, %88] : memref<?x30xf64>
                        %90 = arith.subf %83, %89 : f64
                        %91 = arith.mulf %90, %cst_0 : f64
                        %92 = arith.subf %78, %91 : f64
                        %93 = arith.muli %37, %c-1 : index
                        %94 = arith.addi %93, %arg13 : index
                        %95 = arith.muli %arg13, %c-1 : index
                        %96 = arith.addi %95, %arg15 : index
                        memref.store %92, %arg3[%94, %96] : memref<?x30xf64>
                        %97 = arith.muli %37, %c-1 : index
                        %98 = arith.addi %97, %arg13 : index
                        %99 = arith.addi %98, %c-1 : index
                        %100 = arith.muli %arg13, %c-1 : index
                        %101 = arith.addi %100, %arg15 : index
                        %102 = arith.addi %101, %c-1 : index
                        %103 = memref.load %arg5[%99, %102] : memref<?x30xf64>
                        %104 = arith.muli %37, %c-1 : index
                        %105 = arith.addi %104, %arg13 : index
                        %106 = arith.addi %105, %c-1 : index
                        %107 = arith.muli %arg13, %c-1 : index
                        %108 = arith.addi %107, %arg15 : index
                        %109 = memref.load %arg3[%106, %108] : memref<?x30xf64>
                        %110 = arith.muli %37, %c-1 : index
                        %111 = arith.addi %110, %arg13 : index
                        %112 = arith.addi %111, %c-1 : index
                        %113 = arith.muli %arg13, %c-1 : index
                        %114 = arith.addi %113, %arg15 : index
                        %115 = arith.addi %114, %c-1 : index
                        %116 = memref.load %arg3[%112, %115] : memref<?x30xf64>
                        %117 = arith.subf %109, %116 : f64
                        %118 = arith.muli %37, %c-1 : index
                        %119 = arith.addi %118, %arg13 : index
                        %120 = arith.muli %arg13, %c-1 : index
                        %121 = arith.addi %120, %arg15 : index
                        %122 = arith.addi %121, %c-1 : index
                        %123 = memref.load %arg4[%119, %122] : memref<?x30xf64>
                        %124 = arith.addf %117, %123 : f64
                        %125 = arith.muli %37, %c-1 : index
                        %126 = arith.addi %125, %arg13 : index
                        %127 = arith.addi %126, %c-1 : index
                        %128 = arith.muli %arg13, %c-1 : index
                        %129 = arith.addi %128, %arg15 : index
                        %130 = arith.addi %129, %c-1 : index
                        %131 = memref.load %arg4[%127, %130] : memref<?x30xf64>
                        %132 = arith.subf %124, %131 : f64
                        %133 = arith.mulf %132, %cst : f64
                        %134 = arith.subf %103, %133 : f64
                        %135 = arith.muli %37, %c-1 : index
                        %136 = arith.addi %135, %arg13 : index
                        %137 = arith.addi %136, %c-1 : index
                        %138 = arith.muli %arg13, %c-1 : index
                        %139 = arith.addi %138, %arg15 : index
                        %140 = arith.addi %139, %c-1 : index
                        memref.store %134, %arg5[%137, %140] : memref<?x30xf64>
                      }
                    }
                  }
                }
                %10 = arith.addi %arg8, %arg11 : index
                %11 = arith.addi %10, %c-1 : index
                %12 = arith.cmpi eq, %11, %c0 : index
                scf.if %12 {
                  scf.for %arg13 = %c0 to %c7 step %c1 {
                    %13 = arith.addi %arg13, %c13 : index
                    %14 = arith.addi %arg13, %c1 : index
                    scf.for %arg14 = %c0 to %14 step %c1 {
                      %15 = arith.addi %arg14, %c32 : index
                      %16 = arith.addi %arg7, %arg9 : index
                      %17 = arith.cmpi eq, %16, %c0 : index
                      scf.if %17 {
                        %29 = arith.muli %15, %c-1 : index
                        %30 = arith.addi %29, %13 : index
                        %31 = memref.load %arg4[%30, %c0] : memref<?x30xf64>
                        %32 = arith.muli %15, %c-1 : index
                        %33 = arith.addi %32, %13 : index
                        %34 = memref.load %arg5[%33, %c0] : memref<?x30xf64>
                        %35 = arith.muli %15, %c-1 : index
                        %36 = arith.addi %35, %13 : index
                        %37 = arith.addi %36, %c-1 : index
                        %38 = memref.load %arg5[%37, %c0] : memref<?x30xf64>
                        %39 = arith.subf %34, %38 : f64
                        %40 = arith.mulf %39, %cst_0 : f64
                        %41 = arith.subf %31, %40 : f64
                        %42 = arith.muli %15, %c-1 : index
                        %43 = arith.addi %42, %13 : index
                        memref.store %41, %arg4[%43, %c0] : memref<?x30xf64>
                      }
                      %18 = arith.muli %arg7, %c32 : index
                      %19 = arith.muli %arg9, %c32 : index
                      %20 = arith.addi %18, %19 : index
                      %21 = arith.addi %arg13, %c14 : index
                      %22 = arith.maxsi %20, %21 : index
                      %23 = arith.muli %arg7, %c32 : index
                      %24 = arith.muli %arg9, %c32 : index
                      %25 = arith.addi %23, %24 : index
                      %26 = arith.addi %25, %c32 : index
                      %27 = arith.addi %arg13, %c43 : index
                      %28 = arith.minsi %26, %27 : index
                      scf.for %arg15 = %22 to %28 step %c1 {
                        %29 = arith.muli %15, %c-1 : index
                        %30 = arith.addi %29, %13 : index
                        %31 = arith.muli %13, %c-1 : index
                        %32 = arith.addi %31, %arg15 : index
                        %33 = memref.load %arg4[%30, %32] : memref<?x30xf64>
                        %34 = arith.muli %15, %c-1 : index
                        %35 = arith.addi %34, %13 : index
                        %36 = arith.muli %13, %c-1 : index
                        %37 = arith.addi %36, %arg15 : index
                        %38 = memref.load %arg5[%35, %37] : memref<?x30xf64>
                        %39 = arith.muli %15, %c-1 : index
                        %40 = arith.addi %39, %13 : index
                        %41 = arith.addi %40, %c-1 : index
                        %42 = arith.muli %13, %c-1 : index
                        %43 = arith.addi %42, %arg15 : index
                        %44 = memref.load %arg5[%41, %43] : memref<?x30xf64>
                        %45 = arith.subf %38, %44 : f64
                        %46 = arith.mulf %45, %cst_0 : f64
                        %47 = arith.subf %33, %46 : f64
                        %48 = arith.muli %15, %c-1 : index
                        %49 = arith.addi %48, %13 : index
                        %50 = arith.muli %13, %c-1 : index
                        %51 = arith.addi %50, %arg15 : index
                        memref.store %47, %arg4[%49, %51] : memref<?x30xf64>
                        %52 = arith.muli %15, %c-1 : index
                        %53 = arith.addi %52, %13 : index
                        %54 = arith.muli %13, %c-1 : index
                        %55 = arith.addi %54, %arg15 : index
                        %56 = memref.load %arg3[%53, %55] : memref<?x30xf64>
                        %57 = arith.muli %15, %c-1 : index
                        %58 = arith.addi %57, %13 : index
                        %59 = arith.muli %13, %c-1 : index
                        %60 = arith.addi %59, %arg15 : index
                        %61 = memref.load %arg5[%58, %60] : memref<?x30xf64>
                        %62 = arith.muli %15, %c-1 : index
                        %63 = arith.addi %62, %13 : index
                        %64 = arith.muli %13, %c-1 : index
                        %65 = arith.addi %64, %arg15 : index
                        %66 = arith.addi %65, %c-1 : index
                        %67 = memref.load %arg5[%63, %66] : memref<?x30xf64>
                        %68 = arith.subf %61, %67 : f64
                        %69 = arith.mulf %68, %cst_0 : f64
                        %70 = arith.subf %56, %69 : f64
                        %71 = arith.muli %15, %c-1 : index
                        %72 = arith.addi %71, %13 : index
                        %73 = arith.muli %13, %c-1 : index
                        %74 = arith.addi %73, %arg15 : index
                        memref.store %70, %arg3[%72, %74] : memref<?x30xf64>
                        %75 = arith.muli %15, %c-1 : index
                        %76 = arith.addi %75, %13 : index
                        %77 = arith.addi %76, %c-1 : index
                        %78 = arith.muli %13, %c-1 : index
                        %79 = arith.addi %78, %arg15 : index
                        %80 = arith.addi %79, %c-1 : index
                        %81 = memref.load %arg5[%77, %80] : memref<?x30xf64>
                        %82 = arith.muli %15, %c-1 : index
                        %83 = arith.addi %82, %13 : index
                        %84 = arith.addi %83, %c-1 : index
                        %85 = arith.muli %13, %c-1 : index
                        %86 = arith.addi %85, %arg15 : index
                        %87 = memref.load %arg3[%84, %86] : memref<?x30xf64>
                        %88 = arith.muli %15, %c-1 : index
                        %89 = arith.addi %88, %13 : index
                        %90 = arith.addi %89, %c-1 : index
                        %91 = arith.muli %13, %c-1 : index
                        %92 = arith.addi %91, %arg15 : index
                        %93 = arith.addi %92, %c-1 : index
                        %94 = memref.load %arg3[%90, %93] : memref<?x30xf64>
                        %95 = arith.subf %87, %94 : f64
                        %96 = arith.muli %15, %c-1 : index
                        %97 = arith.addi %96, %13 : index
                        %98 = arith.muli %13, %c-1 : index
                        %99 = arith.addi %98, %arg15 : index
                        %100 = arith.addi %99, %c-1 : index
                        %101 = memref.load %arg4[%97, %100] : memref<?x30xf64>
                        %102 = arith.addf %95, %101 : f64
                        %103 = arith.muli %15, %c-1 : index
                        %104 = arith.addi %103, %13 : index
                        %105 = arith.addi %104, %c-1 : index
                        %106 = arith.muli %13, %c-1 : index
                        %107 = arith.addi %106, %arg15 : index
                        %108 = arith.addi %107, %c-1 : index
                        %109 = memref.load %arg4[%105, %108] : memref<?x30xf64>
                        %110 = arith.subf %102, %109 : f64
                        %111 = arith.mulf %110, %cst : f64
                        %112 = arith.subf %81, %111 : f64
                        %113 = arith.muli %15, %c-1 : index
                        %114 = arith.addi %113, %13 : index
                        %115 = arith.addi %114, %c-1 : index
                        %116 = arith.muli %13, %c-1 : index
                        %117 = arith.addi %116, %arg15 : index
                        %118 = arith.addi %117, %c-1 : index
                        memref.store %112, %arg5[%115, %118] : memref<?x30xf64>
                      }
                    }
                  }
                }
                async.yield
              }
              %6 = async.add_to_group %token_1, %4 : !async.token
              %7 = arith.addi %arg12, %c1 : index
              scf.yield %7 : index
            }
            async.await_all %4
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

