module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %c3 = arith.constant 3 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c2 = arith.constant 2 : index
    %c8 = arith.constant 8 : index
    %c20 = arith.constant 20 : index
    %cst = arith.constant 1.250000e-01 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg4 = %c0 to %c1 step %c1 iter_args(%arg5 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg6 = %c0 to %c20 step %c1 {
          scf.for %arg7 = %c0 to %c8 step %c1 {
            %4 = arith.addi %arg7, %c1 : index
            scf.for %arg8 = %c0 to %c2 step %c1 {
              %5 = arith.muli %arg8, %c4 : index
              %6 = arith.addi %5, %c1 : index
              scf.for %arg9 = %c0 to %c8 step %c1 {
                %7 = arith.addi %arg9, %c1 : index
                %8 = arith.addi %7, %c1 : index
                %9 = memref.load %arg2[%8, %4, %6] : memref<?x10x10xf64>
                %10 = memref.load %arg2[%7, %4, %6] : memref<?x10x10xf64>
                %11 = arith.mulf %10, %cst_0 : f64
                %12 = arith.subf %9, %11 : f64
                %13 = arith.addi %7, %c-1 : index
                %14 = memref.load %arg2[%13, %4, %6] : memref<?x10x10xf64>
                %15 = arith.addf %12, %14 : f64
                %16 = arith.mulf %15, %cst : f64
                %17 = arith.addi %4, %c1 : index
                %18 = memref.load %arg2[%7, %17, %6] : memref<?x10x10xf64>
                %19 = arith.subf %18, %11 : f64
                %20 = arith.addi %4, %c-1 : index
                %21 = memref.load %arg2[%7, %20, %6] : memref<?x10x10xf64>
                %22 = arith.addf %19, %21 : f64
                %23 = arith.mulf %22, %cst : f64
                %24 = arith.addf %16, %23 : f64
                %25 = arith.addi %6, %c1 : index
                %26 = memref.load %arg2[%7, %4, %25] : memref<?x10x10xf64>
                %27 = arith.subf %26, %11 : f64
                %28 = arith.addi %6, %c-1 : index
                %29 = memref.load %arg2[%7, %4, %28] : memref<?x10x10xf64>
                %30 = arith.addf %27, %29 : f64
                %31 = arith.mulf %30, %cst : f64
                %32 = arith.addf %24, %31 : f64
                %33 = arith.addf %32, %10 : f64
                memref.store %33, %arg3[%7, %4, %6] : memref<?x10x10xf64>
                %34 = arith.addi %6, %c1 : index
                %35 = arith.addi %7, %c1 : index
                %36 = memref.load %arg2[%35, %4, %34] : memref<?x10x10xf64>
                %37 = memref.load %arg2[%7, %4, %34] : memref<?x10x10xf64>
                %38 = arith.mulf %37, %cst_0 : f64
                %39 = arith.subf %36, %38 : f64
                %40 = arith.addi %7, %c-1 : index
                %41 = memref.load %arg2[%40, %4, %34] : memref<?x10x10xf64>
                %42 = arith.addf %39, %41 : f64
                %43 = arith.mulf %42, %cst : f64
                %44 = arith.addi %4, %c1 : index
                %45 = memref.load %arg2[%7, %44, %34] : memref<?x10x10xf64>
                %46 = arith.subf %45, %38 : f64
                %47 = arith.addi %4, %c-1 : index
                %48 = memref.load %arg2[%7, %47, %34] : memref<?x10x10xf64>
                %49 = arith.addf %46, %48 : f64
                %50 = arith.mulf %49, %cst : f64
                %51 = arith.addf %43, %50 : f64
                %52 = arith.addi %34, %c1 : index
                %53 = memref.load %arg2[%7, %4, %52] : memref<?x10x10xf64>
                %54 = arith.subf %53, %38 : f64
                %55 = arith.addi %34, %c-1 : index
                %56 = memref.load %arg2[%7, %4, %55] : memref<?x10x10xf64>
                %57 = arith.addf %54, %56 : f64
                %58 = arith.mulf %57, %cst : f64
                %59 = arith.addf %51, %58 : f64
                %60 = arith.addf %59, %37 : f64
                memref.store %60, %arg3[%7, %4, %34] : memref<?x10x10xf64>
                %61 = arith.addi %6, %c2 : index
                %62 = arith.addi %7, %c1 : index
                %63 = memref.load %arg2[%62, %4, %61] : memref<?x10x10xf64>
                %64 = memref.load %arg2[%7, %4, %61] : memref<?x10x10xf64>
                %65 = arith.mulf %64, %cst_0 : f64
                %66 = arith.subf %63, %65 : f64
                %67 = arith.addi %7, %c-1 : index
                %68 = memref.load %arg2[%67, %4, %61] : memref<?x10x10xf64>
                %69 = arith.addf %66, %68 : f64
                %70 = arith.mulf %69, %cst : f64
                %71 = arith.addi %4, %c1 : index
                %72 = memref.load %arg2[%7, %71, %61] : memref<?x10x10xf64>
                %73 = arith.subf %72, %65 : f64
                %74 = arith.addi %4, %c-1 : index
                %75 = memref.load %arg2[%7, %74, %61] : memref<?x10x10xf64>
                %76 = arith.addf %73, %75 : f64
                %77 = arith.mulf %76, %cst : f64
                %78 = arith.addf %70, %77 : f64
                %79 = arith.addi %61, %c1 : index
                %80 = memref.load %arg2[%7, %4, %79] : memref<?x10x10xf64>
                %81 = arith.subf %80, %65 : f64
                %82 = arith.addi %61, %c-1 : index
                %83 = memref.load %arg2[%7, %4, %82] : memref<?x10x10xf64>
                %84 = arith.addf %81, %83 : f64
                %85 = arith.mulf %84, %cst : f64
                %86 = arith.addf %78, %85 : f64
                %87 = arith.addf %86, %64 : f64
                memref.store %87, %arg3[%7, %4, %61] : memref<?x10x10xf64>
                %88 = arith.addi %6, %c3 : index
                %89 = arith.addi %7, %c1 : index
                %90 = memref.load %arg2[%89, %4, %88] : memref<?x10x10xf64>
                %91 = memref.load %arg2[%7, %4, %88] : memref<?x10x10xf64>
                %92 = arith.mulf %91, %cst_0 : f64
                %93 = arith.subf %90, %92 : f64
                %94 = arith.addi %7, %c-1 : index
                %95 = memref.load %arg2[%94, %4, %88] : memref<?x10x10xf64>
                %96 = arith.addf %93, %95 : f64
                %97 = arith.mulf %96, %cst : f64
                %98 = arith.addi %4, %c1 : index
                %99 = memref.load %arg2[%7, %98, %88] : memref<?x10x10xf64>
                %100 = arith.subf %99, %92 : f64
                %101 = arith.addi %4, %c-1 : index
                %102 = memref.load %arg2[%7, %101, %88] : memref<?x10x10xf64>
                %103 = arith.addf %100, %102 : f64
                %104 = arith.mulf %103, %cst : f64
                %105 = arith.addf %97, %104 : f64
                %106 = arith.addi %88, %c1 : index
                %107 = memref.load %arg2[%7, %4, %106] : memref<?x10x10xf64>
                %108 = arith.subf %107, %92 : f64
                %109 = arith.addi %88, %c-1 : index
                %110 = memref.load %arg2[%7, %4, %109] : memref<?x10x10xf64>
                %111 = arith.addf %108, %110 : f64
                %112 = arith.mulf %111, %cst : f64
                %113 = arith.addf %105, %112 : f64
                %114 = arith.addf %113, %91 : f64
                memref.store %114, %arg3[%7, %4, %88] : memref<?x10x10xf64>
              }
            }
          }
          scf.for %arg7 = %c0 to %c8 step %c1 {
            %4 = arith.addi %arg7, %c1 : index
            scf.for %arg8 = %c0 to %c2 step %c1 {
              %5 = arith.muli %arg8, %c4 : index
              %6 = arith.addi %5, %c1 : index
              scf.for %arg9 = %c0 to %c8 step %c1 {
                %7 = arith.addi %arg9, %c1 : index
                %8 = arith.addi %7, %c1 : index
                %9 = memref.load %arg3[%8, %4, %6] : memref<?x10x10xf64>
                %10 = memref.load %arg3[%7, %4, %6] : memref<?x10x10xf64>
                %11 = arith.mulf %10, %cst_0 : f64
                %12 = arith.subf %9, %11 : f64
                %13 = arith.addi %7, %c-1 : index
                %14 = memref.load %arg3[%13, %4, %6] : memref<?x10x10xf64>
                %15 = arith.addf %12, %14 : f64
                %16 = arith.mulf %15, %cst : f64
                %17 = arith.addi %4, %c1 : index
                %18 = memref.load %arg3[%7, %17, %6] : memref<?x10x10xf64>
                %19 = arith.subf %18, %11 : f64
                %20 = arith.addi %4, %c-1 : index
                %21 = memref.load %arg3[%7, %20, %6] : memref<?x10x10xf64>
                %22 = arith.addf %19, %21 : f64
                %23 = arith.mulf %22, %cst : f64
                %24 = arith.addf %16, %23 : f64
                %25 = arith.addi %6, %c1 : index
                %26 = memref.load %arg3[%7, %4, %25] : memref<?x10x10xf64>
                %27 = arith.subf %26, %11 : f64
                %28 = arith.addi %6, %c-1 : index
                %29 = memref.load %arg3[%7, %4, %28] : memref<?x10x10xf64>
                %30 = arith.addf %27, %29 : f64
                %31 = arith.mulf %30, %cst : f64
                %32 = arith.addf %24, %31 : f64
                %33 = arith.addf %32, %10 : f64
                memref.store %33, %arg2[%7, %4, %6] : memref<?x10x10xf64>
                %34 = arith.addi %6, %c1 : index
                %35 = arith.addi %7, %c1 : index
                %36 = memref.load %arg3[%35, %4, %34] : memref<?x10x10xf64>
                %37 = memref.load %arg3[%7, %4, %34] : memref<?x10x10xf64>
                %38 = arith.mulf %37, %cst_0 : f64
                %39 = arith.subf %36, %38 : f64
                %40 = arith.addi %7, %c-1 : index
                %41 = memref.load %arg3[%40, %4, %34] : memref<?x10x10xf64>
                %42 = arith.addf %39, %41 : f64
                %43 = arith.mulf %42, %cst : f64
                %44 = arith.addi %4, %c1 : index
                %45 = memref.load %arg3[%7, %44, %34] : memref<?x10x10xf64>
                %46 = arith.subf %45, %38 : f64
                %47 = arith.addi %4, %c-1 : index
                %48 = memref.load %arg3[%7, %47, %34] : memref<?x10x10xf64>
                %49 = arith.addf %46, %48 : f64
                %50 = arith.mulf %49, %cst : f64
                %51 = arith.addf %43, %50 : f64
                %52 = arith.addi %34, %c1 : index
                %53 = memref.load %arg3[%7, %4, %52] : memref<?x10x10xf64>
                %54 = arith.subf %53, %38 : f64
                %55 = arith.addi %34, %c-1 : index
                %56 = memref.load %arg3[%7, %4, %55] : memref<?x10x10xf64>
                %57 = arith.addf %54, %56 : f64
                %58 = arith.mulf %57, %cst : f64
                %59 = arith.addf %51, %58 : f64
                %60 = arith.addf %59, %37 : f64
                memref.store %60, %arg2[%7, %4, %34] : memref<?x10x10xf64>
                %61 = arith.addi %6, %c2 : index
                %62 = arith.addi %7, %c1 : index
                %63 = memref.load %arg3[%62, %4, %61] : memref<?x10x10xf64>
                %64 = memref.load %arg3[%7, %4, %61] : memref<?x10x10xf64>
                %65 = arith.mulf %64, %cst_0 : f64
                %66 = arith.subf %63, %65 : f64
                %67 = arith.addi %7, %c-1 : index
                %68 = memref.load %arg3[%67, %4, %61] : memref<?x10x10xf64>
                %69 = arith.addf %66, %68 : f64
                %70 = arith.mulf %69, %cst : f64
                %71 = arith.addi %4, %c1 : index
                %72 = memref.load %arg3[%7, %71, %61] : memref<?x10x10xf64>
                %73 = arith.subf %72, %65 : f64
                %74 = arith.addi %4, %c-1 : index
                %75 = memref.load %arg3[%7, %74, %61] : memref<?x10x10xf64>
                %76 = arith.addf %73, %75 : f64
                %77 = arith.mulf %76, %cst : f64
                %78 = arith.addf %70, %77 : f64
                %79 = arith.addi %61, %c1 : index
                %80 = memref.load %arg3[%7, %4, %79] : memref<?x10x10xf64>
                %81 = arith.subf %80, %65 : f64
                %82 = arith.addi %61, %c-1 : index
                %83 = memref.load %arg3[%7, %4, %82] : memref<?x10x10xf64>
                %84 = arith.addf %81, %83 : f64
                %85 = arith.mulf %84, %cst : f64
                %86 = arith.addf %78, %85 : f64
                %87 = arith.addf %86, %64 : f64
                memref.store %87, %arg2[%7, %4, %61] : memref<?x10x10xf64>
                %88 = arith.addi %6, %c3 : index
                %89 = arith.addi %7, %c1 : index
                %90 = memref.load %arg3[%89, %4, %88] : memref<?x10x10xf64>
                %91 = memref.load %arg3[%7, %4, %88] : memref<?x10x10xf64>
                %92 = arith.mulf %91, %cst_0 : f64
                %93 = arith.subf %90, %92 : f64
                %94 = arith.addi %7, %c-1 : index
                %95 = memref.load %arg3[%94, %4, %88] : memref<?x10x10xf64>
                %96 = arith.addf %93, %95 : f64
                %97 = arith.mulf %96, %cst : f64
                %98 = arith.addi %4, %c1 : index
                %99 = memref.load %arg3[%7, %98, %88] : memref<?x10x10xf64>
                %100 = arith.subf %99, %92 : f64
                %101 = arith.addi %4, %c-1 : index
                %102 = memref.load %arg3[%7, %101, %88] : memref<?x10x10xf64>
                %103 = arith.addf %100, %102 : f64
                %104 = arith.mulf %103, %cst : f64
                %105 = arith.addf %97, %104 : f64
                %106 = arith.addi %88, %c1 : index
                %107 = memref.load %arg3[%7, %4, %106] : memref<?x10x10xf64>
                %108 = arith.subf %107, %92 : f64
                %109 = arith.addi %88, %c-1 : index
                %110 = memref.load %arg3[%7, %4, %109] : memref<?x10x10xf64>
                %111 = arith.addf %108, %110 : f64
                %112 = arith.mulf %111, %cst : f64
                %113 = arith.addf %105, %112 : f64
                %114 = arith.addf %113, %91 : f64
                memref.store %114, %arg2[%7, %4, %88] : memref<?x10x10xf64>
              }
            }
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg5, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

