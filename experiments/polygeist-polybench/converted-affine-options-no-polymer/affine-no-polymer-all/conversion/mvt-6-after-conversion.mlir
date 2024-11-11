module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c40 = arith.constant 40 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      %2 = arith.muli %arg6, %c4 : index
      scf.for %arg7 = %c0 to %c10 step %c1 {
        %3 = arith.muli %arg7, %c4 : index
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %4 = arith.muli %arg8, %c4 : index
          %5 = arith.addi %2, %4 : index
          %6 = arith.addi %5, %c1 : index
          %7 = arith.addi %5, %c2 : index
          %8 = arith.addi %5, %c3 : index
          scf.for %arg9 = %c0 to %c1 step %c1 {
            %9 = arith.muli %arg9, %c4 : index
            %10 = arith.addi %3, %9 : index
            %11 = memref.load %arg1[%5] : memref<?xf64>
            %12 = memref.load %arg5[%5, %10] : memref<?x40xf64>
            %13 = memref.load %arg3[%10] : memref<?xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = arith.addf %11, %14 : f64
            memref.store %15, %arg1[%5] : memref<?xf64>
            %16 = arith.addi %10, %c1 : index
            %17 = memref.load %arg1[%5] : memref<?xf64>
            %18 = memref.load %arg5[%5, %16] : memref<?x40xf64>
            %19 = memref.load %arg3[%16] : memref<?xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = arith.addf %17, %20 : f64
            memref.store %21, %arg1[%5] : memref<?xf64>
            %22 = arith.addi %10, %c2 : index
            %23 = memref.load %arg1[%5] : memref<?xf64>
            %24 = memref.load %arg5[%5, %22] : memref<?x40xf64>
            %25 = memref.load %arg3[%22] : memref<?xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = arith.addf %23, %26 : f64
            memref.store %27, %arg1[%5] : memref<?xf64>
            %28 = arith.addi %10, %c3 : index
            %29 = memref.load %arg1[%5] : memref<?xf64>
            %30 = memref.load %arg5[%5, %28] : memref<?x40xf64>
            %31 = memref.load %arg3[%28] : memref<?xf64>
            %32 = arith.mulf %30, %31 : f64
            %33 = arith.addf %29, %32 : f64
            memref.store %33, %arg1[%5] : memref<?xf64>
            %34 = memref.load %arg1[%6] : memref<?xf64>
            %35 = memref.load %arg5[%6, %10] : memref<?x40xf64>
            %36 = memref.load %arg3[%10] : memref<?xf64>
            %37 = arith.mulf %35, %36 : f64
            %38 = arith.addf %34, %37 : f64
            memref.store %38, %arg1[%6] : memref<?xf64>
            %39 = arith.addi %10, %c1 : index
            %40 = memref.load %arg1[%6] : memref<?xf64>
            %41 = memref.load %arg5[%6, %39] : memref<?x40xf64>
            %42 = memref.load %arg3[%39] : memref<?xf64>
            %43 = arith.mulf %41, %42 : f64
            %44 = arith.addf %40, %43 : f64
            memref.store %44, %arg1[%6] : memref<?xf64>
            %45 = arith.addi %10, %c2 : index
            %46 = memref.load %arg1[%6] : memref<?xf64>
            %47 = memref.load %arg5[%6, %45] : memref<?x40xf64>
            %48 = memref.load %arg3[%45] : memref<?xf64>
            %49 = arith.mulf %47, %48 : f64
            %50 = arith.addf %46, %49 : f64
            memref.store %50, %arg1[%6] : memref<?xf64>
            %51 = arith.addi %10, %c3 : index
            %52 = memref.load %arg1[%6] : memref<?xf64>
            %53 = memref.load %arg5[%6, %51] : memref<?x40xf64>
            %54 = memref.load %arg3[%51] : memref<?xf64>
            %55 = arith.mulf %53, %54 : f64
            %56 = arith.addf %52, %55 : f64
            memref.store %56, %arg1[%6] : memref<?xf64>
            %57 = memref.load %arg1[%7] : memref<?xf64>
            %58 = memref.load %arg5[%7, %10] : memref<?x40xf64>
            %59 = memref.load %arg3[%10] : memref<?xf64>
            %60 = arith.mulf %58, %59 : f64
            %61 = arith.addf %57, %60 : f64
            memref.store %61, %arg1[%7] : memref<?xf64>
            %62 = arith.addi %10, %c1 : index
            %63 = memref.load %arg1[%7] : memref<?xf64>
            %64 = memref.load %arg5[%7, %62] : memref<?x40xf64>
            %65 = memref.load %arg3[%62] : memref<?xf64>
            %66 = arith.mulf %64, %65 : f64
            %67 = arith.addf %63, %66 : f64
            memref.store %67, %arg1[%7] : memref<?xf64>
            %68 = arith.addi %10, %c2 : index
            %69 = memref.load %arg1[%7] : memref<?xf64>
            %70 = memref.load %arg5[%7, %68] : memref<?x40xf64>
            %71 = memref.load %arg3[%68] : memref<?xf64>
            %72 = arith.mulf %70, %71 : f64
            %73 = arith.addf %69, %72 : f64
            memref.store %73, %arg1[%7] : memref<?xf64>
            %74 = arith.addi %10, %c3 : index
            %75 = memref.load %arg1[%7] : memref<?xf64>
            %76 = memref.load %arg5[%7, %74] : memref<?x40xf64>
            %77 = memref.load %arg3[%74] : memref<?xf64>
            %78 = arith.mulf %76, %77 : f64
            %79 = arith.addf %75, %78 : f64
            memref.store %79, %arg1[%7] : memref<?xf64>
            %80 = memref.load %arg1[%8] : memref<?xf64>
            %81 = memref.load %arg5[%8, %10] : memref<?x40xf64>
            %82 = memref.load %arg3[%10] : memref<?xf64>
            %83 = arith.mulf %81, %82 : f64
            %84 = arith.addf %80, %83 : f64
            memref.store %84, %arg1[%8] : memref<?xf64>
            %85 = arith.addi %10, %c1 : index
            %86 = memref.load %arg1[%8] : memref<?xf64>
            %87 = memref.load %arg5[%8, %85] : memref<?x40xf64>
            %88 = memref.load %arg3[%85] : memref<?xf64>
            %89 = arith.mulf %87, %88 : f64
            %90 = arith.addf %86, %89 : f64
            memref.store %90, %arg1[%8] : memref<?xf64>
            %91 = arith.addi %10, %c2 : index
            %92 = memref.load %arg1[%8] : memref<?xf64>
            %93 = memref.load %arg5[%8, %91] : memref<?x40xf64>
            %94 = memref.load %arg3[%91] : memref<?xf64>
            %95 = arith.mulf %93, %94 : f64
            %96 = arith.addf %92, %95 : f64
            memref.store %96, %arg1[%8] : memref<?xf64>
            %97 = arith.addi %10, %c3 : index
            %98 = memref.load %arg1[%8] : memref<?xf64>
            %99 = memref.load %arg5[%8, %97] : memref<?x40xf64>
            %100 = memref.load %arg3[%97] : memref<?xf64>
            %101 = arith.mulf %99, %100 : f64
            %102 = arith.addf %98, %101 : f64
            memref.store %102, %arg1[%8] : memref<?xf64>
          }
        }
      }
    }
    %0 = async.create_group %c40 : !async.group
    %1 = scf.for %arg6 = %c0 to %c40 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c10 step %c1 {
          %4 = arith.muli %arg8, %c4 : index
          scf.for %arg9 = %c0 to %c1 step %c1 {
            %5 = arith.addi %arg6, %arg9 : index
            scf.for %arg10 = %c0 to %c1 step %c1 {
              %6 = arith.muli %arg10, %c4 : index
              %7 = arith.addi %4, %6 : index
              %8 = memref.load %arg2[%5] : memref<?xf64>
              %9 = memref.load %arg5[%7, %5] : memref<?x40xf64>
              %10 = memref.load %arg4[%7] : memref<?xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = arith.addf %8, %11 : f64
              memref.store %12, %arg2[%5] : memref<?xf64>
              %13 = arith.addi %7, %c1 : index
              %14 = memref.load %arg2[%5] : memref<?xf64>
              %15 = memref.load %arg5[%13, %5] : memref<?x40xf64>
              %16 = memref.load %arg4[%13] : memref<?xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = arith.addf %14, %17 : f64
              memref.store %18, %arg2[%5] : memref<?xf64>
              %19 = arith.addi %7, %c2 : index
              %20 = memref.load %arg2[%5] : memref<?xf64>
              %21 = memref.load %arg5[%19, %5] : memref<?x40xf64>
              %22 = memref.load %arg4[%19] : memref<?xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = arith.addf %20, %23 : f64
              memref.store %24, %arg2[%5] : memref<?xf64>
              %25 = arith.addi %7, %c3 : index
              %26 = memref.load %arg2[%5] : memref<?xf64>
              %27 = memref.load %arg5[%25, %5] : memref<?x40xf64>
              %28 = memref.load %arg4[%25] : memref<?xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = arith.addf %26, %29 : f64
              memref.store %30, %arg2[%5] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg7, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

