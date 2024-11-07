module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c2 step %c1 {
      scf.for %arg13 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg13, %c32 : index
        %1 = arith.muli %arg13, %c32 : index
        %2 = arith.addi %1, %c32 : index
        %3 = arith.minsi %2, %c40 : index
        scf.for %arg14 = %0 to %3 step %c1 {
          %4 = arith.muli %arg12, %c32 : index
          %5 = arith.muli %arg12, %c32 : index
          %6 = arith.addi %5, %c32 : index
          %7 = arith.minsi %6, %c40 : index
          scf.for %arg15 = %4 to %7 step %c4 {
            %8 = memref.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %9 = memref.load %arg4[%arg14] : memref<?xf64>
            %10 = memref.load %arg5[%arg15] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %8, %11 : f64
            %13 = memref.load %arg6[%arg14] : memref<?xf64>
            %14 = memref.load %arg7[%arg15] : memref<?xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = arith.addf %12, %15 : f64
            memref.store %16, %arg3[%arg14, %arg15] : memref<?x40xf64>
            %17 = memref.load %arg9[%arg15] : memref<?xf64>
            %18 = memref.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %19 = arith.mulf %arg2, %18 : f64
            %20 = memref.load %arg10[%arg14] : memref<?xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = arith.addf %17, %21 : f64
            memref.store %22, %arg9[%arg15] : memref<?xf64>
            %23 = arith.addi %arg15, %c1 : index
            %24 = memref.load %arg3[%arg14, %23] : memref<?x40xf64>
            %25 = memref.load %arg4[%arg14] : memref<?xf64>
            %26 = memref.load %arg5[%23] : memref<?xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = arith.addf %24, %27 : f64
            %29 = memref.load %arg6[%arg14] : memref<?xf64>
            %30 = memref.load %arg7[%23] : memref<?xf64>
            %31 = arith.mulf %29, %30 : f64
            %32 = arith.addf %28, %31 : f64
            memref.store %32, %arg3[%arg14, %23] : memref<?x40xf64>
            %33 = memref.load %arg9[%23] : memref<?xf64>
            %34 = memref.load %arg3[%arg14, %23] : memref<?x40xf64>
            %35 = arith.mulf %arg2, %34 : f64
            %36 = memref.load %arg10[%arg14] : memref<?xf64>
            %37 = arith.mulf %35, %36 : f64
            %38 = arith.addf %33, %37 : f64
            memref.store %38, %arg9[%23] : memref<?xf64>
            %39 = arith.addi %arg15, %c2 : index
            %40 = memref.load %arg3[%arg14, %39] : memref<?x40xf64>
            %41 = memref.load %arg4[%arg14] : memref<?xf64>
            %42 = memref.load %arg5[%39] : memref<?xf64>
            %43 = arith.mulf %41, %42 : f64
            %44 = arith.addf %40, %43 : f64
            %45 = memref.load %arg6[%arg14] : memref<?xf64>
            %46 = memref.load %arg7[%39] : memref<?xf64>
            %47 = arith.mulf %45, %46 : f64
            %48 = arith.addf %44, %47 : f64
            memref.store %48, %arg3[%arg14, %39] : memref<?x40xf64>
            %49 = memref.load %arg9[%39] : memref<?xf64>
            %50 = memref.load %arg3[%arg14, %39] : memref<?x40xf64>
            %51 = arith.mulf %arg2, %50 : f64
            %52 = memref.load %arg10[%arg14] : memref<?xf64>
            %53 = arith.mulf %51, %52 : f64
            %54 = arith.addf %49, %53 : f64
            memref.store %54, %arg9[%39] : memref<?xf64>
            %55 = arith.addi %arg15, %c3 : index
            %56 = memref.load %arg3[%arg14, %55] : memref<?x40xf64>
            %57 = memref.load %arg4[%arg14] : memref<?xf64>
            %58 = memref.load %arg5[%55] : memref<?xf64>
            %59 = arith.mulf %57, %58 : f64
            %60 = arith.addf %56, %59 : f64
            %61 = memref.load %arg6[%arg14] : memref<?xf64>
            %62 = memref.load %arg7[%55] : memref<?xf64>
            %63 = arith.mulf %61, %62 : f64
            %64 = arith.addf %60, %63 : f64
            memref.store %64, %arg3[%arg14, %55] : memref<?x40xf64>
            %65 = memref.load %arg9[%55] : memref<?xf64>
            %66 = memref.load %arg3[%arg14, %55] : memref<?x40xf64>
            %67 = arith.mulf %arg2, %66 : f64
            %68 = memref.load %arg10[%arg14] : memref<?xf64>
            %69 = arith.mulf %67, %68 : f64
            %70 = arith.addf %65, %69 : f64
            memref.store %70, %arg9[%55] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg12, %c32 : index
      %1 = arith.muli %arg12, %c32 : index
      %2 = arith.addi %1, %c32 : index
      %3 = arith.minsi %2, %c40 : index
      scf.for %arg13 = %0 to %3 step %c4 {
        %4 = memref.load %arg9[%arg13] : memref<?xf64>
        %5 = memref.load %arg11[%arg13] : memref<?xf64>
        %6 = arith.addf %4, %5 : f64
        memref.store %6, %arg9[%arg13] : memref<?xf64>
        %7 = arith.addi %arg13, %c1 : index
        %8 = memref.load %arg9[%7] : memref<?xf64>
        %9 = memref.load %arg11[%7] : memref<?xf64>
        %10 = arith.addf %8, %9 : f64
        memref.store %10, %arg9[%7] : memref<?xf64>
        %11 = arith.addi %arg13, %c2 : index
        %12 = memref.load %arg9[%11] : memref<?xf64>
        %13 = memref.load %arg11[%11] : memref<?xf64>
        %14 = arith.addf %12, %13 : f64
        memref.store %14, %arg9[%11] : memref<?xf64>
        %15 = arith.addi %arg13, %c3 : index
        %16 = memref.load %arg9[%15] : memref<?xf64>
        %17 = memref.load %arg11[%15] : memref<?xf64>
        %18 = arith.addf %16, %17 : f64
        memref.store %18, %arg9[%15] : memref<?xf64>
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      scf.for %arg13 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg12, %c32 : index
        %1 = arith.muli %arg12, %c32 : index
        %2 = arith.addi %1, %c32 : index
        %3 = arith.minsi %2, %c40 : index
        scf.for %arg14 = %0 to %3 step %c1 {
          %4 = arith.muli %arg13, %c32 : index
          %5 = arith.muli %arg13, %c32 : index
          %6 = arith.addi %5, %c32 : index
          %7 = arith.minsi %6, %c40 : index
          scf.for %arg15 = %4 to %7 step %c4 {
            %8 = memref.load %arg8[%arg14] : memref<?xf64>
            %9 = memref.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %10 = arith.mulf %arg1, %9 : f64
            %11 = memref.load %arg9[%arg15] : memref<?xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.addf %8, %12 : f64
            memref.store %13, %arg8[%arg14] : memref<?xf64>
            %14 = arith.addi %arg15, %c1 : index
            %15 = memref.load %arg8[%arg14] : memref<?xf64>
            %16 = memref.load %arg3[%arg14, %14] : memref<?x40xf64>
            %17 = arith.mulf %arg1, %16 : f64
            %18 = memref.load %arg9[%14] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %15, %19 : f64
            memref.store %20, %arg8[%arg14] : memref<?xf64>
            %21 = arith.addi %arg15, %c2 : index
            %22 = memref.load %arg8[%arg14] : memref<?xf64>
            %23 = memref.load %arg3[%arg14, %21] : memref<?x40xf64>
            %24 = arith.mulf %arg1, %23 : f64
            %25 = memref.load %arg9[%21] : memref<?xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = arith.addf %22, %26 : f64
            memref.store %27, %arg8[%arg14] : memref<?xf64>
            %28 = arith.addi %arg15, %c3 : index
            %29 = memref.load %arg8[%arg14] : memref<?xf64>
            %30 = memref.load %arg3[%arg14, %28] : memref<?x40xf64>
            %31 = arith.mulf %arg1, %30 : f64
            %32 = memref.load %arg9[%28] : memref<?xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = arith.addf %29, %33 : f64
            memref.store %34, %arg8[%arg14] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

