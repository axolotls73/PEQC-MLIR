module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c-30 = arith.constant -30 : index
    %c-32 = arith.constant -32 : index
    %c-33 = arith.constant -33 : index
    %c73 = arith.constant 73 : index
    %c66 = arith.constant 66 : index
    %c31 = arith.constant 31 : index
    %c-2 = arith.constant -2 : index
    %c16 = arith.constant 16 : index
    %c-39 = arith.constant -39 : index
    %c64 = arith.constant 64 : index
    %c32 = arith.constant 32 : index
    %c40 = arith.constant 40 : index
    %c33 = arith.constant 33 : index
    %c-1 = arith.constant -1 : index
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c2 step %c1 {
      %0 = arith.addi %arg2, %c1 : index
      scf.for %arg3 = %c0 to %0 step %c1 {
        scf.for %arg4 = %arg2 to %c3 step %c1 {
          %1 = arith.addi %arg2, %c-1 : index
          %2 = arith.cmpi eq, %1, %c0 : index
          %3 = arith.addi %arg3, %c-1 : index
          %4 = arith.cmpi eq, %3, %c0 : index
          %5 = arith.andi %2, %4 : i1
          %6 = arith.addi %arg4, %c-1 : index
          %7 = arith.cmpi eq, %6, %c0 : index
          %8 = arith.andi %5, %7 : i1
          scf.if %8 {
            scf.for %arg5 = %c33 to %c40 step %c1 {
              scf.for %arg6 = %c32 to %arg5 step %c1 {
                scf.for %arg7 = %arg5 to %c64 step %c1 {
                  %43 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %44 = arith.muli %arg5, %c-1 : index
                  %45 = arith.addi %44, %arg7 : index
                  %46 = memref.load %arg1[%arg5, %45] : memref<?x40xf64>
                  %47 = arith.muli %arg5, %c-1 : index
                  %48 = arith.addi %47, %arg7 : index
                  %49 = memref.load %arg1[%48, %arg6] : memref<?x40xf64>
                  %50 = arith.mulf %46, %49 : f64
                  %51 = arith.subf %43, %50 : f64
                  memref.store %51, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
              }
            }
          }
          %9 = arith.cmpi eq, %arg2, %c0 : index
          %10 = arith.cmpi eq, %arg3, %c0 : index
          %11 = arith.andi %9, %10 : i1
          %12 = arith.cmpi eq, %arg4, %c0 : index
          %13 = arith.andi %11, %12 : i1
          scf.if %13 {
            %43 = memref.load %arg1[%c1, %c0] : memref<?x40xf64>
            %44 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
            %45 = arith.divf %43, %44 : f64
            memref.store %45, %arg1[%c1, %c0] : memref<?x40xf64>
            scf.for %arg5 = %c2 to %c32 step %c1 {
              %46 = arith.addi %arg5, %c-1 : index
              %47 = memref.load %arg1[%c1, %46] : memref<?x40xf64>
              %48 = memref.load %arg1[%c1, %c0] : memref<?x40xf64>
              %49 = arith.addi %arg5, %c-1 : index
              %50 = memref.load %arg1[%c0, %49] : memref<?x40xf64>
              %51 = arith.mulf %48, %50 : f64
              %52 = arith.subf %47, %51 : f64
              %53 = arith.addi %arg5, %c-1 : index
              memref.store %52, %arg1[%c1, %53] : memref<?x40xf64>
            }
          }
          %14 = arith.cmpi eq, %arg3, %c0 : index
          scf.if %14 {
            %43 = arith.muli %arg2, %c32 : index
            %44 = arith.muli %arg4, %c32 : index
            %45 = arith.addi %44, %c-39 : index
            %46 = arith.maxsi %43, %c1 : index
            %47 = arith.maxsi %46, %45 : index
            %48 = arith.muli %arg4, %c16 : index
            %49 = arith.addi %48, %c1 : index
            %50 = arith.muli %arg2, %c32 : index
            %51 = arith.addi %50, %c32 : index
            %52 = arith.minsi %49, %51 : index
            scf.for %arg5 = %47 to %52 step %c1 {
              scf.for %arg6 = %c0 to %arg5 step %c1 {
                %53 = arith.muli %arg4, %c32 : index
                %54 = arith.addi %arg5, %c40 : index
                scf.for %arg7 = %53 to %54 step %c1 {
                  %55 = arith.muli %arg5, %c-1 : index
                  %56 = arith.addi %55, %arg7 : index
                  %57 = memref.load %arg1[%arg5, %56] : memref<?x40xf64>
                  %58 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %59 = arith.muli %arg5, %c-1 : index
                  %60 = arith.addi %59, %arg7 : index
                  %61 = memref.load %arg1[%arg6, %60] : memref<?x40xf64>
                  %62 = arith.mulf %58, %61 : f64
                  %63 = arith.subf %57, %62 : f64
                  %64 = arith.muli %arg5, %c-1 : index
                  %65 = arith.addi %64, %arg7 : index
                  memref.store %63, %arg1[%arg5, %65] : memref<?x40xf64>
                }
              }
            }
          }
          %15 = arith.addi %arg2, %c-1 : index
          %16 = arith.cmpi eq, %15, %c0 : index
          %17 = arith.cmpi eq, %arg3, %c0 : index
          %18 = arith.andi %16, %17 : i1
          %19 = arith.addi %arg4, %c-2 : index
          %20 = arith.cmpi eq, %19, %c0 : index
          %21 = arith.andi %18, %20 : i1
          scf.if %21 {
            scf.for %arg5 = %c0 to %c31 step %c1 {
              scf.for %arg6 = %c66 to %c73 step %c1 {
                %46 = arith.addi %arg6, %c-33 : index
                %47 = memref.load %arg1[%c33, %46] : memref<?x40xf64>
                %48 = memref.load %arg1[%c33, %arg5] : memref<?x40xf64>
                %49 = arith.addi %arg6, %c-33 : index
                %50 = memref.load %arg1[%arg5, %49] : memref<?x40xf64>
                %51 = arith.mulf %48, %50 : f64
                %52 = arith.subf %47, %51 : f64
                %53 = arith.addi %arg6, %c-33 : index
                memref.store %52, %arg1[%c33, %53] : memref<?x40xf64>
              }
            }
            %43 = memref.load %arg1[%c33, %c31] : memref<?x40xf64>
            %44 = memref.load %arg1[%c31, %c31] : memref<?x40xf64>
            %45 = arith.divf %43, %44 : f64
            memref.store %45, %arg1[%c33, %c31] : memref<?x40xf64>
            scf.for %arg5 = %c66 to %c73 step %c1 {
              %46 = arith.addi %arg5, %c-33 : index
              %47 = memref.load %arg1[%c33, %46] : memref<?x40xf64>
              %48 = memref.load %arg1[%c33, %c31] : memref<?x40xf64>
              %49 = arith.addi %arg5, %c-33 : index
              %50 = memref.load %arg1[%c31, %49] : memref<?x40xf64>
              %51 = arith.mulf %48, %50 : f64
              %52 = arith.subf %47, %51 : f64
              %53 = arith.addi %arg5, %c-33 : index
              memref.store %52, %arg1[%c33, %53] : memref<?x40xf64>
            }
          }
          %22 = arith.muli %arg2, %c32 : index
          %23 = arith.muli %arg4, %c16 : index
          %24 = arith.addi %23, %c1 : index
          %25 = arith.muli %arg4, %c32 : index
          %26 = arith.muli %arg3, %c-32 : index
          %27 = arith.addi %25, %26 : index
          %28 = arith.addi %27, %c-30 : index
          %29 = arith.maxsi %22, %c2 : index
          %30 = arith.maxsi %29, %24 : index
          %31 = arith.maxsi %30, %28 : index
          %32 = arith.muli %arg2, %c32 : index
          %33 = arith.addi %32, %c32 : index
          %34 = arith.muli %arg4, %c16 : index
          %35 = arith.addi %34, %c16 : index
          %36 = arith.minsi %33, %c40 : index
          %37 = arith.minsi %36, %35 : index
          scf.for %arg5 = %31 to %37 step %c1 {
            %43 = arith.cmpi eq, %arg2, %c0 : index
            %44 = arith.cmpi eq, %arg3, %c0 : index
            %45 = arith.andi %43, %44 : i1
            %46 = arith.cmpi eq, %arg4, %c0 : index
            %47 = arith.andi %45, %46 : i1
            scf.if %47 {
              %70 = memref.load %arg1[%arg5, %c0] : memref<?x40xf64>
              %71 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
              %72 = arith.divf %70, %71 : f64
              memref.store %72, %arg1[%arg5, %c0] : memref<?x40xf64>
              %73 = arith.muli %arg5, %c2 : index
              scf.for %arg6 = %73 to %c32 step %c1 {
                %74 = arith.muli %arg5, %c-1 : index
                %75 = arith.addi %74, %arg6 : index
                %76 = memref.load %arg1[%arg5, %75] : memref<?x40xf64>
                %77 = memref.load %arg1[%arg5, %c0] : memref<?x40xf64>
                %78 = arith.muli %arg5, %c-1 : index
                %79 = arith.addi %78, %arg6 : index
                %80 = memref.load %arg1[%c0, %79] : memref<?x40xf64>
                %81 = arith.mulf %77, %80 : f64
                %82 = arith.subf %76, %81 : f64
                %83 = arith.muli %arg5, %c-1 : index
                %84 = arith.addi %83, %arg6 : index
                memref.store %82, %arg1[%arg5, %84] : memref<?x40xf64>
              }
            }
            %48 = arith.addi %arg4, %c-1 : index
            %49 = arith.muli %48, %c-1 : index
            %50 = arith.addi %arg2, %49 : index
            %51 = arith.cmpi eq, %50, %c0 : index
            %52 = arith.cmpi eq, %arg3, %c0 : index
            %53 = arith.andi %51, %52 : i1
            scf.if %53 {
              %70 = arith.muli %arg2, %c32 : index
              %71 = arith.muli %arg5, %c-1 : index
              %72 = arith.addi %70, %71 : index
              %73 = arith.addi %72, %c32 : index
              scf.for %arg6 = %c0 to %73 step %c1 {
                %74 = arith.muli %arg5, %c2 : index
                %75 = arith.muli %arg2, %c32 : index
                %76 = arith.addi %75, %c64 : index
                %77 = arith.addi %arg5, %c40 : index
                %78 = arith.minsi %76, %77 : index
                scf.for %arg7 = %74 to %78 step %c1 {
                  %79 = arith.muli %arg5, %c-1 : index
                  %80 = arith.addi %79, %arg7 : index
                  %81 = memref.load %arg1[%arg5, %80] : memref<?x40xf64>
                  %82 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %83 = arith.muli %arg5, %c-1 : index
                  %84 = arith.addi %83, %arg7 : index
                  %85 = memref.load %arg1[%arg6, %84] : memref<?x40xf64>
                  %86 = arith.mulf %82, %85 : f64
                  %87 = arith.subf %81, %86 : f64
                  %88 = arith.muli %arg5, %c-1 : index
                  %89 = arith.addi %88, %arg7 : index
                  memref.store %87, %arg1[%arg5, %89] : memref<?x40xf64>
                }
              }
            }
            %54 = arith.addi %arg4, %c-1 : index
            %55 = arith.muli %54, %c-1 : index
            %56 = arith.addi %arg2, %55 : index
            %57 = arith.cmpi eq, %56, %c0 : index
            %58 = arith.cmpi eq, %arg3, %c0 : index
            %59 = arith.andi %57, %58 : i1
            scf.if %59 {
              %70 = arith.muli %arg5, %c32 : index
              %71 = arith.muli %arg2, %c-1 : index
              %72 = arith.addi %70, %71 : index
              %73 = arith.addi %72, %c32 : index
              %74 = memref.load %arg1[%arg5, %73] : memref<?x40xf64>
              %75 = arith.muli %arg5, %c32 : index
              %76 = arith.muli %arg2, %c-1 : index
              %77 = arith.addi %75, %76 : index
              %78 = arith.addi %77, %c32 : index
              %79 = arith.muli %arg5, %c32 : index
              %80 = arith.muli %arg2, %c-1 : index
              %81 = arith.addi %79, %80 : index
              %82 = arith.addi %81, %c32 : index
              %83 = memref.load %arg1[%78, %82] : memref<?x40xf64>
              %84 = arith.divf %74, %83 : f64
              %85 = arith.muli %arg5, %c32 : index
              %86 = arith.muli %arg2, %c-1 : index
              %87 = arith.addi %85, %86 : index
              %88 = arith.addi %87, %c32 : index
              memref.store %84, %arg1[%arg5, %88] : memref<?x40xf64>
              %89 = arith.muli %arg5, %c2 : index
              %90 = arith.muli %arg2, %c32 : index
              %91 = arith.addi %90, %c64 : index
              %92 = arith.addi %arg5, %c40 : index
              %93 = arith.minsi %91, %92 : index
              scf.for %arg6 = %89 to %93 step %c1 {
                %94 = arith.muli %arg5, %c-1 : index
                %95 = arith.addi %94, %arg6 : index
                %96 = memref.load %arg1[%arg5, %95] : memref<?x40xf64>
                %97 = arith.muli %arg5, %c32 : index
                %98 = arith.muli %arg2, %c-1 : index
                %99 = arith.addi %97, %98 : index
                %100 = arith.addi %99, %c32 : index
                %101 = memref.load %arg1[%arg5, %100] : memref<?x40xf64>
                %102 = arith.muli %arg5, %c32 : index
                %103 = arith.muli %arg2, %c-1 : index
                %104 = arith.addi %102, %103 : index
                %105 = arith.addi %104, %c32 : index
                %106 = arith.muli %arg5, %c-1 : index
                %107 = arith.addi %106, %arg6 : index
                %108 = memref.load %arg1[%105, %107] : memref<?x40xf64>
                %109 = arith.mulf %101, %108 : f64
                %110 = arith.subf %96, %109 : f64
                %111 = arith.muli %arg5, %c-1 : index
                %112 = arith.addi %111, %arg6 : index
                memref.store %110, %arg1[%arg5, %112] : memref<?x40xf64>
              }
            }
            %60 = arith.muli %arg3, %c32 : index
            %61 = arith.muli %arg4, %c32 : index
            %62 = arith.muli %arg5, %c-1 : index
            %63 = arith.addi %61, %62 : index
            %64 = arith.addi %63, %c1 : index
            %65 = arith.maxsi %60, %c1 : index
            %66 = arith.maxsi %65, %64 : index
            %67 = arith.muli %arg3, %c32 : index
            %68 = arith.addi %67, %c32 : index
            %69 = arith.minsi %68, %arg5 : index
            scf.for %arg6 = %66 to %69 step %c1 {
              %70 = arith.muli %arg4, %c32 : index
              %71 = arith.maxsi %70, %arg5 : index
              %72 = arith.addi %arg5, %arg6 : index
              scf.for %arg7 = %71 to %72 step %c1 {
                %81 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %82 = arith.muli %arg5, %c-1 : index
                %83 = arith.addi %82, %arg7 : index
                %84 = memref.load %arg1[%arg5, %83] : memref<?x40xf64>
                %85 = arith.muli %arg5, %c-1 : index
                %86 = arith.addi %85, %arg7 : index
                %87 = memref.load %arg1[%86, %arg6] : memref<?x40xf64>
                %88 = arith.mulf %84, %87 : f64
                %89 = arith.subf %81, %88 : f64
                memref.store %89, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              %73 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
              %74 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
              %75 = arith.divf %73, %74 : f64
              memref.store %75, %arg1[%arg5, %arg6] : memref<?x40xf64>
              %76 = arith.muli %arg5, %c2 : index
              %77 = arith.muli %arg4, %c32 : index
              %78 = arith.addi %77, %c32 : index
              %79 = arith.addi %arg5, %c40 : index
              %80 = arith.minsi %78, %79 : index
              scf.for %arg7 = %76 to %80 step %c1 {
                %81 = arith.muli %arg5, %c-1 : index
                %82 = arith.addi %81, %arg7 : index
                %83 = memref.load %arg1[%arg5, %82] : memref<?x40xf64>
                %84 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %85 = arith.muli %arg5, %c-1 : index
                %86 = arith.addi %85, %arg7 : index
                %87 = memref.load %arg1[%arg6, %86] : memref<?x40xf64>
                %88 = arith.mulf %84, %87 : f64
                %89 = arith.subf %83, %88 : f64
                %90 = arith.muli %arg5, %c-1 : index
                %91 = arith.addi %90, %arg7 : index
                memref.store %89, %arg1[%arg5, %91] : memref<?x40xf64>
              }
            }
          }
          %38 = arith.muli %arg4, %c-1 : index
          %39 = arith.addi %arg2, %38 : index
          %40 = arith.cmpi eq, %39, %c0 : index
          %41 = arith.cmpi eq, %arg3, %c0 : index
          %42 = arith.andi %40, %41 : i1
          scf.if %42 {
            %43 = arith.muli %arg2, %c16 : index
            %44 = arith.addi %43, %c16 : index
            %45 = arith.muli %arg2, %c32 : index
            %46 = arith.addi %45, %c32 : index
            %47 = arith.minsi %46, %c40 : index
            scf.for %arg5 = %44 to %47 step %c1 {
              %48 = memref.load %arg1[%arg5, %c0] : memref<?x40xf64>
              %49 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
              %50 = arith.divf %48, %49 : f64
              memref.store %50, %arg1[%arg5, %c0] : memref<?x40xf64>
              %51 = arith.muli %arg2, %c32 : index
              %52 = arith.muli %arg5, %c-1 : index
              %53 = arith.addi %51, %52 : index
              %54 = arith.addi %53, %c32 : index
              scf.for %arg6 = %c1 to %54 step %c1 {
                %60 = arith.addi %arg5, %arg6 : index
                scf.for %arg7 = %arg5 to %60 step %c1 {
                  %64 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %65 = arith.muli %arg5, %c-1 : index
                  %66 = arith.addi %65, %arg7 : index
                  %67 = memref.load %arg1[%arg5, %66] : memref<?x40xf64>
                  %68 = arith.muli %arg5, %c-1 : index
                  %69 = arith.addi %68, %arg7 : index
                  %70 = memref.load %arg1[%69, %arg6] : memref<?x40xf64>
                  %71 = arith.mulf %67, %70 : f64
                  %72 = arith.subf %64, %71 : f64
                  memref.store %72, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                %61 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %62 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
                %63 = arith.divf %61, %62 : f64
                memref.store %63, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              %55 = arith.muli %arg2, %c32 : index
              %56 = arith.muli %arg5, %c-1 : index
              %57 = arith.addi %55, %56 : index
              %58 = arith.addi %57, %c32 : index
              %59 = arith.minsi %arg5, %c32 : index
              scf.for %arg6 = %58 to %59 step %c1 {
                %60 = arith.muli %arg2, %c32 : index
                %61 = arith.addi %60, %c32 : index
                scf.for %arg7 = %arg5 to %61 step %c1 {
                  %62 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %63 = arith.muli %arg5, %c-1 : index
                  %64 = arith.addi %63, %arg7 : index
                  %65 = memref.load %arg1[%arg5, %64] : memref<?x40xf64>
                  %66 = arith.muli %arg5, %c-1 : index
                  %67 = arith.addi %66, %arg7 : index
                  %68 = memref.load %arg1[%67, %arg6] : memref<?x40xf64>
                  %69 = arith.mulf %65, %68 : f64
                  %70 = arith.subf %62, %69 : f64
                  memref.store %70, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
              }
            }
          }
        }
      }
    }
    return
  }
}

