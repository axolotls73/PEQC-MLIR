module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %c20 = arith.constant 20 : index
    %c-28 = arith.constant -28 : index
    %c31 = arith.constant 31 : index
    %c38 = arith.constant 38 : index
    %c10 = arith.constant 10 : index
    %c16 = arith.constant 16 : index
    %c-19 = arith.constant -19 : index
    %c39 = arith.constant 39 : index
    %c32 = arith.constant 32 : index
    %c19 = arith.constant 19 : index
    %c5 = arith.constant 5 : index
    %c30 = arith.constant 30 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c29 = arith.constant 29 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    scf.for %arg5 = %c0 to %c29 step %c1 {
      scf.for %arg6 = %c0 to %c1 step %c1 {
        %1 = arith.addi %arg5, %arg6 : index
        %2 = arith.muli %arg5, %c-1 : index
        %3 = arith.muli %arg6, %c-1 : index
        %4 = arith.addi %2, %3 : index
        %5 = arith.addi %4, %c29 : index
        %6 = arith.cmpi slt, %5, %c0 : index
        %7 = arith.subi %c-1, %5 : index
        %8 = arith.select %6, %7, %5 : index
        %9 = arith.divsi %8, %c4 : index
        %10 = arith.subi %c-1, %9 : index
        %11 = arith.select %6, %10, %9 : index
        scf.for %arg7 = %c0 to %11 step %c1 {
          %28 = arith.muli %arg7, %c4 : index
          %29 = arith.addi %1, %28 : index
          %30 = arith.addi %29, %c1 : index
          memref.store %cst, %arg3[%1, %30] : memref<?x30xf64>
          %31 = arith.addi %30, %c1 : index
          memref.store %cst, %arg3[%1, %31] : memref<?x30xf64>
          %32 = arith.addi %30, %c2 : index
          memref.store %cst, %arg3[%1, %32] : memref<?x30xf64>
          %33 = arith.addi %30, %c3 : index
          memref.store %cst, %arg3[%1, %33] : memref<?x30xf64>
        }
        %12 = arith.muli %arg5, %c-1 : index
        %13 = arith.muli %arg6, %c-1 : index
        %14 = arith.addi %12, %13 : index
        %15 = arith.muli %arg5, %c-1 : index
        %16 = arith.muli %arg6, %c-1 : index
        %17 = arith.addi %15, %16 : index
        %18 = arith.addi %17, %c29 : index
        %19 = arith.cmpi slt, %18, %c0 : index
        %20 = arith.subi %c-1, %18 : index
        %21 = arith.select %19, %20, %18 : index
        %22 = arith.divsi %21, %c4 : index
        %23 = arith.subi %c-1, %22 : index
        %24 = arith.select %19, %23, %22 : index
        %25 = arith.muli %24, %c-4 : index
        %26 = arith.addi %14, %25 : index
        %27 = arith.addi %26, %c29 : index
        scf.for %arg7 = %c0 to %27 step %c1 {
          %28 = arith.addi %1, %arg7 : index
          %29 = arith.muli %1, %c-1 : index
          %30 = arith.addi %29, %c29 : index
          %31 = arith.cmpi slt, %30, %c0 : index
          %32 = arith.subi %c-1, %30 : index
          %33 = arith.select %31, %32, %30 : index
          %34 = arith.divsi %33, %c4 : index
          %35 = arith.subi %c-1, %34 : index
          %36 = arith.select %31, %35, %34 : index
          %37 = arith.muli %36, %c4 : index
          %38 = arith.addi %28, %37 : index
          %39 = arith.addi %38, %c1 : index
          memref.store %cst, %arg3[%1, %39] : memref<?x30xf64>
        }
      }
    }
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c30 step %c1 {
      scf.for %arg6 = %c0 to %c1 step %c1 {
        %1 = arith.addi %arg5, %arg6 : index
        %2 = memref.load %arg3[%1, %1] : memref<?x30xf64>
        scf.for %arg7 = %c0 to %c2 step %c1 {
          %19 = arith.cmpi eq, %arg7, %c0 : index
          scf.if %19 {
            scf.for %arg8 = %c0 to %c5 step %c1 {
              %26 = arith.muli %arg8, %c4 : index
              %27 = memref.load %alloca[] : memref<f64>
              %28 = memref.load %arg2[%26, %1] : memref<?x30xf64>
              %29 = arith.mulf %28, %28 : f64
              %30 = arith.addf %27, %29 : f64
              memref.store %30, %alloca[] : memref<f64>
              %31 = arith.addi %26, %c1 : index
              %32 = memref.load %alloca[] : memref<f64>
              %33 = memref.load %arg2[%31, %1] : memref<?x30xf64>
              %34 = arith.mulf %33, %33 : f64
              %35 = arith.addf %32, %34 : f64
              memref.store %35, %alloca[] : memref<f64>
              %36 = arith.addi %26, %c2 : index
              %37 = memref.load %alloca[] : memref<f64>
              %38 = memref.load %arg2[%36, %1] : memref<?x30xf64>
              %39 = arith.mulf %38, %38 : f64
              %40 = arith.addf %37, %39 : f64
              memref.store %40, %alloca[] : memref<f64>
              %41 = arith.addi %26, %c3 : index
              %42 = memref.load %alloca[] : memref<f64>
              %43 = memref.load %arg2[%41, %1] : memref<?x30xf64>
              %44 = arith.mulf %43, %43 : f64
              %45 = arith.addf %42, %44 : f64
              memref.store %45, %alloca[] : memref<f64>
            }
          }
          %20 = arith.muli %arg7, %c32 : index
          %21 = arith.maxsi %20, %c19 : index
          %22 = arith.muli %arg7, %c32 : index
          %23 = arith.addi %22, %c32 : index
          %24 = arith.minsi %23, %c39 : index
          scf.for %arg8 = %21 to %24 step %c1 {
            %26 = arith.addi %arg8, %c-19 : index
            %27 = memref.load %arg2[%26, %1] : memref<?x30xf64>
            %28 = arith.divf %27, %2 : f64
            %29 = arith.addi %arg8, %c-19 : index
            memref.store %28, %arg4[%29, %1] : memref<?x30xf64>
          }
          %25 = arith.cmpi eq, %arg7, %c0 : index
          scf.if %25 {
            memref.store %cst, %alloca[] : memref<f64>
          }
        }
        %3 = arith.muli %arg5, %c5 : index
        %4 = arith.muli %arg6, %c5 : index
        %5 = arith.addi %3, %4 : index
        %6 = arith.addi %5, %c4 : index
        %7 = arith.cmpi sle, %6, %c0 : index
        %8 = arith.subi %c0, %6 : index
        %9 = arith.subi %6, %c1 : index
        %10 = arith.select %7, %8, %9 : index
        %11 = arith.divsi %10, %c16 : index
        %12 = arith.subi %c0, %11 : index
        %13 = arith.addi %11, %c1 : index
        %14 = arith.select %7, %12, %13 : index
        %15 = arith.muli %14, %c-1 : index
        %16 = arith.addi %15, %c10 : index
        scf.for %arg7 = %c0 to %16 step %c1 {
          scf.for %arg8 = %c0 to %c2 step %c1 {
            %19 = arith.cmpi eq, %arg8, %c0 : index
            scf.if %19 {
              scf.for %arg9 = %c0 to %c19 step %c1 {
                %26 = arith.muli %arg7, %c32 : index
                %27 = arith.muli %arg5, %c5 : index
                %28 = arith.muli %arg6, %c5 : index
                %29 = arith.addi %27, %28 : index
                %30 = arith.addi %29, %c4 : index
                %31 = arith.cmpi sle, %30, %c0 : index
                %32 = arith.subi %c0, %30 : index
                %33 = arith.subi %30, %c1 : index
                %34 = arith.select %31, %32, %33 : index
                %35 = arith.divsi %34, %c16 : index
                %36 = arith.subi %c0, %35 : index
                %37 = arith.addi %35, %c1 : index
                %38 = arith.select %31, %36, %37 : index
                %39 = arith.muli %38, %c32 : index
                %40 = arith.addi %26, %39 : index
                %41 = arith.muli %arg5, %c10 : index
                %42 = arith.muli %arg6, %c10 : index
                %43 = arith.addi %41, %42 : index
                %44 = arith.addi %43, %c38 : index
                %45 = arith.maxsi %40, %44 : index
                %46 = arith.muli %arg7, %c32 : index
                %47 = arith.muli %arg5, %c5 : index
                %48 = arith.muli %arg6, %c5 : index
                %49 = arith.addi %47, %48 : index
                %50 = arith.addi %49, %c4 : index
                %51 = arith.cmpi sle, %50, %c0 : index
                %52 = arith.subi %c0, %50 : index
                %53 = arith.subi %50, %c1 : index
                %54 = arith.select %51, %52, %53 : index
                %55 = arith.divsi %54, %c16 : index
                %56 = arith.subi %c0, %55 : index
                %57 = arith.addi %55, %c1 : index
                %58 = arith.select %51, %56, %57 : index
                %59 = arith.muli %58, %c32 : index
                %60 = arith.addi %46, %59 : index
                %61 = arith.addi %60, %c31 : index
                scf.for %arg10 = %45 to %61 step %c1 {
                  %62 = arith.addi %arg10, %c2 : index
                  %63 = arith.remsi %62, %c10 : index
                  %64 = arith.cmpi slt, %63, %c0 : index
                  %65 = arith.addi %63, %c10 : index
                  %66 = arith.select %64, %65, %63 : index
                  %67 = arith.cmpi eq, %66, %c0 : index
                  scf.if %67 {
                    %68 = arith.addi %arg10, %c-28 : index
                    %69 = arith.cmpi sle, %68, %c0 : index
                    %70 = arith.subi %c0, %68 : index
                    %71 = arith.subi %68, %c1 : index
                    %72 = arith.select %69, %70, %71 : index
                    %73 = arith.divsi %72, %c10 : index
                    %74 = arith.subi %c0, %73 : index
                    %75 = arith.addi %73, %c1 : index
                    %76 = arith.select %69, %74, %75 : index
                    %77 = memref.load %arg3[%1, %76] : memref<?x30xf64>
                    %78 = memref.load %arg4[%arg9, %1] : memref<?x30xf64>
                    %79 = arith.addi %arg10, %c-28 : index
                    %80 = arith.cmpi sle, %79, %c0 : index
                    %81 = arith.subi %c0, %79 : index
                    %82 = arith.subi %79, %c1 : index
                    %83 = arith.select %80, %81, %82 : index
                    %84 = arith.divsi %83, %c10 : index
                    %85 = arith.subi %c0, %84 : index
                    %86 = arith.addi %84, %c1 : index
                    %87 = arith.select %80, %85, %86 : index
                    %88 = memref.load %arg2[%arg9, %87] : memref<?x30xf64>
                    %89 = arith.mulf %78, %88 : f64
                    %90 = arith.addf %77, %89 : f64
                    %91 = arith.addi %arg10, %c-28 : index
                    %92 = arith.cmpi sle, %91, %c0 : index
                    %93 = arith.subi %c0, %91 : index
                    %94 = arith.subi %91, %c1 : index
                    %95 = arith.select %92, %93, %94 : index
                    %96 = arith.divsi %95, %c10 : index
                    %97 = arith.subi %c0, %96 : index
                    %98 = arith.addi %96, %c1 : index
                    %99 = arith.select %92, %97, %98 : index
                    memref.store %90, %arg3[%1, %99] : memref<?x30xf64>
                  }
                }
              }
            }
            %20 = arith.cmpi eq, %arg8, %c0 : index
            scf.if %20 {
              %26 = arith.muli %arg7, %c32 : index
              %27 = arith.muli %arg5, %c5 : index
              %28 = arith.muli %arg6, %c5 : index
              %29 = arith.addi %27, %28 : index
              %30 = arith.addi %29, %c4 : index
              %31 = arith.cmpi sle, %30, %c0 : index
              %32 = arith.subi %c0, %30 : index
              %33 = arith.subi %30, %c1 : index
              %34 = arith.select %31, %32, %33 : index
              %35 = arith.divsi %34, %c16 : index
              %36 = arith.subi %c0, %35 : index
              %37 = arith.addi %35, %c1 : index
              %38 = arith.select %31, %36, %37 : index
              %39 = arith.muli %38, %c32 : index
              %40 = arith.addi %26, %39 : index
              %41 = arith.muli %arg5, %c10 : index
              %42 = arith.muli %arg6, %c10 : index
              %43 = arith.addi %41, %42 : index
              %44 = arith.addi %43, %c38 : index
              %45 = arith.maxsi %40, %44 : index
              %46 = arith.muli %arg7, %c32 : index
              %47 = arith.muli %arg5, %c5 : index
              %48 = arith.muli %arg6, %c5 : index
              %49 = arith.addi %47, %48 : index
              %50 = arith.addi %49, %c4 : index
              %51 = arith.cmpi sle, %50, %c0 : index
              %52 = arith.subi %c0, %50 : index
              %53 = arith.subi %50, %c1 : index
              %54 = arith.select %51, %52, %53 : index
              %55 = arith.divsi %54, %c16 : index
              %56 = arith.subi %c0, %55 : index
              %57 = arith.addi %55, %c1 : index
              %58 = arith.select %51, %56, %57 : index
              %59 = arith.muli %58, %c32 : index
              %60 = arith.addi %46, %59 : index
              %61 = arith.addi %60, %c31 : index
              scf.for %arg9 = %45 to %61 step %c1 {
                %62 = arith.addi %arg9, %c2 : index
                %63 = arith.remsi %62, %c10 : index
                %64 = arith.cmpi slt, %63, %c0 : index
                %65 = arith.addi %63, %c10 : index
                %66 = arith.select %64, %65, %63 : index
                %67 = arith.cmpi eq, %66, %c0 : index
                scf.if %67 {
                  %74 = arith.addi %arg9, %c-28 : index
                  %75 = arith.cmpi sle, %74, %c0 : index
                  %76 = arith.subi %c0, %74 : index
                  %77 = arith.subi %74, %c1 : index
                  %78 = arith.select %75, %76, %77 : index
                  %79 = arith.divsi %78, %c10 : index
                  %80 = arith.subi %c0, %79 : index
                  %81 = arith.addi %79, %c1 : index
                  %82 = arith.select %75, %80, %81 : index
                  %83 = memref.load %arg3[%1, %82] : memref<?x30xf64>
                  %84 = memref.load %arg4[%c19, %1] : memref<?x30xf64>
                  %85 = arith.addi %arg9, %c-28 : index
                  %86 = arith.cmpi sle, %85, %c0 : index
                  %87 = arith.subi %c0, %85 : index
                  %88 = arith.subi %85, %c1 : index
                  %89 = arith.select %86, %87, %88 : index
                  %90 = arith.divsi %89, %c10 : index
                  %91 = arith.subi %c0, %90 : index
                  %92 = arith.addi %90, %c1 : index
                  %93 = arith.select %86, %91, %92 : index
                  %94 = memref.load %arg2[%c19, %93] : memref<?x30xf64>
                  %95 = arith.mulf %84, %94 : f64
                  %96 = arith.addf %83, %95 : f64
                  %97 = arith.addi %arg9, %c-28 : index
                  %98 = arith.cmpi sle, %97, %c0 : index
                  %99 = arith.subi %c0, %97 : index
                  %100 = arith.subi %97, %c1 : index
                  %101 = arith.select %98, %99, %100 : index
                  %102 = arith.divsi %101, %c10 : index
                  %103 = arith.subi %c0, %102 : index
                  %104 = arith.addi %102, %c1 : index
                  %105 = arith.select %98, %103, %104 : index
                  memref.store %96, %arg3[%1, %105] : memref<?x30xf64>
                }
                %68 = arith.addi %arg9, %c2 : index
                %69 = arith.remsi %68, %c10 : index
                %70 = arith.cmpi slt, %69, %c0 : index
                %71 = arith.addi %69, %c10 : index
                %72 = arith.select %70, %71, %69 : index
                %73 = arith.cmpi eq, %72, %c0 : index
                scf.if %73 {
                  %74 = arith.addi %arg9, %c-28 : index
                  %75 = arith.cmpi sle, %74, %c0 : index
                  %76 = arith.subi %c0, %74 : index
                  %77 = arith.subi %74, %c1 : index
                  %78 = arith.select %75, %76, %77 : index
                  %79 = arith.divsi %78, %c10 : index
                  %80 = arith.subi %c0, %79 : index
                  %81 = arith.addi %79, %c1 : index
                  %82 = arith.select %75, %80, %81 : index
                  %83 = memref.load %arg2[%c0, %82] : memref<?x30xf64>
                  %84 = memref.load %arg4[%c0, %1] : memref<?x30xf64>
                  %85 = arith.addi %arg9, %c-28 : index
                  %86 = arith.cmpi sle, %85, %c0 : index
                  %87 = arith.subi %c0, %85 : index
                  %88 = arith.subi %85, %c1 : index
                  %89 = arith.select %86, %87, %88 : index
                  %90 = arith.divsi %89, %c10 : index
                  %91 = arith.subi %c0, %90 : index
                  %92 = arith.addi %90, %c1 : index
                  %93 = arith.select %86, %91, %92 : index
                  %94 = memref.load %arg3[%1, %93] : memref<?x30xf64>
                  %95 = arith.mulf %84, %94 : f64
                  %96 = arith.subf %83, %95 : f64
                  %97 = arith.addi %arg9, %c-28 : index
                  %98 = arith.cmpi sle, %97, %c0 : index
                  %99 = arith.subi %c0, %97 : index
                  %100 = arith.subi %97, %c1 : index
                  %101 = arith.select %98, %99, %100 : index
                  %102 = arith.divsi %101, %c10 : index
                  %103 = arith.subi %c0, %102 : index
                  %104 = arith.addi %102, %c1 : index
                  %105 = arith.select %98, %103, %104 : index
                  memref.store %96, %arg2[%c0, %105] : memref<?x30xf64>
                }
              }
            }
            %21 = arith.muli %arg8, %c32 : index
            %22 = arith.maxsi %21, %c20 : index
            %23 = arith.muli %arg8, %c32 : index
            %24 = arith.addi %23, %c32 : index
            %25 = arith.minsi %24, %c39 : index
            scf.for %arg9 = %22 to %25 step %c1 {
              %26 = arith.muli %arg7, %c32 : index
              %27 = arith.muli %arg5, %c5 : index
              %28 = arith.muli %arg6, %c5 : index
              %29 = arith.addi %27, %28 : index
              %30 = arith.addi %29, %c4 : index
              %31 = arith.cmpi sle, %30, %c0 : index
              %32 = arith.subi %c0, %30 : index
              %33 = arith.subi %30, %c1 : index
              %34 = arith.select %31, %32, %33 : index
              %35 = arith.divsi %34, %c16 : index
              %36 = arith.subi %c0, %35 : index
              %37 = arith.addi %35, %c1 : index
              %38 = arith.select %31, %36, %37 : index
              %39 = arith.muli %38, %c32 : index
              %40 = arith.addi %26, %39 : index
              %41 = arith.muli %arg5, %c10 : index
              %42 = arith.muli %arg6, %c10 : index
              %43 = arith.addi %41, %42 : index
              %44 = arith.addi %43, %c38 : index
              %45 = arith.maxsi %40, %44 : index
              %46 = arith.muli %arg7, %c32 : index
              %47 = arith.muli %arg5, %c5 : index
              %48 = arith.muli %arg6, %c5 : index
              %49 = arith.addi %47, %48 : index
              %50 = arith.addi %49, %c4 : index
              %51 = arith.cmpi sle, %50, %c0 : index
              %52 = arith.subi %c0, %50 : index
              %53 = arith.subi %50, %c1 : index
              %54 = arith.select %51, %52, %53 : index
              %55 = arith.divsi %54, %c16 : index
              %56 = arith.subi %c0, %55 : index
              %57 = arith.addi %55, %c1 : index
              %58 = arith.select %51, %56, %57 : index
              %59 = arith.muli %58, %c32 : index
              %60 = arith.addi %46, %59 : index
              %61 = arith.addi %60, %c31 : index
              scf.for %arg10 = %45 to %61 step %c1 {
                %62 = arith.addi %arg10, %c2 : index
                %63 = arith.remsi %62, %c10 : index
                %64 = arith.cmpi slt, %63, %c0 : index
                %65 = arith.addi %63, %c10 : index
                %66 = arith.select %64, %65, %63 : index
                %67 = arith.cmpi eq, %66, %c0 : index
                scf.if %67 {
                  %68 = arith.addi %arg9, %c-19 : index
                  %69 = arith.addi %arg10, %c-28 : index
                  %70 = arith.cmpi sle, %69, %c0 : index
                  %71 = arith.subi %c0, %69 : index
                  %72 = arith.subi %69, %c1 : index
                  %73 = arith.select %70, %71, %72 : index
                  %74 = arith.divsi %73, %c10 : index
                  %75 = arith.subi %c0, %74 : index
                  %76 = arith.addi %74, %c1 : index
                  %77 = arith.select %70, %75, %76 : index
                  %78 = memref.load %arg2[%68, %77] : memref<?x30xf64>
                  %79 = arith.addi %arg9, %c-19 : index
                  %80 = memref.load %arg4[%79, %1] : memref<?x30xf64>
                  %81 = arith.addi %arg10, %c-28 : index
                  %82 = arith.cmpi sle, %81, %c0 : index
                  %83 = arith.subi %c0, %81 : index
                  %84 = arith.subi %81, %c1 : index
                  %85 = arith.select %82, %83, %84 : index
                  %86 = arith.divsi %85, %c10 : index
                  %87 = arith.subi %c0, %86 : index
                  %88 = arith.addi %86, %c1 : index
                  %89 = arith.select %82, %87, %88 : index
                  %90 = memref.load %arg3[%1, %89] : memref<?x30xf64>
                  %91 = arith.mulf %80, %90 : f64
                  %92 = arith.subf %78, %91 : f64
                  %93 = arith.addi %arg9, %c-19 : index
                  %94 = arith.addi %arg10, %c-28 : index
                  %95 = arith.cmpi sle, %94, %c0 : index
                  %96 = arith.subi %c0, %94 : index
                  %97 = arith.subi %94, %c1 : index
                  %98 = arith.select %95, %96, %97 : index
                  %99 = arith.divsi %98, %c10 : index
                  %100 = arith.subi %c0, %99 : index
                  %101 = arith.addi %99, %c1 : index
                  %102 = arith.select %95, %100, %101 : index
                  memref.store %92, %arg2[%93, %102] : memref<?x30xf64>
                }
              }
            }
          }
        }
        %17 = memref.load %alloca[] : memref<f64>
        %18 = math.sqrt %17 : f64
        memref.store %18, %arg3[%1, %1] : memref<?x30xf64>
      }
    }
    return
  }
}

