module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c15 = arith.constant 15 : index
    %c24 = arith.constant 24 : index
    %c-16 = arith.constant -16 : index
    %c64 = arith.constant 64 : index
    %c-30 = arith.constant -30 : index
    %c-33 = arith.constant -33 : index
    %c66 = arith.constant 66 : index
    %c-2 = arith.constant -2 : index
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c16 = arith.constant 16 : index
    %c-39 = arith.constant -39 : index
    %c30 = arith.constant 30 : index
    %c31 = arith.constant 31 : index
    %c32 = arith.constant 32 : index
    %c33 = arith.constant 33 : index
    %c7 = arith.constant 7 : index
    %c3 = arith.constant 3 : index
    %c-1 = arith.constant -1 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c2 step %c1 {
      %0 = arith.addi %arg2, %c1 : index
      scf.for %arg3 = %c0 to %0 step %c1 {
        %1 = arith.muli %arg2, %c-1 : index
        %2 = arith.addi %1, %c3 : index
        scf.for %arg4 = %c0 to %2 step %c1 {
          %3 = arith.addi %arg2, %arg4 : index
          %4 = arith.addi %arg2, %c-1 : index
          %5 = arith.cmpi eq, %4, %c0 : index
          %6 = arith.addi %arg3, %c-1 : index
          %7 = arith.cmpi eq, %6, %c0 : index
          %8 = arith.andi %5, %7 : i1
          %9 = arith.addi %arg2, %arg4 : index
          %10 = arith.addi %9, %c-1 : index
          %11 = arith.cmpi eq, %10, %c0 : index
          %12 = arith.andi %8, %11 : i1
          scf.if %12 {
            scf.for %arg5 = %c0 to %c7 step %c1 {
              %54 = arith.addi %arg5, %c33 : index
              %55 = arith.addi %arg5, %c1 : index
              scf.for %arg6 = %c0 to %55 step %c1 {
                %56 = arith.addi %arg6, %c32 : index
                %57 = arith.muli %arg5, %c-1 : index
                %58 = arith.addi %57, %c31 : index
                scf.for %arg7 = %c0 to %58 step %c1 {
                  %59 = arith.addi %54, %arg7 : index
                  %60 = memref.load %arg1[%54, %56] : memref<?x40xf64>
                  %61 = arith.muli %54, %c-1 : index
                  %62 = arith.addi %61, %59 : index
                  %63 = memref.load %arg1[%54, %62] : memref<?x40xf64>
                  %64 = arith.muli %54, %c-1 : index
                  %65 = arith.addi %64, %59 : index
                  %66 = memref.load %arg1[%65, %56] : memref<?x40xf64>
                  %67 = arith.mulf %63, %66 : f64
                  %68 = arith.subf %60, %67 : f64
                  memref.store %68, %arg1[%54, %56] : memref<?x40xf64>
                }
              }
            }
          }
          %13 = arith.cmpi eq, %arg2, %c0 : index
          %14 = arith.cmpi eq, %arg3, %c0 : index
          %15 = arith.andi %13, %14 : i1
          %16 = arith.addi %arg2, %arg4 : index
          %17 = arith.cmpi eq, %16, %c0 : index
          %18 = arith.andi %15, %17 : i1
          scf.if %18 {
            %54 = memref.load %arg1[%c1, %c0] : memref<?x40xf64>
            %55 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
            %56 = arith.divf %54, %55 : f64
            memref.store %56, %arg1[%c1, %c0] : memref<?x40xf64>
            scf.for %arg5 = %c0 to %c30 step %c1 {
              %57 = arith.addi %arg5, %c2 : index
              %58 = arith.addi %57, %c-1 : index
              %59 = memref.load %arg1[%c1, %58] : memref<?x40xf64>
              %60 = memref.load %arg1[%c1, %c0] : memref<?x40xf64>
              %61 = arith.addi %57, %c-1 : index
              %62 = memref.load %arg1[%c0, %61] : memref<?x40xf64>
              %63 = arith.mulf %60, %62 : f64
              %64 = arith.subf %59, %63 : f64
              %65 = arith.addi %57, %c-1 : index
              memref.store %64, %arg1[%c1, %65] : memref<?x40xf64>
            }
          }
          %19 = arith.cmpi eq, %arg3, %c0 : index
          scf.if %19 {
            %54 = arith.muli %arg2, %c32 : index
            %55 = arith.muli %arg2, %c32 : index
            %56 = arith.muli %arg4, %c32 : index
            %57 = arith.addi %55, %56 : index
            %58 = arith.addi %57, %c-39 : index
            %59 = arith.maxsi %54, %c1 : index
            %60 = arith.maxsi %59, %58 : index
            %61 = arith.muli %arg2, %c16 : index
            %62 = arith.muli %arg4, %c16 : index
            %63 = arith.addi %61, %62 : index
            %64 = arith.addi %63, %c1 : index
            %65 = arith.muli %arg2, %c32 : index
            %66 = arith.addi %65, %c32 : index
            %67 = arith.minsi %64, %66 : index
            scf.for %arg5 = %60 to %67 step %c1 {
              scf.for %arg6 = %c0 to %arg5 step %c1 {
                %68 = arith.muli %arg2, %c-32 : index
                %69 = arith.addi %arg5, %68 : index
                %70 = arith.muli %arg4, %c-32 : index
                %71 = arith.addi %69, %70 : index
                %72 = arith.addi %71, %c40 : index
                scf.for %arg7 = %c0 to %72 step %c1 {
                  %73 = arith.muli %3, %c32 : index
                  %74 = arith.addi %73, %arg7 : index
                  %75 = arith.muli %arg5, %c-1 : index
                  %76 = arith.addi %75, %74 : index
                  %77 = memref.load %arg1[%arg5, %76] : memref<?x40xf64>
                  %78 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %79 = arith.muli %arg5, %c-1 : index
                  %80 = arith.addi %79, %74 : index
                  %81 = memref.load %arg1[%arg6, %80] : memref<?x40xf64>
                  %82 = arith.mulf %78, %81 : f64
                  %83 = arith.subf %77, %82 : f64
                  %84 = arith.muli %arg5, %c-1 : index
                  %85 = arith.addi %84, %74 : index
                  memref.store %83, %arg1[%arg5, %85] : memref<?x40xf64>
                }
              }
            }
          }
          %20 = arith.addi %arg2, %c-1 : index
          %21 = arith.cmpi eq, %20, %c0 : index
          %22 = arith.cmpi eq, %arg3, %c0 : index
          %23 = arith.andi %21, %22 : i1
          %24 = arith.addi %arg2, %arg4 : index
          %25 = arith.addi %24, %c-2 : index
          %26 = arith.cmpi eq, %25, %c0 : index
          %27 = arith.andi %23, %26 : i1
          scf.if %27 {
            scf.for %arg5 = %c0 to %c31 step %c1 {
              scf.for %arg6 = %c0 to %c7 step %c1 {
                %57 = arith.addi %arg6, %c66 : index
                %58 = arith.addi %57, %c-33 : index
                %59 = memref.load %arg1[%c33, %58] : memref<?x40xf64>
                %60 = memref.load %arg1[%c33, %arg5] : memref<?x40xf64>
                %61 = arith.addi %57, %c-33 : index
                %62 = memref.load %arg1[%arg5, %61] : memref<?x40xf64>
                %63 = arith.mulf %60, %62 : f64
                %64 = arith.subf %59, %63 : f64
                %65 = arith.addi %57, %c-33 : index
                memref.store %64, %arg1[%c33, %65] : memref<?x40xf64>
              }
            }
            %54 = memref.load %arg1[%c33, %c31] : memref<?x40xf64>
            %55 = memref.load %arg1[%c31, %c31] : memref<?x40xf64>
            %56 = arith.divf %54, %55 : f64
            memref.store %56, %arg1[%c33, %c31] : memref<?x40xf64>
            scf.for %arg5 = %c0 to %c7 step %c1 {
              %57 = arith.addi %arg5, %c66 : index
              %58 = arith.addi %57, %c-33 : index
              %59 = memref.load %arg1[%c33, %58] : memref<?x40xf64>
              %60 = memref.load %arg1[%c33, %c31] : memref<?x40xf64>
              %61 = arith.addi %57, %c-33 : index
              %62 = memref.load %arg1[%c31, %61] : memref<?x40xf64>
              %63 = arith.mulf %60, %62 : f64
              %64 = arith.subf %59, %63 : f64
              %65 = arith.addi %57, %c-33 : index
              memref.store %64, %arg1[%c33, %65] : memref<?x40xf64>
            }
          }
          %28 = arith.muli %arg2, %c32 : index
          %29 = arith.muli %arg2, %c16 : index
          %30 = arith.muli %arg4, %c16 : index
          %31 = arith.addi %29, %30 : index
          %32 = arith.addi %31, %c1 : index
          %33 = arith.muli %arg2, %c32 : index
          %34 = arith.muli %arg3, %c-32 : index
          %35 = arith.addi %33, %34 : index
          %36 = arith.muli %arg4, %c32 : index
          %37 = arith.addi %35, %36 : index
          %38 = arith.addi %37, %c-30 : index
          %39 = arith.maxsi %28, %c2 : index
          %40 = arith.maxsi %39, %32 : index
          %41 = arith.maxsi %40, %38 : index
          %42 = arith.muli %arg2, %c32 : index
          %43 = arith.addi %42, %c32 : index
          %44 = arith.muli %arg2, %c16 : index
          %45 = arith.muli %arg4, %c16 : index
          %46 = arith.addi %44, %45 : index
          %47 = arith.addi %46, %c16 : index
          %48 = arith.minsi %43, %c40 : index
          %49 = arith.minsi %48, %47 : index
          scf.for %arg5 = %41 to %49 step %c1 {
            %54 = arith.cmpi eq, %arg2, %c0 : index
            %55 = arith.cmpi eq, %arg3, %c0 : index
            %56 = arith.andi %54, %55 : i1
            %57 = arith.addi %arg2, %arg4 : index
            %58 = arith.cmpi eq, %57, %c0 : index
            %59 = arith.andi %56, %58 : i1
            scf.if %59 {
              %82 = memref.load %arg1[%arg5, %c0] : memref<?x40xf64>
              %83 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
              %84 = arith.divf %82, %83 : f64
              memref.store %84, %arg1[%arg5, %c0] : memref<?x40xf64>
              %85 = arith.muli %arg5, %c-2 : index
              %86 = arith.addi %85, %c32 : index
              scf.for %arg6 = %c0 to %86 step %c1 {
                %87 = arith.muli %arg5, %c2 : index
                %88 = arith.addi %87, %arg6 : index
                %89 = arith.muli %arg5, %c-1 : index
                %90 = arith.addi %89, %88 : index
                %91 = memref.load %arg1[%arg5, %90] : memref<?x40xf64>
                %92 = memref.load %arg1[%arg5, %c0] : memref<?x40xf64>
                %93 = arith.muli %arg5, %c-1 : index
                %94 = arith.addi %93, %88 : index
                %95 = memref.load %arg1[%c0, %94] : memref<?x40xf64>
                %96 = arith.mulf %92, %95 : f64
                %97 = arith.subf %91, %96 : f64
                %98 = arith.muli %arg5, %c-1 : index
                %99 = arith.addi %98, %88 : index
                memref.store %97, %arg1[%arg5, %99] : memref<?x40xf64>
              }
            }
            %60 = arith.muli %arg4, %c-1 : index
            %61 = arith.addi %60, %c1 : index
            %62 = arith.cmpi eq, %61, %c0 : index
            %63 = arith.cmpi eq, %arg3, %c0 : index
            %64 = arith.andi %62, %63 : i1
            scf.if %64 {
              %82 = arith.muli %arg2, %c32 : index
              %83 = arith.muli %arg5, %c-1 : index
              %84 = arith.addi %82, %83 : index
              %85 = arith.addi %84, %c32 : index
              scf.for %arg6 = %c0 to %85 step %c1 {
                %86 = arith.muli %arg2, %c32 : index
                %87 = arith.muli %arg5, %c-2 : index
                %88 = arith.addi %86, %87 : index
                %89 = arith.addi %88, %c64 : index
                %90 = arith.muli %arg5, %c-1 : index
                %91 = arith.addi %90, %c40 : index
                %92 = arith.minsi %89, %91 : index
                scf.for %arg7 = %c0 to %92 step %c1 {
                  %93 = arith.muli %arg5, %c2 : index
                  %94 = arith.addi %93, %arg7 : index
                  %95 = arith.muli %arg5, %c-1 : index
                  %96 = arith.addi %95, %94 : index
                  %97 = memref.load %arg1[%arg5, %96] : memref<?x40xf64>
                  %98 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %99 = arith.muli %arg5, %c-1 : index
                  %100 = arith.addi %99, %94 : index
                  %101 = memref.load %arg1[%arg6, %100] : memref<?x40xf64>
                  %102 = arith.mulf %98, %101 : f64
                  %103 = arith.subf %97, %102 : f64
                  %104 = arith.muli %arg5, %c-1 : index
                  %105 = arith.addi %104, %94 : index
                  memref.store %103, %arg1[%arg5, %105] : memref<?x40xf64>
                }
              }
            }
            %65 = arith.muli %arg4, %c-1 : index
            %66 = arith.addi %65, %c1 : index
            %67 = arith.cmpi eq, %66, %c0 : index
            %68 = arith.cmpi eq, %arg3, %c0 : index
            %69 = arith.andi %67, %68 : i1
            scf.if %69 {
              %82 = arith.muli %arg5, %c32 : index
              %83 = arith.muli %arg2, %c-1 : index
              %84 = arith.addi %82, %83 : index
              %85 = arith.addi %84, %c32 : index
              %86 = memref.load %arg1[%arg5, %85] : memref<?x40xf64>
              %87 = arith.muli %arg5, %c32 : index
              %88 = arith.muli %arg2, %c-1 : index
              %89 = arith.addi %87, %88 : index
              %90 = arith.addi %89, %c32 : index
              %91 = arith.muli %arg5, %c32 : index
              %92 = arith.muli %arg2, %c-1 : index
              %93 = arith.addi %91, %92 : index
              %94 = arith.addi %93, %c32 : index
              %95 = memref.load %arg1[%90, %94] : memref<?x40xf64>
              %96 = arith.divf %86, %95 : f64
              %97 = arith.muli %arg5, %c32 : index
              %98 = arith.muli %arg2, %c-1 : index
              %99 = arith.addi %97, %98 : index
              %100 = arith.addi %99, %c32 : index
              memref.store %96, %arg1[%arg5, %100] : memref<?x40xf64>
              %101 = arith.muli %arg2, %c32 : index
              %102 = arith.muli %arg5, %c-2 : index
              %103 = arith.addi %101, %102 : index
              %104 = arith.addi %103, %c64 : index
              %105 = arith.muli %arg5, %c-1 : index
              %106 = arith.addi %105, %c40 : index
              %107 = arith.minsi %104, %106 : index
              scf.for %arg6 = %c0 to %107 step %c1 {
                %108 = arith.muli %arg5, %c2 : index
                %109 = arith.addi %108, %arg6 : index
                %110 = arith.muli %arg5, %c-1 : index
                %111 = arith.addi %110, %109 : index
                %112 = memref.load %arg1[%arg5, %111] : memref<?x40xf64>
                %113 = arith.muli %arg5, %c32 : index
                %114 = arith.muli %arg2, %c-1 : index
                %115 = arith.addi %113, %114 : index
                %116 = arith.addi %115, %c32 : index
                %117 = memref.load %arg1[%arg5, %116] : memref<?x40xf64>
                %118 = arith.muli %arg5, %c32 : index
                %119 = arith.muli %arg2, %c-1 : index
                %120 = arith.addi %118, %119 : index
                %121 = arith.addi %120, %c32 : index
                %122 = arith.muli %arg5, %c-1 : index
                %123 = arith.addi %122, %109 : index
                %124 = memref.load %arg1[%121, %123] : memref<?x40xf64>
                %125 = arith.mulf %117, %124 : f64
                %126 = arith.subf %112, %125 : f64
                %127 = arith.muli %arg5, %c-1 : index
                %128 = arith.addi %127, %109 : index
                memref.store %126, %arg1[%arg5, %128] : memref<?x40xf64>
              }
            }
            %70 = arith.muli %arg3, %c32 : index
            %71 = arith.muli %arg5, %c-1 : index
            %72 = arith.muli %arg2, %c32 : index
            %73 = arith.addi %71, %72 : index
            %74 = arith.muli %arg4, %c32 : index
            %75 = arith.addi %73, %74 : index
            %76 = arith.addi %75, %c1 : index
            %77 = arith.maxsi %70, %c1 : index
            %78 = arith.maxsi %77, %76 : index
            %79 = arith.muli %arg3, %c32 : index
            %80 = arith.addi %79, %c32 : index
            %81 = arith.minsi %80, %arg5 : index
            scf.for %arg6 = %78 to %81 step %c1 {
              %82 = arith.muli %arg2, %c32 : index
              %83 = arith.muli %arg4, %c32 : index
              %84 = arith.addi %82, %83 : index
              %85 = arith.maxsi %84, %arg5 : index
              %86 = arith.addi %arg5, %arg6 : index
              scf.for %arg7 = %85 to %86 step %c1 {
                %99 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %100 = arith.muli %arg5, %c-1 : index
                %101 = arith.addi %100, %arg7 : index
                %102 = memref.load %arg1[%arg5, %101] : memref<?x40xf64>
                %103 = arith.muli %arg5, %c-1 : index
                %104 = arith.addi %103, %arg7 : index
                %105 = memref.load %arg1[%104, %arg6] : memref<?x40xf64>
                %106 = arith.mulf %102, %105 : f64
                %107 = arith.subf %99, %106 : f64
                memref.store %107, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              %87 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
              %88 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
              %89 = arith.divf %87, %88 : f64
              memref.store %89, %arg1[%arg5, %arg6] : memref<?x40xf64>
              %90 = arith.muli %arg5, %c-2 : index
              %91 = arith.muli %arg2, %c32 : index
              %92 = arith.addi %90, %91 : index
              %93 = arith.muli %arg4, %c32 : index
              %94 = arith.addi %92, %93 : index
              %95 = arith.addi %94, %c32 : index
              %96 = arith.muli %arg5, %c-1 : index
              %97 = arith.addi %96, %c40 : index
              %98 = arith.minsi %95, %97 : index
              scf.for %arg7 = %c0 to %98 step %c1 {
                %99 = arith.muli %arg5, %c2 : index
                %100 = arith.addi %99, %arg7 : index
                %101 = arith.muli %arg5, %c-1 : index
                %102 = arith.addi %101, %100 : index
                %103 = memref.load %arg1[%arg5, %102] : memref<?x40xf64>
                %104 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %105 = arith.muli %arg5, %c-1 : index
                %106 = arith.addi %105, %100 : index
                %107 = memref.load %arg1[%arg6, %106] : memref<?x40xf64>
                %108 = arith.mulf %104, %107 : f64
                %109 = arith.subf %103, %108 : f64
                %110 = arith.muli %arg5, %c-1 : index
                %111 = arith.addi %110, %100 : index
                memref.store %109, %arg1[%arg5, %111] : memref<?x40xf64>
              }
            }
          }
          %50 = arith.muli %arg4, %c-1 : index
          %51 = arith.cmpi eq, %50, %c0 : index
          %52 = arith.cmpi eq, %arg3, %c0 : index
          %53 = arith.andi %51, %52 : i1
          scf.if %53 {
            %54 = arith.muli %arg2, %c-16 : index
            %55 = arith.addi %54, %c24 : index
            %56 = arith.muli %arg2, %c16 : index
            %57 = arith.addi %56, %c16 : index
            %58 = arith.minsi %55, %57 : index
            scf.for %arg5 = %c0 to %58 step %c1 {
              %59 = arith.muli %arg2, %c16 : index
              %60 = arith.addi %59, %arg5 : index
              %61 = arith.addi %60, %c16 : index
              %62 = memref.load %arg1[%61, %c0] : memref<?x40xf64>
              %63 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
              %64 = arith.divf %62, %63 : f64
              memref.store %64, %arg1[%61, %c0] : memref<?x40xf64>
              %65 = arith.muli %arg2, %c16 : index
              %66 = arith.muli %arg5, %c-1 : index
              %67 = arith.addi %65, %66 : index
              %68 = arith.addi %67, %c15 : index
              scf.for %arg6 = %c0 to %68 step %c1 {
                %74 = arith.addi %arg6, %c1 : index
                %75 = arith.addi %arg6, %c1 : index
                scf.for %arg7 = %c0 to %75 step %c1 {
                  %79 = arith.addi %61, %arg7 : index
                  %80 = memref.load %arg1[%61, %74] : memref<?x40xf64>
                  %81 = arith.muli %61, %c-1 : index
                  %82 = arith.addi %81, %79 : index
                  %83 = memref.load %arg1[%61, %82] : memref<?x40xf64>
                  %84 = arith.muli %61, %c-1 : index
                  %85 = arith.addi %84, %79 : index
                  %86 = memref.load %arg1[%85, %74] : memref<?x40xf64>
                  %87 = arith.mulf %83, %86 : f64
                  %88 = arith.subf %80, %87 : f64
                  memref.store %88, %arg1[%61, %74] : memref<?x40xf64>
                }
                %76 = memref.load %arg1[%61, %74] : memref<?x40xf64>
                %77 = memref.load %arg1[%74, %74] : memref<?x40xf64>
                %78 = arith.divf %76, %77 : f64
                memref.store %78, %arg1[%61, %74] : memref<?x40xf64>
              }
              %69 = arith.muli %arg2, %c-16 : index
              %70 = arith.addi %69, %arg5 : index
              %71 = arith.addi %70, %c16 : index
              %72 = arith.muli %arg5, %c2 : index
              %73 = arith.minsi %71, %72 : index
              scf.for %arg6 = %c0 to %73 step %c1 {
                %74 = arith.muli %arg2, %c32 : index
                %75 = arith.muli %61, %c-1 : index
                %76 = arith.addi %74, %75 : index
                %77 = arith.addi %76, %arg6 : index
                %78 = arith.addi %77, %c32 : index
                %79 = arith.muli %arg2, %c16 : index
                %80 = arith.muli %arg5, %c-1 : index
                %81 = arith.addi %79, %80 : index
                %82 = arith.addi %81, %c16 : index
                scf.for %arg7 = %c0 to %82 step %c1 {
                  %83 = arith.addi %61, %arg7 : index
                  %84 = memref.load %arg1[%61, %78] : memref<?x40xf64>
                  %85 = arith.muli %61, %c-1 : index
                  %86 = arith.addi %85, %83 : index
                  %87 = memref.load %arg1[%61, %86] : memref<?x40xf64>
                  %88 = arith.muli %61, %c-1 : index
                  %89 = arith.addi %88, %83 : index
                  %90 = memref.load %arg1[%89, %78] : memref<?x40xf64>
                  %91 = arith.mulf %87, %90 : f64
                  %92 = arith.subf %84, %91 : f64
                  memref.store %92, %arg1[%61, %78] : memref<?x40xf64>
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

