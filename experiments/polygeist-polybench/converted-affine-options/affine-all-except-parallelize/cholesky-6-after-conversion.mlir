module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c42 = arith.constant 42 : index
    %c39 = arith.constant 39 : index
    %c-2 = arith.constant -2 : index
    %c40 = arith.constant 40 : index
    %c31 = arith.constant 31 : index
    %c29 = arith.constant 29 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c32 = arith.constant 32 : index
    %c33 = arith.constant 33 : index
    %c7 = arith.constant 7 : index
    %c-1 = arith.constant -1 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c2 step %c1 {
      %0 = arith.addi %arg2, %c1 : index
      scf.for %arg3 = %c0 to %0 step %c1 {
        %1 = arith.addi %arg3, %c1 : index
        scf.for %arg4 = %c0 to %1 step %c1 {
          %2 = arith.addi %arg2, %c-1 : index
          %3 = arith.cmpi eq, %2, %c0 : index
          %4 = arith.addi %arg3, %c-1 : index
          %5 = arith.cmpi eq, %4, %c0 : index
          %6 = arith.andi %3, %5 : i1
          %7 = arith.cmpi eq, %arg4, %c0 : index
          %8 = arith.andi %6, %7 : i1
          scf.if %8 {
            %39 = async.create_group %c7 : !async.group
            %40 = scf.for %arg5 = %c0 to %c7 step %c1 iter_args(%arg6 = %c0) -> (index) {
              %token = async.execute {
                %43 = arith.addi %arg5, %c33 : index
                %44 = arith.addi %arg5, %c1 : index
                %45 = async.create_group %c42 : !async.group
                %46 = scf.for %arg7 = %c0 to %44 step %c1 iter_args(%arg8 = %c0) -> (index) {
                  %token_0 = async.execute {
                    %49 = arith.addi %arg7, %c32 : index
                    scf.for %arg9 = %c0 to %c7 step %c1 {
                      %50 = arith.muli %arg9, %c4 : index
                      %51 = arith.addi %50, %c1 : index
                      %52 = memref.load %arg1[%43, %49] : memref<?x40xf64>
                      %53 = arith.addi %51, %c-1 : index
                      %54 = memref.load %arg1[%43, %53] : memref<?x40xf64>
                      %55 = arith.addi %51, %c-1 : index
                      %56 = memref.load %arg1[%49, %55] : memref<?x40xf64>
                      %57 = arith.mulf %54, %56 : f64
                      %58 = arith.subf %52, %57 : f64
                      memref.store %58, %arg1[%43, %49] : memref<?x40xf64>
                      %59 = arith.addi %51, %c1 : index
                      %60 = memref.load %arg1[%43, %49] : memref<?x40xf64>
                      %61 = arith.addi %59, %c-1 : index
                      %62 = memref.load %arg1[%43, %61] : memref<?x40xf64>
                      %63 = arith.addi %59, %c-1 : index
                      %64 = memref.load %arg1[%49, %63] : memref<?x40xf64>
                      %65 = arith.mulf %62, %64 : f64
                      %66 = arith.subf %60, %65 : f64
                      memref.store %66, %arg1[%43, %49] : memref<?x40xf64>
                      %67 = arith.addi %51, %c2 : index
                      %68 = memref.load %arg1[%43, %49] : memref<?x40xf64>
                      %69 = arith.addi %67, %c-1 : index
                      %70 = memref.load %arg1[%43, %69] : memref<?x40xf64>
                      %71 = arith.addi %67, %c-1 : index
                      %72 = memref.load %arg1[%49, %71] : memref<?x40xf64>
                      %73 = arith.mulf %70, %72 : f64
                      %74 = arith.subf %68, %73 : f64
                      memref.store %74, %arg1[%43, %49] : memref<?x40xf64>
                      %75 = arith.addi %51, %c3 : index
                      %76 = memref.load %arg1[%43, %49] : memref<?x40xf64>
                      %77 = arith.addi %75, %c-1 : index
                      %78 = memref.load %arg1[%43, %77] : memref<?x40xf64>
                      %79 = arith.addi %75, %c-1 : index
                      %80 = memref.load %arg1[%49, %79] : memref<?x40xf64>
                      %81 = arith.mulf %78, %80 : f64
                      %82 = arith.subf %76, %81 : f64
                      memref.store %82, %arg1[%43, %49] : memref<?x40xf64>
                    }
                    scf.for %arg9 = %c0 to %c3 step %c1 {
                      %50 = arith.addi %arg9, %c29 : index
                      %51 = memref.load %arg1[%43, %49] : memref<?x40xf64>
                      %52 = arith.addi %50, %c-1 : index
                      %53 = memref.load %arg1[%43, %52] : memref<?x40xf64>
                      %54 = arith.addi %50, %c-1 : index
                      %55 = memref.load %arg1[%49, %54] : memref<?x40xf64>
                      %56 = arith.mulf %53, %55 : f64
                      %57 = arith.subf %51, %56 : f64
                      memref.store %57, %arg1[%43, %49] : memref<?x40xf64>
                    }
                    async.yield
                  }
                  %47 = async.add_to_group %token_0, %45 : !async.token
                  %48 = arith.addi %arg8, %c1 : index
                  scf.yield %48 : index
                }
                async.await_all %45
                async.yield
              }
              %41 = async.add_to_group %token, %39 : !async.token
              %42 = arith.addi %arg6, %c1 : index
              scf.yield %42 : index
            }
            async.await_all %39
          }
          %9 = arith.cmpi eq, %arg2, %c0 : index
          %10 = arith.cmpi eq, %arg3, %c0 : index
          %11 = arith.andi %9, %10 : i1
          %12 = arith.cmpi eq, %arg4, %c0 : index
          %13 = arith.andi %11, %12 : i1
          scf.if %13 {
            %39 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
            %40 = math.sqrt %39 : f64
            memref.store %40, %arg1[%c0, %c0] : memref<?x40xf64>
            %41 = memref.load %arg1[%c1, %c0] : memref<?x40xf64>
            %42 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
            %43 = arith.divf %41, %42 : f64
            memref.store %43, %arg1[%c1, %c0] : memref<?x40xf64>
            %44 = memref.load %arg1[%c1, %c1] : memref<?x40xf64>
            %45 = memref.load %arg1[%c1, %c0] : memref<?x40xf64>
            %46 = arith.mulf %45, %45 : f64
            %47 = arith.subf %44, %46 : f64
            memref.store %47, %arg1[%c1, %c1] : memref<?x40xf64>
          }
          %14 = arith.addi %arg2, %c-1 : index
          %15 = arith.cmpi eq, %14, %c0 : index
          %16 = arith.addi %arg3, %c-1 : index
          %17 = arith.cmpi eq, %16, %c0 : index
          %18 = arith.andi %15, %17 : i1
          %19 = arith.addi %arg4, %c-1 : index
          %20 = arith.cmpi eq, %19, %c0 : index
          %21 = arith.andi %18, %20 : i1
          scf.if %21 {
            %39 = memref.load %arg1[%c32, %c32] : memref<?x40xf64>
            %40 = memref.load %arg1[%c32, %c31] : memref<?x40xf64>
            %41 = arith.mulf %40, %40 : f64
            %42 = arith.subf %39, %41 : f64
            memref.store %42, %arg1[%c32, %c32] : memref<?x40xf64>
          }
          %22 = arith.muli %arg4, %c-1 : index
          %23 = arith.addi %arg3, %22 : index
          %24 = arith.cmpi eq, %23, %c0 : index
          scf.if %24 {
            %39 = arith.muli %arg2, %c32 : index
            %40 = arith.muli %arg3, %c32 : index
            %41 = arith.addi %40, %c1 : index
            %42 = arith.maxsi %39, %c2 : index
            %43 = arith.maxsi %42, %41 : index
            %44 = arith.muli %arg2, %c32 : index
            %45 = arith.addi %44, %c32 : index
            %46 = arith.muli %arg3, %c32 : index
            %47 = arith.addi %46, %c33 : index
            %48 = arith.minsi %45, %c40 : index
            %49 = arith.minsi %48, %47 : index
            scf.for %arg5 = %43 to %49 step %c1 {
              %50 = arith.cmpi eq, %arg3, %c0 : index
              scf.if %50 {
                %88 = memref.load %arg1[%arg5, %c0] : memref<?x40xf64>
                %89 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
                %90 = arith.divf %88, %89 : f64
                memref.store %90, %arg1[%arg5, %c0] : memref<?x40xf64>
              }
              %51 = arith.muli %arg3, %c32 : index
              %52 = arith.maxsi %51, %c1 : index
              %53 = arith.addi %arg5, %c-1 : index
              scf.for %arg6 = %52 to %53 step %c1 {
                %88 = arith.muli %arg3, %c32 : index
                %89 = arith.maxsi %88, %c1 : index
                scf.for %arg7 = %89 to %arg6 step %c1 {
                  %105 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %106 = arith.addi %arg7, %c-1 : index
                  %107 = memref.load %arg1[%arg5, %106] : memref<?x40xf64>
                  %108 = arith.addi %arg7, %c-1 : index
                  %109 = memref.load %arg1[%arg6, %108] : memref<?x40xf64>
                  %110 = arith.mulf %107, %109 : f64
                  %111 = arith.subf %105, %110 : f64
                  memref.store %111, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                %90 = memref.load %arg1[%arg5, %arg5] : memref<?x40xf64>
                %91 = arith.addi %arg6, %c-1 : index
                %92 = memref.load %arg1[%arg5, %91] : memref<?x40xf64>
                %93 = arith.mulf %92, %92 : f64
                %94 = arith.subf %90, %93 : f64
                memref.store %94, %arg1[%arg5, %arg5] : memref<?x40xf64>
                %95 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %96 = arith.addi %arg6, %c-1 : index
                %97 = memref.load %arg1[%arg5, %96] : memref<?x40xf64>
                %98 = arith.addi %arg6, %c-1 : index
                %99 = memref.load %arg1[%arg6, %98] : memref<?x40xf64>
                %100 = arith.mulf %97, %99 : f64
                %101 = arith.subf %95, %100 : f64
                memref.store %101, %arg1[%arg5, %arg6] : memref<?x40xf64>
                %102 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %103 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
                %104 = arith.divf %102, %103 : f64
                memref.store %104, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              %54 = arith.muli %arg3, %c32 : index
              %55 = arith.maxsi %54, %c1 : index
              %56 = arith.addi %arg5, %c-1 : index
              scf.for %arg6 = %55 to %56 step %c1 {
                %88 = arith.addi %arg5, %c-1 : index
                %89 = memref.load %arg1[%arg5, %88] : memref<?x40xf64>
                %90 = arith.addi %arg6, %c-1 : index
                %91 = memref.load %arg1[%arg5, %90] : memref<?x40xf64>
                %92 = arith.addi %arg5, %c-1 : index
                %93 = arith.addi %arg6, %c-1 : index
                %94 = memref.load %arg1[%92, %93] : memref<?x40xf64>
                %95 = arith.mulf %91, %94 : f64
                %96 = arith.subf %89, %95 : f64
                %97 = arith.addi %arg5, %c-1 : index
                memref.store %96, %arg1[%arg5, %97] : memref<?x40xf64>
              }
              %57 = arith.addi %arg5, %c-1 : index
              %58 = arith.addi %arg5, %c-1 : index
              %59 = memref.load %arg1[%57, %58] : memref<?x40xf64>
              %60 = math.sqrt %59 : f64
              %61 = arith.addi %arg5, %c-1 : index
              %62 = arith.addi %arg5, %c-1 : index
              memref.store %60, %arg1[%61, %62] : memref<?x40xf64>
              %63 = memref.load %arg1[%arg5, %arg5] : memref<?x40xf64>
              %64 = arith.addi %arg5, %c-2 : index
              %65 = memref.load %arg1[%arg5, %64] : memref<?x40xf64>
              %66 = arith.mulf %65, %65 : f64
              %67 = arith.subf %63, %66 : f64
              memref.store %67, %arg1[%arg5, %arg5] : memref<?x40xf64>
              %68 = arith.addi %arg5, %c-1 : index
              %69 = memref.load %arg1[%arg5, %68] : memref<?x40xf64>
              %70 = arith.addi %arg5, %c-2 : index
              %71 = memref.load %arg1[%arg5, %70] : memref<?x40xf64>
              %72 = arith.addi %arg5, %c-1 : index
              %73 = arith.addi %arg5, %c-2 : index
              %74 = memref.load %arg1[%72, %73] : memref<?x40xf64>
              %75 = arith.mulf %71, %74 : f64
              %76 = arith.subf %69, %75 : f64
              %77 = arith.addi %arg5, %c-1 : index
              memref.store %76, %arg1[%arg5, %77] : memref<?x40xf64>
              %78 = arith.addi %arg5, %c-1 : index
              %79 = memref.load %arg1[%arg5, %78] : memref<?x40xf64>
              %80 = arith.addi %arg5, %c-1 : index
              %81 = arith.addi %arg5, %c-1 : index
              %82 = memref.load %arg1[%80, %81] : memref<?x40xf64>
              %83 = arith.divf %79, %82 : f64
              %84 = arith.addi %arg5, %c-1 : index
              memref.store %83, %arg1[%arg5, %84] : memref<?x40xf64>
              %85 = arith.muli %arg3, %c-1 : index
              %86 = arith.addi %arg2, %85 : index
              %87 = arith.cmpi eq, %86, %c0 : index
              scf.if %87 {
                %88 = memref.load %arg1[%arg5, %arg5] : memref<?x40xf64>
                %89 = arith.addi %arg5, %c-1 : index
                %90 = memref.load %arg1[%arg5, %89] : memref<?x40xf64>
                %91 = arith.mulf %90, %90 : f64
                %92 = arith.subf %88, %91 : f64
                memref.store %92, %arg1[%arg5, %arg5] : memref<?x40xf64>
              }
            }
          }
          %25 = arith.addi %arg2, %c-1 : index
          %26 = arith.cmpi eq, %25, %c0 : index
          %27 = arith.cmpi eq, %arg3, %c0 : index
          %28 = arith.andi %26, %27 : i1
          %29 = arith.cmpi eq, %arg4, %c0 : index
          %30 = arith.andi %28, %29 : i1
          scf.if %30 {
            %39 = async.create_group %c7 : !async.group
            %40 = scf.for %arg5 = %c0 to %c7 step %c1 iter_args(%arg6 = %c0) -> (index) {
              %token = async.execute {
                %43 = arith.addi %arg5, %c33 : index
                %44 = memref.load %arg1[%43, %c0] : memref<?x40xf64>
                %45 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
                %46 = arith.divf %44, %45 : f64
                memref.store %46, %arg1[%43, %c0] : memref<?x40xf64>
                scf.for %arg7 = %c0 to %c31 step %c1 {
                  %47 = arith.addi %arg7, %c1 : index
                  %48 = arith.cmpi slt, %arg7, %c0 : index
                  %49 = arith.subi %c-1, %arg7 : index
                  %50 = arith.select %48, %49, %arg7 : index
                  %51 = arith.divsi %50, %c4 : index
                  %52 = arith.subi %c-1, %51 : index
                  %53 = arith.select %48, %52, %51 : index
                  scf.for %arg8 = %c0 to %53 step %c1 {
                    %73 = arith.muli %arg8, %c4 : index
                    %74 = arith.addi %73, %c1 : index
                    %75 = memref.load %arg1[%43, %47] : memref<?x40xf64>
                    %76 = arith.addi %74, %c-1 : index
                    %77 = memref.load %arg1[%43, %76] : memref<?x40xf64>
                    %78 = arith.addi %74, %c-1 : index
                    %79 = memref.load %arg1[%47, %78] : memref<?x40xf64>
                    %80 = arith.mulf %77, %79 : f64
                    %81 = arith.subf %75, %80 : f64
                    memref.store %81, %arg1[%43, %47] : memref<?x40xf64>
                    %82 = arith.addi %74, %c1 : index
                    %83 = memref.load %arg1[%43, %47] : memref<?x40xf64>
                    %84 = arith.addi %82, %c-1 : index
                    %85 = memref.load %arg1[%43, %84] : memref<?x40xf64>
                    %86 = arith.addi %82, %c-1 : index
                    %87 = memref.load %arg1[%47, %86] : memref<?x40xf64>
                    %88 = arith.mulf %85, %87 : f64
                    %89 = arith.subf %83, %88 : f64
                    memref.store %89, %arg1[%43, %47] : memref<?x40xf64>
                    %90 = arith.addi %74, %c2 : index
                    %91 = memref.load %arg1[%43, %47] : memref<?x40xf64>
                    %92 = arith.addi %90, %c-1 : index
                    %93 = memref.load %arg1[%43, %92] : memref<?x40xf64>
                    %94 = arith.addi %90, %c-1 : index
                    %95 = memref.load %arg1[%47, %94] : memref<?x40xf64>
                    %96 = arith.mulf %93, %95 : f64
                    %97 = arith.subf %91, %96 : f64
                    memref.store %97, %arg1[%43, %47] : memref<?x40xf64>
                    %98 = arith.addi %74, %c3 : index
                    %99 = memref.load %arg1[%43, %47] : memref<?x40xf64>
                    %100 = arith.addi %98, %c-1 : index
                    %101 = memref.load %arg1[%43, %100] : memref<?x40xf64>
                    %102 = arith.addi %98, %c-1 : index
                    %103 = memref.load %arg1[%47, %102] : memref<?x40xf64>
                    %104 = arith.mulf %101, %103 : f64
                    %105 = arith.subf %99, %104 : f64
                    memref.store %105, %arg1[%43, %47] : memref<?x40xf64>
                  }
                  %54 = arith.remsi %arg7, %c4 : index
                  %55 = arith.cmpi slt, %54, %c0 : index
                  %56 = arith.addi %54, %c4 : index
                  %57 = arith.select %55, %56, %54 : index
                  scf.for %arg8 = %c0 to %57 step %c1 {
                    %73 = arith.addi %47, %c-1 : index
                    %74 = arith.cmpi slt, %73, %c0 : index
                    %75 = arith.subi %c-1, %73 : index
                    %76 = arith.select %74, %75, %73 : index
                    %77 = arith.divsi %76, %c4 : index
                    %78 = arith.subi %c-1, %77 : index
                    %79 = arith.select %74, %78, %77 : index
                    %80 = arith.muli %79, %c4 : index
                    %81 = arith.addi %arg8, %80 : index
                    %82 = arith.addi %81, %c1 : index
                    %83 = memref.load %arg1[%43, %47] : memref<?x40xf64>
                    %84 = arith.addi %82, %c-1 : index
                    %85 = memref.load %arg1[%43, %84] : memref<?x40xf64>
                    %86 = arith.addi %82, %c-1 : index
                    %87 = memref.load %arg1[%47, %86] : memref<?x40xf64>
                    %88 = arith.mulf %85, %87 : f64
                    %89 = arith.subf %83, %88 : f64
                    memref.store %89, %arg1[%43, %47] : memref<?x40xf64>
                  }
                  %58 = memref.load %arg1[%43, %43] : memref<?x40xf64>
                  %59 = arith.addi %47, %c-1 : index
                  %60 = memref.load %arg1[%43, %59] : memref<?x40xf64>
                  %61 = arith.mulf %60, %60 : f64
                  %62 = arith.subf %58, %61 : f64
                  memref.store %62, %arg1[%43, %43] : memref<?x40xf64>
                  %63 = memref.load %arg1[%43, %47] : memref<?x40xf64>
                  %64 = arith.addi %47, %c-1 : index
                  %65 = memref.load %arg1[%43, %64] : memref<?x40xf64>
                  %66 = arith.addi %47, %c-1 : index
                  %67 = memref.load %arg1[%47, %66] : memref<?x40xf64>
                  %68 = arith.mulf %65, %67 : f64
                  %69 = arith.subf %63, %68 : f64
                  memref.store %69, %arg1[%43, %47] : memref<?x40xf64>
                  %70 = memref.load %arg1[%43, %47] : memref<?x40xf64>
                  %71 = memref.load %arg1[%47, %47] : memref<?x40xf64>
                  %72 = arith.divf %70, %71 : f64
                  memref.store %72, %arg1[%43, %47] : memref<?x40xf64>
                }
                async.yield
              }
              %41 = async.add_to_group %token, %39 : !async.token
              %42 = arith.addi %arg6, %c1 : index
              scf.yield %42 : index
            }
            async.await_all %39
          }
          %31 = arith.addi %arg2, %c-1 : index
          %32 = arith.cmpi eq, %31, %c0 : index
          %33 = arith.addi %arg3, %c-1 : index
          %34 = arith.cmpi eq, %33, %c0 : index
          %35 = arith.andi %32, %34 : i1
          %36 = arith.addi %arg4, %c-1 : index
          %37 = arith.cmpi eq, %36, %c0 : index
          %38 = arith.andi %35, %37 : i1
          scf.if %38 {
            %39 = memref.load %arg1[%c39, %c39] : memref<?x40xf64>
            %40 = math.sqrt %39 : f64
            memref.store %40, %arg1[%c39, %c39] : memref<?x40xf64>
          }
        }
      }
    }
    return
  }
}

