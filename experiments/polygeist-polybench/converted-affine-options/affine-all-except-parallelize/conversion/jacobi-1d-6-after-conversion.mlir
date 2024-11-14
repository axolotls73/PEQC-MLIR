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
    scf.for %arg4 = %c0 to %c1 step %c1 {
      scf.for %arg5 = %c0 to %c3 step %c1 {
        %0 = arith.muli %arg5, %c16 : index
        %1 = arith.muli %arg4, %c512 : index
        %2 = arith.addi %0, %1 : index
        %3 = arith.addi %2, %c-14 : index
        %4 = arith.maxsi %3, %c0 : index
        %5 = arith.muli %arg5, %c16 : index
        %6 = arith.muli %arg4, %c512 : index
        %7 = arith.addi %5, %6 : index
        %8 = arith.addi %7, %c15 : index
        %9 = arith.minsi %8, %c20 : index
        scf.for %arg6 = %4 to %9 step %c1 {
          %13 = arith.muli %arg5, %c-1 : index
          %14 = arith.muli %arg4, %c-32 : index
          %15 = arith.addi %13, %14 : index
          %16 = arith.cmpi slt, %arg6, %c0 : index
          %17 = arith.subi %c-1, %arg6 : index
          %18 = arith.select %16, %17, %arg6 : index
          %19 = arith.divsi %18, %c16 : index
          %20 = arith.subi %c-1, %19 : index
          %21 = arith.select %16, %20, %19 : index
          %22 = arith.addi %15, %21 : index
          %23 = arith.cmpi sge, %22, %c0 : index
          scf.if %23 {
            %51 = memref.load %arg2[%c0] : memref<?xf64>
            %52 = memref.load %arg2[%c1] : memref<?xf64>
            %53 = arith.addf %51, %52 : f64
            %54 = memref.load %arg2[%c2] : memref<?xf64>
            %55 = arith.addf %53, %54 : f64
            %56 = arith.mulf %55, %cst : f64
            memref.store %56, %arg3[%c1] : memref<?xf64>
          }
          %24 = arith.muli %arg5, %c32 : index
          %25 = arith.muli %arg4, %c1024 : index
          %26 = arith.addi %24, %25 : index
          %27 = arith.muli %arg6, %c2 : index
          %28 = arith.addi %27, %c2 : index
          %29 = arith.maxsi %26, %28 : index
          %30 = arith.muli %arg5, %c32 : index
          %31 = arith.muli %arg4, %c1024 : index
          %32 = arith.addi %30, %31 : index
          %33 = arith.addi %32, %c32 : index
          %34 = arith.muli %arg6, %c2 : index
          %35 = arith.addi %34, %c29 : index
          %36 = arith.minsi %33, %35 : index
          scf.for %arg7 = %29 to %36 step %c1 {
            %51 = arith.muli %arg6, %c-2 : index
            %52 = arith.addi %51, %arg7 : index
            %53 = arith.addi %52, %c-1 : index
            %54 = memref.load %arg2[%53] : memref<?xf64>
            %55 = arith.muli %arg6, %c-2 : index
            %56 = arith.addi %55, %arg7 : index
            %57 = memref.load %arg2[%56] : memref<?xf64>
            %58 = arith.addf %54, %57 : f64
            %59 = arith.muli %arg6, %c-2 : index
            %60 = arith.addi %59, %arg7 : index
            %61 = arith.addi %60, %c1 : index
            %62 = memref.load %arg2[%61] : memref<?xf64>
            %63 = arith.addf %58, %62 : f64
            %64 = arith.mulf %63, %cst : f64
            %65 = arith.muli %arg6, %c-2 : index
            %66 = arith.addi %65, %arg7 : index
            memref.store %64, %arg3[%66] : memref<?xf64>
            %67 = arith.muli %arg6, %c-2 : index
            %68 = arith.addi %67, %arg7 : index
            %69 = arith.addi %68, %c-2 : index
            %70 = memref.load %arg3[%69] : memref<?xf64>
            %71 = arith.muli %arg6, %c-2 : index
            %72 = arith.addi %71, %arg7 : index
            %73 = arith.addi %72, %c-1 : index
            %74 = memref.load %arg3[%73] : memref<?xf64>
            %75 = arith.addf %70, %74 : f64
            %76 = arith.muli %arg6, %c-2 : index
            %77 = arith.addi %76, %arg7 : index
            %78 = memref.load %arg3[%77] : memref<?xf64>
            %79 = arith.addf %75, %78 : f64
            %80 = arith.mulf %79, %cst : f64
            %81 = arith.muli %arg6, %c-2 : index
            %82 = arith.addi %81, %arg7 : index
            %83 = arith.addi %82, %c-1 : index
            memref.store %80, %arg2[%83] : memref<?xf64>
          }
          %37 = arith.muli %arg4, %c32 : index
          %38 = arith.addi %arg5, %37 : index
          %39 = arith.addi %arg6, %c-1 : index
          %40 = arith.cmpi sle, %39, %c0 : index
          %41 = arith.subi %c0, %39 : index
          %42 = arith.subi %39, %c1 : index
          %43 = arith.select %40, %41, %42 : index
          %44 = arith.divsi %43, %c16 : index
          %45 = arith.subi %c0, %44 : index
          %46 = arith.addi %44, %c1 : index
          %47 = arith.select %40, %45, %46 : index
          %48 = arith.muli %47, %c-1 : index
          %49 = arith.addi %38, %48 : index
          %50 = arith.cmpi sge, %49, %c0 : index
          scf.if %50 {
            %51 = memref.load %arg3[%c27] : memref<?xf64>
            %52 = memref.load %arg3[%c28] : memref<?xf64>
            %53 = arith.addf %51, %52 : f64
            %54 = memref.load %arg3[%c29] : memref<?xf64>
            %55 = arith.addf %53, %54 : f64
            %56 = arith.mulf %55, %cst : f64
            memref.store %56, %arg2[%c28] : memref<?xf64>
          }
        }
        %10 = arith.muli %arg4, %c32 : index
        %11 = arith.addi %arg5, %10 : index
        %12 = arith.cmpi eq, %11, %c0 : index
        scf.if %12 {
          %13 = memref.load %arg2[%c0] : memref<?xf64>
          %14 = memref.load %arg2[%c1] : memref<?xf64>
          %15 = arith.addf %13, %14 : f64
          %16 = memref.load %arg2[%c2] : memref<?xf64>
          %17 = arith.addf %15, %16 : f64
          %18 = arith.mulf %17, %cst : f64
          memref.store %18, %arg3[%c1] : memref<?xf64>
        }
      }
    }
    return
  }
}

