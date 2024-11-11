module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c10 = arith.constant 10 : index
    %c-8 = arith.constant -8 : index
    %c32 = arith.constant 32 : index
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c2 step %c1 {
      scf.for %arg13 = %c0 to %c2 step %c1 {
        %2 = arith.muli %arg13, %c-32 : index
        %3 = arith.addi %2, %c40 : index
        %4 = arith.minsi %3, %c32 : index
        scf.for %arg14 = %c0 to %4 step %c1 {
          %5 = arith.muli %arg13, %c32 : index
          %6 = arith.addi %5, %arg14 : index
          %7 = memref.load %arg4[%6] : memref<?xf64>
          %8 = memref.load %arg6[%6] : memref<?xf64>
          %9 = memref.load %arg10[%6] : memref<?xf64>
          %10 = memref.load %arg4[%6] : memref<?xf64>
          %11 = memref.load %arg6[%6] : memref<?xf64>
          %12 = memref.load %arg10[%6] : memref<?xf64>
          %13 = memref.load %arg4[%6] : memref<?xf64>
          %14 = memref.load %arg6[%6] : memref<?xf64>
          %15 = memref.load %arg10[%6] : memref<?xf64>
          %16 = memref.load %arg4[%6] : memref<?xf64>
          %17 = memref.load %arg6[%6] : memref<?xf64>
          %18 = memref.load %arg10[%6] : memref<?xf64>
          %19 = arith.muli %arg12, %c-8 : index
          %20 = arith.addi %19, %c10 : index
          %21 = arith.minsi %20, %c8 : index
          scf.for %arg15 = %c0 to %21 step %c1 {
            %22 = arith.muli %arg12, %c32 : index
            %23 = arith.muli %arg15, %c4 : index
            %24 = arith.addi %22, %23 : index
            %25 = memref.load %arg3[%6, %24] : memref<?x40xf64>
            %26 = memref.load %arg5[%24] : memref<?xf64>
            %27 = arith.mulf %7, %26 : f64
            %28 = arith.addf %25, %27 : f64
            %29 = memref.load %arg7[%24] : memref<?xf64>
            %30 = arith.mulf %8, %29 : f64
            %31 = arith.addf %28, %30 : f64
            memref.store %31, %arg3[%6, %24] : memref<?x40xf64>
            %32 = memref.load %arg9[%24] : memref<?xf64>
            %33 = memref.load %arg3[%6, %24] : memref<?x40xf64>
            %34 = arith.mulf %arg2, %33 : f64
            %35 = arith.mulf %34, %9 : f64
            %36 = arith.addf %32, %35 : f64
            memref.store %36, %arg9[%24] : memref<?xf64>
            %37 = arith.addi %24, %c1 : index
            %38 = memref.load %arg3[%6, %37] : memref<?x40xf64>
            %39 = memref.load %arg5[%37] : memref<?xf64>
            %40 = arith.mulf %10, %39 : f64
            %41 = arith.addf %38, %40 : f64
            %42 = memref.load %arg7[%37] : memref<?xf64>
            %43 = arith.mulf %11, %42 : f64
            %44 = arith.addf %41, %43 : f64
            memref.store %44, %arg3[%6, %37] : memref<?x40xf64>
            %45 = memref.load %arg9[%37] : memref<?xf64>
            %46 = memref.load %arg3[%6, %37] : memref<?x40xf64>
            %47 = arith.mulf %arg2, %46 : f64
            %48 = arith.mulf %47, %12 : f64
            %49 = arith.addf %45, %48 : f64
            memref.store %49, %arg9[%37] : memref<?xf64>
            %50 = arith.addi %24, %c2 : index
            %51 = memref.load %arg3[%6, %50] : memref<?x40xf64>
            %52 = memref.load %arg5[%50] : memref<?xf64>
            %53 = arith.mulf %13, %52 : f64
            %54 = arith.addf %51, %53 : f64
            %55 = memref.load %arg7[%50] : memref<?xf64>
            %56 = arith.mulf %14, %55 : f64
            %57 = arith.addf %54, %56 : f64
            memref.store %57, %arg3[%6, %50] : memref<?x40xf64>
            %58 = memref.load %arg9[%50] : memref<?xf64>
            %59 = memref.load %arg3[%6, %50] : memref<?x40xf64>
            %60 = arith.mulf %arg2, %59 : f64
            %61 = arith.mulf %60, %15 : f64
            %62 = arith.addf %58, %61 : f64
            memref.store %62, %arg9[%50] : memref<?xf64>
            %63 = arith.addi %24, %c3 : index
            %64 = memref.load %arg3[%6, %63] : memref<?x40xf64>
            %65 = memref.load %arg5[%63] : memref<?xf64>
            %66 = arith.mulf %16, %65 : f64
            %67 = arith.addf %64, %66 : f64
            %68 = memref.load %arg7[%63] : memref<?xf64>
            %69 = arith.mulf %17, %68 : f64
            %70 = arith.addf %67, %69 : f64
            memref.store %70, %arg3[%6, %63] : memref<?x40xf64>
            %71 = memref.load %arg9[%63] : memref<?xf64>
            %72 = memref.load %arg3[%6, %63] : memref<?x40xf64>
            %73 = arith.mulf %arg2, %72 : f64
            %74 = arith.mulf %73, %18 : f64
            %75 = arith.addf %71, %74 : f64
            memref.store %75, %arg9[%63] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %2 = arith.muli %arg12, %c-8 : index
      %3 = arith.addi %2, %c10 : index
      %4 = arith.minsi %3, %c8 : index
      scf.for %arg13 = %c0 to %4 step %c1 {
        %5 = arith.muli %arg12, %c32 : index
        %6 = arith.muli %arg13, %c4 : index
        %7 = arith.addi %5, %6 : index
        %8 = memref.load %arg9[%7] : memref<?xf64>
        %9 = memref.load %arg11[%7] : memref<?xf64>
        %10 = arith.addf %8, %9 : f64
        memref.store %10, %arg9[%7] : memref<?xf64>
        %11 = arith.addi %7, %c1 : index
        %12 = memref.load %arg9[%11] : memref<?xf64>
        %13 = memref.load %arg11[%11] : memref<?xf64>
        %14 = arith.addf %12, %13 : f64
        memref.store %14, %arg9[%11] : memref<?xf64>
        %15 = arith.addi %7, %c2 : index
        %16 = memref.load %arg9[%15] : memref<?xf64>
        %17 = memref.load %arg11[%15] : memref<?xf64>
        %18 = arith.addf %16, %17 : f64
        memref.store %18, %arg9[%15] : memref<?xf64>
        %19 = arith.addi %7, %c3 : index
        %20 = memref.load %arg9[%19] : memref<?xf64>
        %21 = memref.load %arg11[%19] : memref<?xf64>
        %22 = arith.addf %20, %21 : f64
        memref.store %22, %arg9[%19] : memref<?xf64>
      }
    }
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %4 = arith.muli %arg12, %c-32 : index
          %5 = arith.addi %4, %c40 : index
          %6 = arith.minsi %5, %c32 : index
          scf.for %arg15 = %c0 to %6 step %c1 {
            %7 = arith.muli %arg12, %c32 : index
            %8 = arith.addi %7, %arg15 : index
            %9 = arith.muli %arg14, %c-8 : index
            %10 = arith.addi %9, %c10 : index
            %11 = arith.minsi %10, %c8 : index
            scf.for %arg16 = %c0 to %11 step %c1 {
              %12 = arith.muli %arg14, %c32 : index
              %13 = arith.muli %arg16, %c4 : index
              %14 = arith.addi %12, %13 : index
              %15 = memref.load %arg8[%8] : memref<?xf64>
              %16 = memref.load %arg3[%8, %14] : memref<?x40xf64>
              %17 = arith.mulf %arg1, %16 : f64
              %18 = memref.load %arg9[%14] : memref<?xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = arith.addf %15, %19 : f64
              memref.store %20, %arg8[%8] : memref<?xf64>
              %21 = arith.addi %14, %c1 : index
              %22 = memref.load %arg8[%8] : memref<?xf64>
              %23 = memref.load %arg3[%8, %21] : memref<?x40xf64>
              %24 = arith.mulf %arg1, %23 : f64
              %25 = memref.load %arg9[%21] : memref<?xf64>
              %26 = arith.mulf %24, %25 : f64
              %27 = arith.addf %22, %26 : f64
              memref.store %27, %arg8[%8] : memref<?xf64>
              %28 = arith.addi %14, %c2 : index
              %29 = memref.load %arg8[%8] : memref<?xf64>
              %30 = memref.load %arg3[%8, %28] : memref<?x40xf64>
              %31 = arith.mulf %arg1, %30 : f64
              %32 = memref.load %arg9[%28] : memref<?xf64>
              %33 = arith.mulf %31, %32 : f64
              %34 = arith.addf %29, %33 : f64
              memref.store %34, %arg8[%8] : memref<?xf64>
              %35 = arith.addi %14, %c3 : index
              %36 = memref.load %arg8[%8] : memref<?xf64>
              %37 = memref.load %arg3[%8, %35] : memref<?x40xf64>
              %38 = arith.mulf %arg1, %37 : f64
              %39 = memref.load %arg9[%35] : memref<?xf64>
              %40 = arith.mulf %38, %39 : f64
              %41 = arith.addf %36, %40 : f64
              memref.store %41, %arg8[%8] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg13, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

