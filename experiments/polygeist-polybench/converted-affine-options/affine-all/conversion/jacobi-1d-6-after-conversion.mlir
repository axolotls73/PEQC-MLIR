module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c27 = arith.constant 27 : index
    %c-2 = arith.constant -2 : index
    %c29 = arith.constant 29 : index
    %c1024 = arith.constant 1024 : index
    %c2 = arith.constant 2 : index
    %c-32 = arith.constant -32 : index
    %c-1 = arith.constant -1 : index
    %c15 = arith.constant 15 : index
    %c20 = arith.constant 20 : index
    %c-14 = arith.constant -14 : index
    %c512 = arith.constant 512 : index
    %c16 = arith.constant 16 : index
    %c3 = arith.constant 3 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg4 = %c0 to %c1 step %c1 iter_args(%arg5 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg6 = %c0 to %c3 step %c1 {
          %4 = arith.muli %arg6, %c16 : index
          %5 = arith.muli %arg4, %c512 : index
          %6 = arith.addi %4, %5 : index
          %7 = arith.addi %6, %c-14 : index
          %8 = arith.maxsi %7, %c0 : index
          %9 = arith.muli %arg6, %c16 : index
          %10 = arith.muli %arg4, %c512 : index
          %11 = arith.addi %9, %10 : index
          %12 = arith.addi %11, %c15 : index
          %13 = arith.minsi %12, %c20 : index
          scf.for %arg7 = %8 to %13 step %c1 {
            %17 = arith.muli %arg6, %c-1 : index
            %18 = arith.muli %arg4, %c-32 : index
            %19 = arith.addi %17, %18 : index
            %20 = arith.cmpi slt, %arg7, %c0 : index
            %21 = arith.subi %c-1, %arg7 : index
            %22 = arith.select %20, %21, %arg7 : index
            %23 = arith.divsi %22, %c16 : index
            %24 = arith.subi %c-1, %23 : index
            %25 = arith.select %20, %24, %23 : index
            %26 = arith.addi %19, %25 : index
            %27 = arith.cmpi sge, %26, %c0 : index
            scf.if %27 {
              %55 = memref.load %arg2[%c0] : memref<?xf64>
              %56 = memref.load %arg2[%c1] : memref<?xf64>
              %57 = arith.addf %55, %56 : f64
              %58 = memref.load %arg2[%c2] : memref<?xf64>
              %59 = arith.addf %57, %58 : f64
              %60 = arith.mulf %59, %cst : f64
              memref.store %60, %arg3[%c1] : memref<?xf64>
            }
            %28 = arith.muli %arg6, %c32 : index
            %29 = arith.muli %arg4, %c1024 : index
            %30 = arith.addi %28, %29 : index
            %31 = arith.muli %arg7, %c2 : index
            %32 = arith.addi %31, %c2 : index
            %33 = arith.maxsi %30, %32 : index
            %34 = arith.muli %arg6, %c32 : index
            %35 = arith.muli %arg4, %c1024 : index
            %36 = arith.addi %34, %35 : index
            %37 = arith.addi %36, %c32 : index
            %38 = arith.muli %arg7, %c2 : index
            %39 = arith.addi %38, %c29 : index
            %40 = arith.minsi %37, %39 : index
            scf.for %arg8 = %33 to %40 step %c1 {
              %55 = arith.muli %arg7, %c-2 : index
              %56 = arith.addi %55, %arg8 : index
              %57 = arith.addi %56, %c-1 : index
              %58 = memref.load %arg2[%57] : memref<?xf64>
              %59 = arith.muli %arg7, %c-2 : index
              %60 = arith.addi %59, %arg8 : index
              %61 = memref.load %arg2[%60] : memref<?xf64>
              %62 = arith.addf %58, %61 : f64
              %63 = arith.muli %arg7, %c-2 : index
              %64 = arith.addi %63, %arg8 : index
              %65 = arith.addi %64, %c1 : index
              %66 = memref.load %arg2[%65] : memref<?xf64>
              %67 = arith.addf %62, %66 : f64
              %68 = arith.mulf %67, %cst : f64
              %69 = arith.muli %arg7, %c-2 : index
              %70 = arith.addi %69, %arg8 : index
              memref.store %68, %arg3[%70] : memref<?xf64>
              %71 = arith.muli %arg7, %c-2 : index
              %72 = arith.addi %71, %arg8 : index
              %73 = arith.addi %72, %c-2 : index
              %74 = memref.load %arg3[%73] : memref<?xf64>
              %75 = arith.muli %arg7, %c-2 : index
              %76 = arith.addi %75, %arg8 : index
              %77 = arith.addi %76, %c-1 : index
              %78 = memref.load %arg3[%77] : memref<?xf64>
              %79 = arith.addf %74, %78 : f64
              %80 = arith.muli %arg7, %c-2 : index
              %81 = arith.addi %80, %arg8 : index
              %82 = memref.load %arg3[%81] : memref<?xf64>
              %83 = arith.addf %79, %82 : f64
              %84 = arith.mulf %83, %cst : f64
              %85 = arith.muli %arg7, %c-2 : index
              %86 = arith.addi %85, %arg8 : index
              %87 = arith.addi %86, %c-1 : index
              memref.store %84, %arg2[%87] : memref<?xf64>
            }
            %41 = arith.muli %arg4, %c32 : index
            %42 = arith.addi %arg6, %41 : index
            %43 = arith.addi %arg7, %c-1 : index
            %44 = arith.cmpi sle, %43, %c0 : index
            %45 = arith.subi %c0, %43 : index
            %46 = arith.subi %43, %c1 : index
            %47 = arith.select %44, %45, %46 : index
            %48 = arith.divsi %47, %c16 : index
            %49 = arith.subi %c0, %48 : index
            %50 = arith.addi %48, %c1 : index
            %51 = arith.select %44, %49, %50 : index
            %52 = arith.muli %51, %c-1 : index
            %53 = arith.addi %42, %52 : index
            %54 = arith.cmpi sge, %53, %c0 : index
            scf.if %54 {
              %55 = memref.load %arg3[%c27] : memref<?xf64>
              %56 = memref.load %arg3[%c28] : memref<?xf64>
              %57 = arith.addf %55, %56 : f64
              %58 = memref.load %arg3[%c29] : memref<?xf64>
              %59 = arith.addf %57, %58 : f64
              %60 = arith.mulf %59, %cst : f64
              memref.store %60, %arg2[%c28] : memref<?xf64>
            }
          }
          %14 = arith.muli %arg4, %c32 : index
          %15 = arith.addi %arg6, %14 : index
          %16 = arith.cmpi eq, %15, %c0 : index
          scf.if %16 {
            %17 = memref.load %arg2[%c0] : memref<?xf64>
            %18 = memref.load %arg2[%c1] : memref<?xf64>
            %19 = arith.addf %17, %18 : f64
            %20 = memref.load %arg2[%c2] : memref<?xf64>
            %21 = arith.addf %19, %20 : f64
            %22 = arith.mulf %21, %cst : f64
            memref.store %22, %arg3[%c1] : memref<?xf64>
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

