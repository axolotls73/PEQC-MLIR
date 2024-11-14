module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c32 = arith.constant 32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c10 = arith.constant 10 : index
    %c128 = arith.constant 128 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg6, %c128 : index
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %7 = arith.muli %arg8, %c128 : index
          scf.for %arg9 = %c0 to %c10 step %c1 {
            %8 = arith.muli %arg9, %c4 : index
            %9 = arith.addi %6, %8 : index
            %10 = arith.addi %9, %c1 : index
            %11 = arith.addi %9, %c2 : index
            %12 = arith.addi %9, %c3 : index
            scf.for %arg10 = %c0 to %c10 step %c1 {
              %13 = arith.muli %arg10, %c4 : index
              %14 = arith.addi %7, %13 : index
              %15 = memref.load %arg1[%9] : memref<?xf64>
              %16 = memref.load %arg5[%9, %14] : memref<?x40xf64>
              %17 = memref.load %arg3[%14] : memref<?xf64>
              %18 = arith.mulf %16, %17 : f64
              %19 = arith.addf %15, %18 : f64
              memref.store %19, %arg1[%9] : memref<?xf64>
              %20 = arith.addi %14, %c1 : index
              %21 = memref.load %arg1[%9] : memref<?xf64>
              %22 = memref.load %arg5[%9, %20] : memref<?x40xf64>
              %23 = memref.load %arg3[%20] : memref<?xf64>
              %24 = arith.mulf %22, %23 : f64
              %25 = arith.addf %21, %24 : f64
              memref.store %25, %arg1[%9] : memref<?xf64>
              %26 = arith.addi %14, %c2 : index
              %27 = memref.load %arg1[%9] : memref<?xf64>
              %28 = memref.load %arg5[%9, %26] : memref<?x40xf64>
              %29 = memref.load %arg3[%26] : memref<?xf64>
              %30 = arith.mulf %28, %29 : f64
              %31 = arith.addf %27, %30 : f64
              memref.store %31, %arg1[%9] : memref<?xf64>
              %32 = arith.addi %14, %c3 : index
              %33 = memref.load %arg1[%9] : memref<?xf64>
              %34 = memref.load %arg5[%9, %32] : memref<?x40xf64>
              %35 = memref.load %arg3[%32] : memref<?xf64>
              %36 = arith.mulf %34, %35 : f64
              %37 = arith.addf %33, %36 : f64
              memref.store %37, %arg1[%9] : memref<?xf64>
              %38 = memref.load %arg1[%10] : memref<?xf64>
              %39 = memref.load %arg5[%10, %14] : memref<?x40xf64>
              %40 = memref.load %arg3[%14] : memref<?xf64>
              %41 = arith.mulf %39, %40 : f64
              %42 = arith.addf %38, %41 : f64
              memref.store %42, %arg1[%10] : memref<?xf64>
              %43 = arith.addi %14, %c1 : index
              %44 = memref.load %arg1[%10] : memref<?xf64>
              %45 = memref.load %arg5[%10, %43] : memref<?x40xf64>
              %46 = memref.load %arg3[%43] : memref<?xf64>
              %47 = arith.mulf %45, %46 : f64
              %48 = arith.addf %44, %47 : f64
              memref.store %48, %arg1[%10] : memref<?xf64>
              %49 = arith.addi %14, %c2 : index
              %50 = memref.load %arg1[%10] : memref<?xf64>
              %51 = memref.load %arg5[%10, %49] : memref<?x40xf64>
              %52 = memref.load %arg3[%49] : memref<?xf64>
              %53 = arith.mulf %51, %52 : f64
              %54 = arith.addf %50, %53 : f64
              memref.store %54, %arg1[%10] : memref<?xf64>
              %55 = arith.addi %14, %c3 : index
              %56 = memref.load %arg1[%10] : memref<?xf64>
              %57 = memref.load %arg5[%10, %55] : memref<?x40xf64>
              %58 = memref.load %arg3[%55] : memref<?xf64>
              %59 = arith.mulf %57, %58 : f64
              %60 = arith.addf %56, %59 : f64
              memref.store %60, %arg1[%10] : memref<?xf64>
              %61 = memref.load %arg1[%11] : memref<?xf64>
              %62 = memref.load %arg5[%11, %14] : memref<?x40xf64>
              %63 = memref.load %arg3[%14] : memref<?xf64>
              %64 = arith.mulf %62, %63 : f64
              %65 = arith.addf %61, %64 : f64
              memref.store %65, %arg1[%11] : memref<?xf64>
              %66 = arith.addi %14, %c1 : index
              %67 = memref.load %arg1[%11] : memref<?xf64>
              %68 = memref.load %arg5[%11, %66] : memref<?x40xf64>
              %69 = memref.load %arg3[%66] : memref<?xf64>
              %70 = arith.mulf %68, %69 : f64
              %71 = arith.addf %67, %70 : f64
              memref.store %71, %arg1[%11] : memref<?xf64>
              %72 = arith.addi %14, %c2 : index
              %73 = memref.load %arg1[%11] : memref<?xf64>
              %74 = memref.load %arg5[%11, %72] : memref<?x40xf64>
              %75 = memref.load %arg3[%72] : memref<?xf64>
              %76 = arith.mulf %74, %75 : f64
              %77 = arith.addf %73, %76 : f64
              memref.store %77, %arg1[%11] : memref<?xf64>
              %78 = arith.addi %14, %c3 : index
              %79 = memref.load %arg1[%11] : memref<?xf64>
              %80 = memref.load %arg5[%11, %78] : memref<?x40xf64>
              %81 = memref.load %arg3[%78] : memref<?xf64>
              %82 = arith.mulf %80, %81 : f64
              %83 = arith.addf %79, %82 : f64
              memref.store %83, %arg1[%11] : memref<?xf64>
              %84 = memref.load %arg1[%12] : memref<?xf64>
              %85 = memref.load %arg5[%12, %14] : memref<?x40xf64>
              %86 = memref.load %arg3[%14] : memref<?xf64>
              %87 = arith.mulf %85, %86 : f64
              %88 = arith.addf %84, %87 : f64
              memref.store %88, %arg1[%12] : memref<?xf64>
              %89 = arith.addi %14, %c1 : index
              %90 = memref.load %arg1[%12] : memref<?xf64>
              %91 = memref.load %arg5[%12, %89] : memref<?x40xf64>
              %92 = memref.load %arg3[%89] : memref<?xf64>
              %93 = arith.mulf %91, %92 : f64
              %94 = arith.addf %90, %93 : f64
              memref.store %94, %arg1[%12] : memref<?xf64>
              %95 = arith.addi %14, %c2 : index
              %96 = memref.load %arg1[%12] : memref<?xf64>
              %97 = memref.load %arg5[%12, %95] : memref<?x40xf64>
              %98 = memref.load %arg3[%95] : memref<?xf64>
              %99 = arith.mulf %97, %98 : f64
              %100 = arith.addf %96, %99 : f64
              memref.store %100, %arg1[%12] : memref<?xf64>
              %101 = arith.addi %14, %c3 : index
              %102 = memref.load %arg1[%12] : memref<?xf64>
              %103 = memref.load %arg5[%12, %101] : memref<?x40xf64>
              %104 = memref.load %arg3[%101] : memref<?xf64>
              %105 = arith.mulf %103, %104 : f64
              %106 = arith.addf %102, %105 : f64
              memref.store %106, %arg1[%12] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c2 : !async.group
    %3 = scf.for %arg6 = %c0 to %c2 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg6, %c32 : index
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %7 = arith.muli %arg8, %c128 : index
          %8 = arith.muli %arg6, %c-32 : index
          %9 = arith.addi %8, %c40 : index
          %10 = arith.minsi %9, %c32 : index
          scf.for %arg9 = %c0 to %10 step %c1 {
            %11 = arith.addi %6, %arg9 : index
            scf.for %arg10 = %c0 to %c10 step %c1 {
              %12 = arith.muli %arg10, %c4 : index
              %13 = arith.addi %7, %12 : index
              %14 = memref.load %arg2[%11] : memref<?xf64>
              %15 = memref.load %arg5[%13, %11] : memref<?x40xf64>
              %16 = memref.load %arg4[%13] : memref<?xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = arith.addf %14, %17 : f64
              memref.store %18, %arg2[%11] : memref<?xf64>
              %19 = arith.addi %13, %c1 : index
              %20 = memref.load %arg2[%11] : memref<?xf64>
              %21 = memref.load %arg5[%19, %11] : memref<?x40xf64>
              %22 = memref.load %arg4[%19] : memref<?xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = arith.addf %20, %23 : f64
              memref.store %24, %arg2[%11] : memref<?xf64>
              %25 = arith.addi %13, %c2 : index
              %26 = memref.load %arg2[%11] : memref<?xf64>
              %27 = memref.load %arg5[%25, %11] : memref<?x40xf64>
              %28 = memref.load %arg4[%25] : memref<?xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = arith.addf %26, %29 : f64
              memref.store %30, %arg2[%11] : memref<?xf64>
              %31 = arith.addi %13, %c3 : index
              %32 = memref.load %arg2[%11] : memref<?xf64>
              %33 = memref.load %arg5[%31, %11] : memref<?x40xf64>
              %34 = memref.load %arg4[%31] : memref<?xf64>
              %35 = arith.mulf %33, %34 : f64
              %36 = arith.addf %32, %35 : f64
              memref.store %36, %arg2[%11] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

