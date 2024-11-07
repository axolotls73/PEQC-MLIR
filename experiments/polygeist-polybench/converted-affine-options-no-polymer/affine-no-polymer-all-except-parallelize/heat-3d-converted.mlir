module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %c3 = arith.constant 3 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c2 = arith.constant 2 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %0 = async.create_group %c1 : !async.group
      %1 = scf.for %arg5 = %c0 to %c1 step %c1 iter_args(%arg6 = %c0) -> (index) {
        %token = async.execute {
          %4 = async.create_group %c8 : !async.group
          %5 = scf.for %arg7 = %c0 to %c8 step %c1 iter_args(%arg8 = %c0) -> (index) {
            %token_1 = async.execute {
              %10 = arith.addi %arg7, %c1 : index
              %11 = async.create_group %c8 : !async.group
              %12 = scf.for %arg9 = %c0 to %c8 step %c1 iter_args(%arg10 = %c0) -> (index) {
                %token_2 = async.execute {
                  %15 = arith.addi %arg9, %c1 : index
                  %16 = async.create_group %c2 : !async.group
                  %17 = scf.for %arg11 = %c0 to %c2 step %c1 iter_args(%arg12 = %c0) -> (index) {
                    %token_3 = async.execute {
                      %20 = arith.muli %arg11, %c4 : index
                      %21 = arith.addi %20, %c1 : index
                      %22 = arith.addi %10, %c1 : index
                      %23 = memref.load %arg2[%22, %15, %21] : memref<?x10x10xf64>
                      %24 = memref.load %arg2[%10, %15, %21] : memref<?x10x10xf64>
                      %25 = arith.mulf %24, %cst : f64
                      %26 = arith.subf %23, %25 : f64
                      %27 = arith.addi %10, %c-1 : index
                      %28 = memref.load %arg2[%27, %15, %21] : memref<?x10x10xf64>
                      %29 = arith.addf %26, %28 : f64
                      %30 = arith.mulf %29, %cst_0 : f64
                      %31 = arith.addi %15, %c1 : index
                      %32 = memref.load %arg2[%10, %31, %21] : memref<?x10x10xf64>
                      %33 = arith.subf %32, %25 : f64
                      %34 = arith.addi %15, %c-1 : index
                      %35 = memref.load %arg2[%10, %34, %21] : memref<?x10x10xf64>
                      %36 = arith.addf %33, %35 : f64
                      %37 = arith.mulf %36, %cst_0 : f64
                      %38 = arith.addf %30, %37 : f64
                      %39 = arith.addi %21, %c1 : index
                      %40 = memref.load %arg2[%10, %15, %39] : memref<?x10x10xf64>
                      %41 = arith.subf %40, %25 : f64
                      %42 = arith.addi %21, %c-1 : index
                      %43 = memref.load %arg2[%10, %15, %42] : memref<?x10x10xf64>
                      %44 = arith.addf %41, %43 : f64
                      %45 = arith.mulf %44, %cst_0 : f64
                      %46 = arith.addf %38, %45 : f64
                      %47 = arith.addf %46, %24 : f64
                      memref.store %47, %arg3[%10, %15, %21] : memref<?x10x10xf64>
                      %48 = arith.addi %21, %c1 : index
                      %49 = arith.addi %10, %c1 : index
                      %50 = memref.load %arg2[%49, %15, %48] : memref<?x10x10xf64>
                      %51 = memref.load %arg2[%10, %15, %48] : memref<?x10x10xf64>
                      %52 = arith.mulf %51, %cst : f64
                      %53 = arith.subf %50, %52 : f64
                      %54 = arith.addi %10, %c-1 : index
                      %55 = memref.load %arg2[%54, %15, %48] : memref<?x10x10xf64>
                      %56 = arith.addf %53, %55 : f64
                      %57 = arith.mulf %56, %cst_0 : f64
                      %58 = arith.addi %15, %c1 : index
                      %59 = memref.load %arg2[%10, %58, %48] : memref<?x10x10xf64>
                      %60 = arith.subf %59, %52 : f64
                      %61 = arith.addi %15, %c-1 : index
                      %62 = memref.load %arg2[%10, %61, %48] : memref<?x10x10xf64>
                      %63 = arith.addf %60, %62 : f64
                      %64 = arith.mulf %63, %cst_0 : f64
                      %65 = arith.addf %57, %64 : f64
                      %66 = arith.addi %48, %c1 : index
                      %67 = memref.load %arg2[%10, %15, %66] : memref<?x10x10xf64>
                      %68 = arith.subf %67, %52 : f64
                      %69 = arith.addi %48, %c-1 : index
                      %70 = memref.load %arg2[%10, %15, %69] : memref<?x10x10xf64>
                      %71 = arith.addf %68, %70 : f64
                      %72 = arith.mulf %71, %cst_0 : f64
                      %73 = arith.addf %65, %72 : f64
                      %74 = arith.addf %73, %51 : f64
                      memref.store %74, %arg3[%10, %15, %48] : memref<?x10x10xf64>
                      %75 = arith.addi %21, %c2 : index
                      %76 = arith.addi %10, %c1 : index
                      %77 = memref.load %arg2[%76, %15, %75] : memref<?x10x10xf64>
                      %78 = memref.load %arg2[%10, %15, %75] : memref<?x10x10xf64>
                      %79 = arith.mulf %78, %cst : f64
                      %80 = arith.subf %77, %79 : f64
                      %81 = arith.addi %10, %c-1 : index
                      %82 = memref.load %arg2[%81, %15, %75] : memref<?x10x10xf64>
                      %83 = arith.addf %80, %82 : f64
                      %84 = arith.mulf %83, %cst_0 : f64
                      %85 = arith.addi %15, %c1 : index
                      %86 = memref.load %arg2[%10, %85, %75] : memref<?x10x10xf64>
                      %87 = arith.subf %86, %79 : f64
                      %88 = arith.addi %15, %c-1 : index
                      %89 = memref.load %arg2[%10, %88, %75] : memref<?x10x10xf64>
                      %90 = arith.addf %87, %89 : f64
                      %91 = arith.mulf %90, %cst_0 : f64
                      %92 = arith.addf %84, %91 : f64
                      %93 = arith.addi %75, %c1 : index
                      %94 = memref.load %arg2[%10, %15, %93] : memref<?x10x10xf64>
                      %95 = arith.subf %94, %79 : f64
                      %96 = arith.addi %75, %c-1 : index
                      %97 = memref.load %arg2[%10, %15, %96] : memref<?x10x10xf64>
                      %98 = arith.addf %95, %97 : f64
                      %99 = arith.mulf %98, %cst_0 : f64
                      %100 = arith.addf %92, %99 : f64
                      %101 = arith.addf %100, %78 : f64
                      memref.store %101, %arg3[%10, %15, %75] : memref<?x10x10xf64>
                      %102 = arith.addi %21, %c3 : index
                      %103 = arith.addi %10, %c1 : index
                      %104 = memref.load %arg2[%103, %15, %102] : memref<?x10x10xf64>
                      %105 = memref.load %arg2[%10, %15, %102] : memref<?x10x10xf64>
                      %106 = arith.mulf %105, %cst : f64
                      %107 = arith.subf %104, %106 : f64
                      %108 = arith.addi %10, %c-1 : index
                      %109 = memref.load %arg2[%108, %15, %102] : memref<?x10x10xf64>
                      %110 = arith.addf %107, %109 : f64
                      %111 = arith.mulf %110, %cst_0 : f64
                      %112 = arith.addi %15, %c1 : index
                      %113 = memref.load %arg2[%10, %112, %102] : memref<?x10x10xf64>
                      %114 = arith.subf %113, %106 : f64
                      %115 = arith.addi %15, %c-1 : index
                      %116 = memref.load %arg2[%10, %115, %102] : memref<?x10x10xf64>
                      %117 = arith.addf %114, %116 : f64
                      %118 = arith.mulf %117, %cst_0 : f64
                      %119 = arith.addf %111, %118 : f64
                      %120 = arith.addi %102, %c1 : index
                      %121 = memref.load %arg2[%10, %15, %120] : memref<?x10x10xf64>
                      %122 = arith.subf %121, %106 : f64
                      %123 = arith.addi %102, %c-1 : index
                      %124 = memref.load %arg2[%10, %15, %123] : memref<?x10x10xf64>
                      %125 = arith.addf %122, %124 : f64
                      %126 = arith.mulf %125, %cst_0 : f64
                      %127 = arith.addf %119, %126 : f64
                      %128 = arith.addf %127, %105 : f64
                      memref.store %128, %arg3[%10, %15, %102] : memref<?x10x10xf64>
                      async.yield
                    }
                    %18 = async.add_to_group %token_3, %16 : !async.token
                    %19 = arith.addi %arg12, %c1 : index
                    scf.yield %19 : index
                  }
                  async.await_all %16
                  async.yield
                }
                %13 = async.add_to_group %token_2, %11 : !async.token
                %14 = arith.addi %arg10, %c1 : index
                scf.yield %14 : index
              }
              async.await_all %11
              async.yield
            }
            %8 = async.add_to_group %token_1, %4 : !async.token
            %9 = arith.addi %arg8, %c1 : index
            scf.yield %9 : index
          }
          async.await_all %4
          %6 = async.create_group %c8 : !async.group
          %7 = scf.for %arg7 = %c0 to %c8 step %c1 iter_args(%arg8 = %c0) -> (index) {
            %token_1 = async.execute {
              %10 = arith.addi %arg7, %c1 : index
              %11 = async.create_group %c8 : !async.group
              %12 = scf.for %arg9 = %c0 to %c8 step %c1 iter_args(%arg10 = %c0) -> (index) {
                %token_2 = async.execute {
                  %15 = arith.addi %arg9, %c1 : index
                  %16 = async.create_group %c2 : !async.group
                  %17 = scf.for %arg11 = %c0 to %c2 step %c1 iter_args(%arg12 = %c0) -> (index) {
                    %token_3 = async.execute {
                      %20 = arith.muli %arg11, %c4 : index
                      %21 = arith.addi %20, %c1 : index
                      %22 = arith.addi %10, %c1 : index
                      %23 = memref.load %arg3[%22, %15, %21] : memref<?x10x10xf64>
                      %24 = memref.load %arg3[%10, %15, %21] : memref<?x10x10xf64>
                      %25 = arith.mulf %24, %cst : f64
                      %26 = arith.subf %23, %25 : f64
                      %27 = arith.addi %10, %c-1 : index
                      %28 = memref.load %arg3[%27, %15, %21] : memref<?x10x10xf64>
                      %29 = arith.addf %26, %28 : f64
                      %30 = arith.mulf %29, %cst_0 : f64
                      %31 = arith.addi %15, %c1 : index
                      %32 = memref.load %arg3[%10, %31, %21] : memref<?x10x10xf64>
                      %33 = arith.subf %32, %25 : f64
                      %34 = arith.addi %15, %c-1 : index
                      %35 = memref.load %arg3[%10, %34, %21] : memref<?x10x10xf64>
                      %36 = arith.addf %33, %35 : f64
                      %37 = arith.mulf %36, %cst_0 : f64
                      %38 = arith.addf %30, %37 : f64
                      %39 = arith.addi %21, %c1 : index
                      %40 = memref.load %arg3[%10, %15, %39] : memref<?x10x10xf64>
                      %41 = arith.subf %40, %25 : f64
                      %42 = arith.addi %21, %c-1 : index
                      %43 = memref.load %arg3[%10, %15, %42] : memref<?x10x10xf64>
                      %44 = arith.addf %41, %43 : f64
                      %45 = arith.mulf %44, %cst_0 : f64
                      %46 = arith.addf %38, %45 : f64
                      %47 = arith.addf %46, %24 : f64
                      memref.store %47, %arg2[%10, %15, %21] : memref<?x10x10xf64>
                      %48 = arith.addi %21, %c1 : index
                      %49 = arith.addi %10, %c1 : index
                      %50 = memref.load %arg3[%49, %15, %48] : memref<?x10x10xf64>
                      %51 = memref.load %arg3[%10, %15, %48] : memref<?x10x10xf64>
                      %52 = arith.mulf %51, %cst : f64
                      %53 = arith.subf %50, %52 : f64
                      %54 = arith.addi %10, %c-1 : index
                      %55 = memref.load %arg3[%54, %15, %48] : memref<?x10x10xf64>
                      %56 = arith.addf %53, %55 : f64
                      %57 = arith.mulf %56, %cst_0 : f64
                      %58 = arith.addi %15, %c1 : index
                      %59 = memref.load %arg3[%10, %58, %48] : memref<?x10x10xf64>
                      %60 = arith.subf %59, %52 : f64
                      %61 = arith.addi %15, %c-1 : index
                      %62 = memref.load %arg3[%10, %61, %48] : memref<?x10x10xf64>
                      %63 = arith.addf %60, %62 : f64
                      %64 = arith.mulf %63, %cst_0 : f64
                      %65 = arith.addf %57, %64 : f64
                      %66 = arith.addi %48, %c1 : index
                      %67 = memref.load %arg3[%10, %15, %66] : memref<?x10x10xf64>
                      %68 = arith.subf %67, %52 : f64
                      %69 = arith.addi %48, %c-1 : index
                      %70 = memref.load %arg3[%10, %15, %69] : memref<?x10x10xf64>
                      %71 = arith.addf %68, %70 : f64
                      %72 = arith.mulf %71, %cst_0 : f64
                      %73 = arith.addf %65, %72 : f64
                      %74 = arith.addf %73, %51 : f64
                      memref.store %74, %arg2[%10, %15, %48] : memref<?x10x10xf64>
                      %75 = arith.addi %21, %c2 : index
                      %76 = arith.addi %10, %c1 : index
                      %77 = memref.load %arg3[%76, %15, %75] : memref<?x10x10xf64>
                      %78 = memref.load %arg3[%10, %15, %75] : memref<?x10x10xf64>
                      %79 = arith.mulf %78, %cst : f64
                      %80 = arith.subf %77, %79 : f64
                      %81 = arith.addi %10, %c-1 : index
                      %82 = memref.load %arg3[%81, %15, %75] : memref<?x10x10xf64>
                      %83 = arith.addf %80, %82 : f64
                      %84 = arith.mulf %83, %cst_0 : f64
                      %85 = arith.addi %15, %c1 : index
                      %86 = memref.load %arg3[%10, %85, %75] : memref<?x10x10xf64>
                      %87 = arith.subf %86, %79 : f64
                      %88 = arith.addi %15, %c-1 : index
                      %89 = memref.load %arg3[%10, %88, %75] : memref<?x10x10xf64>
                      %90 = arith.addf %87, %89 : f64
                      %91 = arith.mulf %90, %cst_0 : f64
                      %92 = arith.addf %84, %91 : f64
                      %93 = arith.addi %75, %c1 : index
                      %94 = memref.load %arg3[%10, %15, %93] : memref<?x10x10xf64>
                      %95 = arith.subf %94, %79 : f64
                      %96 = arith.addi %75, %c-1 : index
                      %97 = memref.load %arg3[%10, %15, %96] : memref<?x10x10xf64>
                      %98 = arith.addf %95, %97 : f64
                      %99 = arith.mulf %98, %cst_0 : f64
                      %100 = arith.addf %92, %99 : f64
                      %101 = arith.addf %100, %78 : f64
                      memref.store %101, %arg2[%10, %15, %75] : memref<?x10x10xf64>
                      %102 = arith.addi %21, %c3 : index
                      %103 = arith.addi %10, %c1 : index
                      %104 = memref.load %arg3[%103, %15, %102] : memref<?x10x10xf64>
                      %105 = memref.load %arg3[%10, %15, %102] : memref<?x10x10xf64>
                      %106 = arith.mulf %105, %cst : f64
                      %107 = arith.subf %104, %106 : f64
                      %108 = arith.addi %10, %c-1 : index
                      %109 = memref.load %arg3[%108, %15, %102] : memref<?x10x10xf64>
                      %110 = arith.addf %107, %109 : f64
                      %111 = arith.mulf %110, %cst_0 : f64
                      %112 = arith.addi %15, %c1 : index
                      %113 = memref.load %arg3[%10, %112, %102] : memref<?x10x10xf64>
                      %114 = arith.subf %113, %106 : f64
                      %115 = arith.addi %15, %c-1 : index
                      %116 = memref.load %arg3[%10, %115, %102] : memref<?x10x10xf64>
                      %117 = arith.addf %114, %116 : f64
                      %118 = arith.mulf %117, %cst_0 : f64
                      %119 = arith.addf %111, %118 : f64
                      %120 = arith.addi %102, %c1 : index
                      %121 = memref.load %arg3[%10, %15, %120] : memref<?x10x10xf64>
                      %122 = arith.subf %121, %106 : f64
                      %123 = arith.addi %102, %c-1 : index
                      %124 = memref.load %arg3[%10, %15, %123] : memref<?x10x10xf64>
                      %125 = arith.addf %122, %124 : f64
                      %126 = arith.mulf %125, %cst_0 : f64
                      %127 = arith.addf %119, %126 : f64
                      %128 = arith.addf %127, %105 : f64
                      memref.store %128, %arg2[%10, %15, %102] : memref<?x10x10xf64>
                      async.yield
                    }
                    %18 = async.add_to_group %token_3, %16 : !async.token
                    %19 = arith.addi %arg12, %c1 : index
                    scf.yield %19 : index
                  }
                  async.await_all %16
                  async.yield
                }
                %13 = async.add_to_group %token_2, %11 : !async.token
                %14 = arith.addi %arg10, %c1 : index
                scf.yield %14 : index
              }
              async.await_all %11
              async.yield
            }
            %8 = async.add_to_group %token_1, %6 : !async.token
            %9 = arith.addi %arg8, %c1 : index
            scf.yield %9 : index
          }
          async.await_all %6
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg6, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

