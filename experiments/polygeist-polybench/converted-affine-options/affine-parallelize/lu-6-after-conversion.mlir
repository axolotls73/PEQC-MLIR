module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c42 = arith.constant 42 : index
    %c30 = arith.constant 30 : index
    %c7 = arith.constant 7 : index
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
            %43 = async.create_group %c7 : !async.group
            %44 = scf.for %arg5 = %c33 to %c40 step %c1 iter_args(%arg6 = %c0) -> (index) {
              %token = async.execute {
                scf.for %arg7 = %c32 to %arg5 step %c1 {
                  scf.for %arg8 = %arg5 to %c64 step %c1 {
                    %47 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
                    %48 = arith.muli %arg5, %c-1 : index
                    %49 = arith.addi %48, %arg8 : index
                    %50 = memref.load %arg1[%arg5, %49] : memref<?x40xf64>
                    %51 = arith.muli %arg5, %c-1 : index
                    %52 = arith.addi %51, %arg8 : index
                    %53 = memref.load %arg1[%52, %arg7] : memref<?x40xf64>
                    %54 = arith.mulf %50, %53 : f64
                    %55 = arith.subf %47, %54 : f64
                    memref.store %55, %arg1[%arg5, %arg7] : memref<?x40xf64>
                  }
                }
                async.yield
              }
              %45 = async.add_to_group %token, %43 : !async.token
              %46 = arith.addi %arg6, %c1 : index
              scf.yield %46 : index
            }
            async.await_all %43
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
            %46 = async.create_group %c30 : !async.group
            %47 = scf.for %arg5 = %c2 to %c32 step %c1 iter_args(%arg6 = %c0) -> (index) {
              %token = async.execute {
                %50 = arith.addi %arg5, %c-1 : index
                %51 = memref.load %arg1[%c1, %50] : memref<?x40xf64>
                %52 = memref.load %arg1[%c1, %c0] : memref<?x40xf64>
                %53 = arith.addi %arg5, %c-1 : index
                %54 = memref.load %arg1[%c0, %53] : memref<?x40xf64>
                %55 = arith.mulf %52, %54 : f64
                %56 = arith.subf %51, %55 : f64
                %57 = arith.addi %arg5, %c-1 : index
                memref.store %56, %arg1[%c1, %57] : memref<?x40xf64>
                async.yield
              }
              %48 = async.add_to_group %token, %46 : !async.token
              %49 = arith.addi %arg6, %c1 : index
              scf.yield %49 : index
            }
            async.await_all %46
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
                %55 = async.create_group %c42 : !async.group
                %56 = scf.for %arg7 = %53 to %54 step %c1 iter_args(%arg8 = %c0) -> (index) {
                  %token = async.execute {
                    %59 = arith.muli %arg5, %c-1 : index
                    %60 = arith.addi %59, %arg7 : index
                    %61 = memref.load %arg1[%arg5, %60] : memref<?x40xf64>
                    %62 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                    %63 = arith.muli %arg5, %c-1 : index
                    %64 = arith.addi %63, %arg7 : index
                    %65 = memref.load %arg1[%arg6, %64] : memref<?x40xf64>
                    %66 = arith.mulf %62, %65 : f64
                    %67 = arith.subf %61, %66 : f64
                    %68 = arith.muli %arg5, %c-1 : index
                    %69 = arith.addi %68, %arg7 : index
                    memref.store %67, %arg1[%arg5, %69] : memref<?x40xf64>
                    async.yield
                  }
                  %57 = async.add_to_group %token, %55 : !async.token
                  %58 = arith.addi %arg8, %c1 : index
                  scf.yield %58 : index
                }
                async.await_all %55
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
              %48 = async.create_group %c7 : !async.group
              %49 = scf.for %arg6 = %c66 to %c73 step %c1 iter_args(%arg7 = %c0) -> (index) {
                %token = async.execute {
                  %52 = arith.addi %arg6, %c-33 : index
                  %53 = memref.load %arg1[%c33, %52] : memref<?x40xf64>
                  %54 = memref.load %arg1[%c33, %arg5] : memref<?x40xf64>
                  %55 = arith.addi %arg6, %c-33 : index
                  %56 = memref.load %arg1[%arg5, %55] : memref<?x40xf64>
                  %57 = arith.mulf %54, %56 : f64
                  %58 = arith.subf %53, %57 : f64
                  %59 = arith.addi %arg6, %c-33 : index
                  memref.store %58, %arg1[%c33, %59] : memref<?x40xf64>
                  async.yield
                }
                %50 = async.add_to_group %token, %48 : !async.token
                %51 = arith.addi %arg7, %c1 : index
                scf.yield %51 : index
              }
              async.await_all %48
            }
            %43 = memref.load %arg1[%c33, %c31] : memref<?x40xf64>
            %44 = memref.load %arg1[%c31, %c31] : memref<?x40xf64>
            %45 = arith.divf %43, %44 : f64
            memref.store %45, %arg1[%c33, %c31] : memref<?x40xf64>
            %46 = async.create_group %c7 : !async.group
            %47 = scf.for %arg5 = %c66 to %c73 step %c1 iter_args(%arg6 = %c0) -> (index) {
              %token = async.execute {
                %50 = arith.addi %arg5, %c-33 : index
                %51 = memref.load %arg1[%c33, %50] : memref<?x40xf64>
                %52 = memref.load %arg1[%c33, %c31] : memref<?x40xf64>
                %53 = arith.addi %arg5, %c-33 : index
                %54 = memref.load %arg1[%c31, %53] : memref<?x40xf64>
                %55 = arith.mulf %52, %54 : f64
                %56 = arith.subf %51, %55 : f64
                %57 = arith.addi %arg5, %c-33 : index
                memref.store %56, %arg1[%c33, %57] : memref<?x40xf64>
                async.yield
              }
              %48 = async.add_to_group %token, %46 : !async.token
              %49 = arith.addi %arg6, %c1 : index
              scf.yield %49 : index
            }
            async.await_all %46
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
              %74 = async.create_group %c42 : !async.group
              %75 = scf.for %arg6 = %73 to %c32 step %c1 iter_args(%arg7 = %c0) -> (index) {
                %token = async.execute {
                  %78 = arith.muli %arg5, %c-1 : index
                  %79 = arith.addi %78, %arg6 : index
                  %80 = memref.load %arg1[%arg5, %79] : memref<?x40xf64>
                  %81 = memref.load %arg1[%arg5, %c0] : memref<?x40xf64>
                  %82 = arith.muli %arg5, %c-1 : index
                  %83 = arith.addi %82, %arg6 : index
                  %84 = memref.load %arg1[%c0, %83] : memref<?x40xf64>
                  %85 = arith.mulf %81, %84 : f64
                  %86 = arith.subf %80, %85 : f64
                  %87 = arith.muli %arg5, %c-1 : index
                  %88 = arith.addi %87, %arg6 : index
                  memref.store %86, %arg1[%arg5, %88] : memref<?x40xf64>
                  async.yield
                }
                %76 = async.add_to_group %token, %74 : !async.token
                %77 = arith.addi %arg7, %c1 : index
                scf.yield %77 : index
              }
              async.await_all %74
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
                %79 = async.create_group %c42 : !async.group
                %80 = scf.for %arg7 = %74 to %78 step %c1 iter_args(%arg8 = %c0) -> (index) {
                  %token = async.execute {
                    %83 = arith.muli %arg5, %c-1 : index
                    %84 = arith.addi %83, %arg7 : index
                    %85 = memref.load %arg1[%arg5, %84] : memref<?x40xf64>
                    %86 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                    %87 = arith.muli %arg5, %c-1 : index
                    %88 = arith.addi %87, %arg7 : index
                    %89 = memref.load %arg1[%arg6, %88] : memref<?x40xf64>
                    %90 = arith.mulf %86, %89 : f64
                    %91 = arith.subf %85, %90 : f64
                    %92 = arith.muli %arg5, %c-1 : index
                    %93 = arith.addi %92, %arg7 : index
                    memref.store %91, %arg1[%arg5, %93] : memref<?x40xf64>
                    async.yield
                  }
                  %81 = async.add_to_group %token, %79 : !async.token
                  %82 = arith.addi %arg8, %c1 : index
                  scf.yield %82 : index
                }
                async.await_all %79
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
              %94 = async.create_group %c42 : !async.group
              %95 = scf.for %arg6 = %89 to %93 step %c1 iter_args(%arg7 = %c0) -> (index) {
                %token = async.execute {
                  %98 = arith.muli %arg5, %c-1 : index
                  %99 = arith.addi %98, %arg6 : index
                  %100 = memref.load %arg1[%arg5, %99] : memref<?x40xf64>
                  %101 = arith.muli %arg5, %c32 : index
                  %102 = arith.muli %arg2, %c-1 : index
                  %103 = arith.addi %101, %102 : index
                  %104 = arith.addi %103, %c32 : index
                  %105 = memref.load %arg1[%arg5, %104] : memref<?x40xf64>
                  %106 = arith.muli %arg5, %c32 : index
                  %107 = arith.muli %arg2, %c-1 : index
                  %108 = arith.addi %106, %107 : index
                  %109 = arith.addi %108, %c32 : index
                  %110 = arith.muli %arg5, %c-1 : index
                  %111 = arith.addi %110, %arg6 : index
                  %112 = memref.load %arg1[%109, %111] : memref<?x40xf64>
                  %113 = arith.mulf %105, %112 : f64
                  %114 = arith.subf %100, %113 : f64
                  %115 = arith.muli %arg5, %c-1 : index
                  %116 = arith.addi %115, %arg6 : index
                  memref.store %114, %arg1[%arg5, %116] : memref<?x40xf64>
                  async.yield
                }
                %96 = async.add_to_group %token, %94 : !async.token
                %97 = arith.addi %arg7, %c1 : index
                scf.yield %97 : index
              }
              async.await_all %94
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
                %83 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %84 = arith.muli %arg5, %c-1 : index
                %85 = arith.addi %84, %arg7 : index
                %86 = memref.load %arg1[%arg5, %85] : memref<?x40xf64>
                %87 = arith.muli %arg5, %c-1 : index
                %88 = arith.addi %87, %arg7 : index
                %89 = memref.load %arg1[%88, %arg6] : memref<?x40xf64>
                %90 = arith.mulf %86, %89 : f64
                %91 = arith.subf %83, %90 : f64
                memref.store %91, %arg1[%arg5, %arg6] : memref<?x40xf64>
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
              %81 = async.create_group %c42 : !async.group
              %82 = scf.for %arg7 = %76 to %80 step %c1 iter_args(%arg8 = %c0) -> (index) {
                %token = async.execute {
                  %85 = arith.muli %arg5, %c-1 : index
                  %86 = arith.addi %85, %arg7 : index
                  %87 = memref.load %arg1[%arg5, %86] : memref<?x40xf64>
                  %88 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %89 = arith.muli %arg5, %c-1 : index
                  %90 = arith.addi %89, %arg7 : index
                  %91 = memref.load %arg1[%arg6, %90] : memref<?x40xf64>
                  %92 = arith.mulf %88, %91 : f64
                  %93 = arith.subf %87, %92 : f64
                  %94 = arith.muli %arg5, %c-1 : index
                  %95 = arith.addi %94, %arg7 : index
                  memref.store %93, %arg1[%arg5, %95] : memref<?x40xf64>
                  async.yield
                }
                %83 = async.add_to_group %token, %81 : !async.token
                %84 = arith.addi %arg8, %c1 : index
                scf.yield %84 : index
              }
              async.await_all %81
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
            %48 = async.create_group %c42 : !async.group
            %49 = scf.for %arg5 = %44 to %47 step %c1 iter_args(%arg6 = %c0) -> (index) {
              %token = async.execute {
                %52 = memref.load %arg1[%arg5, %c0] : memref<?x40xf64>
                %53 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
                %54 = arith.divf %52, %53 : f64
                memref.store %54, %arg1[%arg5, %c0] : memref<?x40xf64>
                %55 = arith.muli %arg2, %c32 : index
                %56 = arith.muli %arg5, %c-1 : index
                %57 = arith.addi %55, %56 : index
                %58 = arith.addi %57, %c32 : index
                scf.for %arg7 = %c1 to %58 step %c1 {
                  %64 = arith.addi %arg5, %arg7 : index
                  scf.for %arg8 = %arg5 to %64 step %c1 {
                    %68 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
                    %69 = arith.muli %arg5, %c-1 : index
                    %70 = arith.addi %69, %arg8 : index
                    %71 = memref.load %arg1[%arg5, %70] : memref<?x40xf64>
                    %72 = arith.muli %arg5, %c-1 : index
                    %73 = arith.addi %72, %arg8 : index
                    %74 = memref.load %arg1[%73, %arg7] : memref<?x40xf64>
                    %75 = arith.mulf %71, %74 : f64
                    %76 = arith.subf %68, %75 : f64
                    memref.store %76, %arg1[%arg5, %arg7] : memref<?x40xf64>
                  }
                  %65 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
                  %66 = memref.load %arg1[%arg7, %arg7] : memref<?x40xf64>
                  %67 = arith.divf %65, %66 : f64
                  memref.store %67, %arg1[%arg5, %arg7] : memref<?x40xf64>
                }
                %59 = arith.muli %arg2, %c32 : index
                %60 = arith.muli %arg5, %c-1 : index
                %61 = arith.addi %59, %60 : index
                %62 = arith.addi %61, %c32 : index
                %63 = arith.minsi %arg5, %c32 : index
                scf.for %arg7 = %62 to %63 step %c1 {
                  %64 = arith.muli %arg2, %c32 : index
                  %65 = arith.addi %64, %c32 : index
                  scf.for %arg8 = %arg5 to %65 step %c1 {
                    %66 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
                    %67 = arith.muli %arg5, %c-1 : index
                    %68 = arith.addi %67, %arg8 : index
                    %69 = memref.load %arg1[%arg5, %68] : memref<?x40xf64>
                    %70 = arith.muli %arg5, %c-1 : index
                    %71 = arith.addi %70, %arg8 : index
                    %72 = memref.load %arg1[%71, %arg7] : memref<?x40xf64>
                    %73 = arith.mulf %69, %72 : f64
                    %74 = arith.subf %66, %73 : f64
                    memref.store %74, %arg1[%arg5, %arg7] : memref<?x40xf64>
                  }
                }
                async.yield
              }
              %50 = async.add_to_group %token, %48 : !async.token
              %51 = arith.addi %arg6, %c1 : index
              scf.yield %51 : index
            }
            async.await_all %48
          }
        }
      }
    }
    return
  }
}

