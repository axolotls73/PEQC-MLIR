module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %c-28 = arith.constant -28 : index
    %c31 = arith.constant 31 : index
    %c38 = arith.constant 38 : index
    %c10 = arith.constant 10 : index
    %c16 = arith.constant 16 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c-19 = arith.constant -19 : index
    %c39 = arith.constant 39 : index
    %c32 = arith.constant 32 : index
    %c19 = arith.constant 19 : index
    %c20 = arith.constant 20 : index
    %c2 = arith.constant 2 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %c29 = arith.constant 29 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    scf.for %arg5 = %c0 to %c29 step %c1 {
      %1 = arith.addi %arg5, %c1 : index
      scf.for %arg6 = %1 to %c30 step %c1 {
        memref.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c30 step %c1 {
      %1 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
      scf.for %arg6 = %c0 to %c2 step %c1 {
        %14 = arith.cmpi eq, %arg6, %c0 : index
        scf.if %14 {
          scf.for %arg7 = %c0 to %c20 step %c1 {
            %21 = memref.load %alloca[] : memref<f64>
            %22 = memref.load %arg2[%arg7, %arg5] : memref<?x30xf64>
            %23 = arith.mulf %22, %22 : f64
            %24 = arith.addf %21, %23 : f64
            memref.store %24, %alloca[] : memref<f64>
          }
        }
        %15 = arith.muli %arg6, %c32 : index
        %16 = arith.maxsi %15, %c19 : index
        %17 = arith.muli %arg6, %c32 : index
        %18 = arith.addi %17, %c32 : index
        %19 = arith.minsi %18, %c39 : index
        scf.for %arg7 = %16 to %19 step %c1 {
          %21 = arith.addi %arg7, %c-19 : index
          %22 = memref.load %arg2[%21, %arg5] : memref<?x30xf64>
          %23 = arith.divf %22, %1 : f64
          %24 = arith.addi %arg7, %c-19 : index
          memref.store %23, %arg4[%24, %arg5] : memref<?x30xf64>
        }
        %20 = arith.cmpi eq, %arg6, %c0 : index
        scf.if %20 {
          memref.store %cst, %alloca[] : memref<f64>
        }
      }
      %2 = arith.muli %arg5, %c5 : index
      %3 = arith.addi %2, %c4 : index
      %4 = arith.cmpi sle, %3, %c0 : index
      %5 = arith.subi %c0, %3 : index
      %6 = arith.subi %3, %c1 : index
      %7 = arith.select %4, %5, %6 : index
      %8 = arith.divsi %7, %c16 : index
      %9 = arith.subi %c0, %8 : index
      %10 = arith.addi %8, %c1 : index
      %11 = arith.select %4, %9, %10 : index
      scf.for %arg6 = %11 to %c10 step %c1 {
        scf.for %arg7 = %c0 to %c2 step %c1 {
          %14 = arith.cmpi eq, %arg7, %c0 : index
          scf.if %14 {
            scf.for %arg8 = %c0 to %c19 step %c1 {
              %21 = arith.muli %arg6, %c32 : index
              %22 = arith.muli %arg5, %c10 : index
              %23 = arith.addi %22, %c38 : index
              %24 = arith.maxsi %21, %23 : index
              %25 = arith.muli %arg6, %c32 : index
              %26 = arith.addi %25, %c31 : index
              scf.for %arg9 = %24 to %26 step %c1 {
                %27 = arith.addi %arg9, %c2 : index
                %28 = arith.remsi %27, %c10 : index
                %29 = arith.cmpi slt, %28, %c0 : index
                %30 = arith.addi %28, %c10 : index
                %31 = arith.select %29, %30, %28 : index
                %32 = arith.cmpi eq, %31, %c0 : index
                scf.if %32 {
                  %33 = arith.addi %arg9, %c-28 : index
                  %34 = arith.cmpi sle, %33, %c0 : index
                  %35 = arith.subi %c0, %33 : index
                  %36 = arith.subi %33, %c1 : index
                  %37 = arith.select %34, %35, %36 : index
                  %38 = arith.divsi %37, %c10 : index
                  %39 = arith.subi %c0, %38 : index
                  %40 = arith.addi %38, %c1 : index
                  %41 = arith.select %34, %39, %40 : index
                  %42 = memref.load %arg3[%arg5, %41] : memref<?x30xf64>
                  %43 = memref.load %arg4[%arg8, %arg5] : memref<?x30xf64>
                  %44 = arith.addi %arg9, %c-28 : index
                  %45 = arith.cmpi sle, %44, %c0 : index
                  %46 = arith.subi %c0, %44 : index
                  %47 = arith.subi %44, %c1 : index
                  %48 = arith.select %45, %46, %47 : index
                  %49 = arith.divsi %48, %c10 : index
                  %50 = arith.subi %c0, %49 : index
                  %51 = arith.addi %49, %c1 : index
                  %52 = arith.select %45, %50, %51 : index
                  %53 = memref.load %arg2[%arg8, %52] : memref<?x30xf64>
                  %54 = arith.mulf %43, %53 : f64
                  %55 = arith.addf %42, %54 : f64
                  %56 = arith.addi %arg9, %c-28 : index
                  %57 = arith.cmpi sle, %56, %c0 : index
                  %58 = arith.subi %c0, %56 : index
                  %59 = arith.subi %56, %c1 : index
                  %60 = arith.select %57, %58, %59 : index
                  %61 = arith.divsi %60, %c10 : index
                  %62 = arith.subi %c0, %61 : index
                  %63 = arith.addi %61, %c1 : index
                  %64 = arith.select %57, %62, %63 : index
                  memref.store %55, %arg3[%arg5, %64] : memref<?x30xf64>
                }
              }
            }
          }
          %15 = arith.cmpi eq, %arg7, %c0 : index
          scf.if %15 {
            %21 = arith.muli %arg6, %c32 : index
            %22 = arith.muli %arg5, %c10 : index
            %23 = arith.addi %22, %c38 : index
            %24 = arith.maxsi %21, %23 : index
            %25 = arith.muli %arg6, %c32 : index
            %26 = arith.addi %25, %c31 : index
            scf.for %arg8 = %24 to %26 step %c1 {
              %27 = arith.addi %arg8, %c2 : index
              %28 = arith.remsi %27, %c10 : index
              %29 = arith.cmpi slt, %28, %c0 : index
              %30 = arith.addi %28, %c10 : index
              %31 = arith.select %29, %30, %28 : index
              %32 = arith.cmpi eq, %31, %c0 : index
              scf.if %32 {
                %39 = arith.addi %arg8, %c-28 : index
                %40 = arith.cmpi sle, %39, %c0 : index
                %41 = arith.subi %c0, %39 : index
                %42 = arith.subi %39, %c1 : index
                %43 = arith.select %40, %41, %42 : index
                %44 = arith.divsi %43, %c10 : index
                %45 = arith.subi %c0, %44 : index
                %46 = arith.addi %44, %c1 : index
                %47 = arith.select %40, %45, %46 : index
                %48 = memref.load %arg3[%arg5, %47] : memref<?x30xf64>
                %49 = memref.load %arg4[%c19, %arg5] : memref<?x30xf64>
                %50 = arith.addi %arg8, %c-28 : index
                %51 = arith.cmpi sle, %50, %c0 : index
                %52 = arith.subi %c0, %50 : index
                %53 = arith.subi %50, %c1 : index
                %54 = arith.select %51, %52, %53 : index
                %55 = arith.divsi %54, %c10 : index
                %56 = arith.subi %c0, %55 : index
                %57 = arith.addi %55, %c1 : index
                %58 = arith.select %51, %56, %57 : index
                %59 = memref.load %arg2[%c19, %58] : memref<?x30xf64>
                %60 = arith.mulf %49, %59 : f64
                %61 = arith.addf %48, %60 : f64
                %62 = arith.addi %arg8, %c-28 : index
                %63 = arith.cmpi sle, %62, %c0 : index
                %64 = arith.subi %c0, %62 : index
                %65 = arith.subi %62, %c1 : index
                %66 = arith.select %63, %64, %65 : index
                %67 = arith.divsi %66, %c10 : index
                %68 = arith.subi %c0, %67 : index
                %69 = arith.addi %67, %c1 : index
                %70 = arith.select %63, %68, %69 : index
                memref.store %61, %arg3[%arg5, %70] : memref<?x30xf64>
              }
              %33 = arith.addi %arg8, %c2 : index
              %34 = arith.remsi %33, %c10 : index
              %35 = arith.cmpi slt, %34, %c0 : index
              %36 = arith.addi %34, %c10 : index
              %37 = arith.select %35, %36, %34 : index
              %38 = arith.cmpi eq, %37, %c0 : index
              scf.if %38 {
                %39 = arith.addi %arg8, %c-28 : index
                %40 = arith.cmpi sle, %39, %c0 : index
                %41 = arith.subi %c0, %39 : index
                %42 = arith.subi %39, %c1 : index
                %43 = arith.select %40, %41, %42 : index
                %44 = arith.divsi %43, %c10 : index
                %45 = arith.subi %c0, %44 : index
                %46 = arith.addi %44, %c1 : index
                %47 = arith.select %40, %45, %46 : index
                %48 = memref.load %arg2[%c0, %47] : memref<?x30xf64>
                %49 = memref.load %arg4[%c0, %arg5] : memref<?x30xf64>
                %50 = arith.addi %arg8, %c-28 : index
                %51 = arith.cmpi sle, %50, %c0 : index
                %52 = arith.subi %c0, %50 : index
                %53 = arith.subi %50, %c1 : index
                %54 = arith.select %51, %52, %53 : index
                %55 = arith.divsi %54, %c10 : index
                %56 = arith.subi %c0, %55 : index
                %57 = arith.addi %55, %c1 : index
                %58 = arith.select %51, %56, %57 : index
                %59 = memref.load %arg3[%arg5, %58] : memref<?x30xf64>
                %60 = arith.mulf %49, %59 : f64
                %61 = arith.subf %48, %60 : f64
                %62 = arith.addi %arg8, %c-28 : index
                %63 = arith.cmpi sle, %62, %c0 : index
                %64 = arith.subi %c0, %62 : index
                %65 = arith.subi %62, %c1 : index
                %66 = arith.select %63, %64, %65 : index
                %67 = arith.divsi %66, %c10 : index
                %68 = arith.subi %c0, %67 : index
                %69 = arith.addi %67, %c1 : index
                %70 = arith.select %63, %68, %69 : index
                memref.store %61, %arg2[%c0, %70] : memref<?x30xf64>
              }
            }
          }
          %16 = arith.muli %arg7, %c32 : index
          %17 = arith.maxsi %16, %c20 : index
          %18 = arith.muli %arg7, %c32 : index
          %19 = arith.addi %18, %c32 : index
          %20 = arith.minsi %19, %c39 : index
          scf.for %arg8 = %17 to %20 step %c1 {
            %21 = arith.muli %arg6, %c32 : index
            %22 = arith.muli %arg5, %c10 : index
            %23 = arith.addi %22, %c38 : index
            %24 = arith.maxsi %21, %23 : index
            %25 = arith.muli %arg6, %c32 : index
            %26 = arith.addi %25, %c31 : index
            scf.for %arg9 = %24 to %26 step %c1 {
              %27 = arith.addi %arg9, %c2 : index
              %28 = arith.remsi %27, %c10 : index
              %29 = arith.cmpi slt, %28, %c0 : index
              %30 = arith.addi %28, %c10 : index
              %31 = arith.select %29, %30, %28 : index
              %32 = arith.cmpi eq, %31, %c0 : index
              scf.if %32 {
                %33 = arith.addi %arg8, %c-19 : index
                %34 = arith.addi %arg9, %c-28 : index
                %35 = arith.cmpi sle, %34, %c0 : index
                %36 = arith.subi %c0, %34 : index
                %37 = arith.subi %34, %c1 : index
                %38 = arith.select %35, %36, %37 : index
                %39 = arith.divsi %38, %c10 : index
                %40 = arith.subi %c0, %39 : index
                %41 = arith.addi %39, %c1 : index
                %42 = arith.select %35, %40, %41 : index
                %43 = memref.load %arg2[%33, %42] : memref<?x30xf64>
                %44 = arith.addi %arg8, %c-19 : index
                %45 = memref.load %arg4[%44, %arg5] : memref<?x30xf64>
                %46 = arith.addi %arg9, %c-28 : index
                %47 = arith.cmpi sle, %46, %c0 : index
                %48 = arith.subi %c0, %46 : index
                %49 = arith.subi %46, %c1 : index
                %50 = arith.select %47, %48, %49 : index
                %51 = arith.divsi %50, %c10 : index
                %52 = arith.subi %c0, %51 : index
                %53 = arith.addi %51, %c1 : index
                %54 = arith.select %47, %52, %53 : index
                %55 = memref.load %arg3[%arg5, %54] : memref<?x30xf64>
                %56 = arith.mulf %45, %55 : f64
                %57 = arith.subf %43, %56 : f64
                %58 = arith.addi %arg8, %c-19 : index
                %59 = arith.addi %arg9, %c-28 : index
                %60 = arith.cmpi sle, %59, %c0 : index
                %61 = arith.subi %c0, %59 : index
                %62 = arith.subi %59, %c1 : index
                %63 = arith.select %60, %61, %62 : index
                %64 = arith.divsi %63, %c10 : index
                %65 = arith.subi %c0, %64 : index
                %66 = arith.addi %64, %c1 : index
                %67 = arith.select %60, %65, %66 : index
                memref.store %57, %arg2[%58, %67] : memref<?x30xf64>
              }
            }
          }
        }
      }
      %12 = memref.load %alloca[] : memref<f64>
      %13 = math.sqrt %12 : f64
      memref.store %13, %arg3[%arg5, %arg5] : memref<?x30xf64>
    }
    return
  }
}

