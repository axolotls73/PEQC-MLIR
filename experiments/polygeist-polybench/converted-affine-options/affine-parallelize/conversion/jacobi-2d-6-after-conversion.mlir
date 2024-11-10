module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %c42 = arith.constant 42 : index
    %c-29 = arith.constant -29 : index
    %c-31 = arith.constant -31 : index
    %c-30 = arith.constant -30 : index
    %c59 = arith.constant 59 : index
    %c31 = arith.constant 31 : index
    %c30 = arith.constant 30 : index
    %c27 = arith.constant 27 : index
    %c28 = arith.constant 28 : index
    %c-2 = arith.constant -2 : index
    %c29 = arith.constant 29 : index
    %c32 = arith.constant 32 : index
    %c15 = arith.constant 15 : index
    %c20 = arith.constant 20 : index
    %c-14 = arith.constant -14 : index
    %c16 = arith.constant 16 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c3 step %c1 {
      %0 = arith.addi %arg4, %c-1 : index
      %1 = arith.maxsi %0, %c0 : index
      %2 = arith.addi %arg4, %c2 : index
      %3 = arith.minsi %2, %c3 : index
      scf.for %arg5 = %1 to %3 step %c1 {
        %4 = arith.muli %arg4, %c16 : index
        %5 = arith.addi %4, %c-14 : index
        %6 = arith.muli %arg5, %c16 : index
        %7 = arith.addi %6, %c-14 : index
        %8 = arith.maxsi %5, %c0 : index
        %9 = arith.maxsi %8, %7 : index
        %10 = arith.muli %arg4, %c16 : index
        %11 = arith.addi %10, %c15 : index
        %12 = arith.muli %arg5, %c16 : index
        %13 = arith.addi %12, %c15 : index
        %14 = arith.minsi %11, %c20 : index
        %15 = arith.minsi %14, %13 : index
        scf.for %arg6 = %9 to %15 step %c1 {
          %21 = arith.cmpi slt, %arg6, %c0 : index
          %22 = arith.subi %c-1, %arg6 : index
          %23 = arith.select %21, %22, %arg6 : index
          %24 = arith.divsi %23, %c16 : index
          %25 = arith.subi %c-1, %24 : index
          %26 = arith.select %21, %25, %24 : index
          %27 = arith.muli %arg4, %c-1 : index
          %28 = arith.addi %26, %27 : index
          %29 = arith.cmpi sge, %28, %c0 : index
          scf.if %29 {
            %51 = arith.muli %arg5, %c32 : index
            %52 = arith.muli %arg6, %c2 : index
            %53 = arith.addi %52, %c1 : index
            %54 = arith.maxsi %51, %53 : index
            %55 = arith.muli %arg5, %c32 : index
            %56 = arith.addi %55, %c32 : index
            %57 = arith.muli %arg6, %c2 : index
            %58 = arith.addi %57, %c29 : index
            %59 = arith.minsi %56, %58 : index
            %60 = async.create_group %c42 : !async.group
            %61 = scf.for %arg7 = %54 to %59 step %c1 iter_args(%arg8 = %c0) -> (index) {
              %token = async.execute {
                %64 = arith.muli %arg6, %c-2 : index
                %65 = arith.addi %64, %arg7 : index
                %66 = memref.load %arg2[%c1, %65] : memref<?x30xf64>
                %67 = arith.muli %arg6, %c-2 : index
                %68 = arith.addi %67, %arg7 : index
                %69 = arith.addi %68, %c-1 : index
                %70 = memref.load %arg2[%c1, %69] : memref<?x30xf64>
                %71 = arith.addf %66, %70 : f64
                %72 = arith.muli %arg6, %c-2 : index
                %73 = arith.addi %72, %arg7 : index
                %74 = arith.addi %73, %c1 : index
                %75 = memref.load %arg2[%c1, %74] : memref<?x30xf64>
                %76 = arith.addf %71, %75 : f64
                %77 = arith.muli %arg6, %c-2 : index
                %78 = arith.addi %77, %arg7 : index
                %79 = memref.load %arg2[%c2, %78] : memref<?x30xf64>
                %80 = arith.addf %76, %79 : f64
                %81 = arith.muli %arg6, %c-2 : index
                %82 = arith.addi %81, %arg7 : index
                %83 = memref.load %arg2[%c0, %82] : memref<?x30xf64>
                %84 = arith.addf %80, %83 : f64
                %85 = arith.mulf %84, %cst : f64
                %86 = arith.muli %arg6, %c-2 : index
                %87 = arith.addi %86, %arg7 : index
                memref.store %85, %arg3[%c1, %87] : memref<?x30xf64>
                async.yield
              }
              %62 = async.add_to_group %token, %60 : !async.token
              %63 = arith.addi %arg8, %c1 : index
              scf.yield %63 : index
            }
            async.await_all %60
          }
          %30 = arith.muli %arg4, %c32 : index
          %31 = arith.muli %arg6, %c2 : index
          %32 = arith.addi %31, %c2 : index
          %33 = arith.maxsi %30, %32 : index
          %34 = arith.muli %arg4, %c32 : index
          %35 = arith.addi %34, %c32 : index
          %36 = arith.muli %arg6, %c2 : index
          %37 = arith.addi %36, %c29 : index
          %38 = arith.minsi %35, %37 : index
          scf.for %arg7 = %33 to %38 step %c1 {
            %51 = arith.cmpi slt, %arg6, %c0 : index
            %52 = arith.subi %c-1, %arg6 : index
            %53 = arith.select %51, %52, %arg6 : index
            %54 = arith.divsi %53, %c16 : index
            %55 = arith.subi %c-1, %54 : index
            %56 = arith.select %51, %55, %54 : index
            %57 = arith.muli %arg5, %c-1 : index
            %58 = arith.addi %56, %57 : index
            %59 = arith.cmpi sge, %58, %c0 : index
            scf.if %59 {
              %81 = arith.muli %arg7, %c-2 : index
              %82 = arith.addi %81, %arg6 : index
              %83 = memref.load %arg2[%82, %c1] : memref<?x30xf64>
              %84 = arith.muli %arg7, %c-2 : index
              %85 = arith.addi %84, %arg6 : index
              %86 = memref.load %arg2[%85, %c0] : memref<?x30xf64>
              %87 = arith.addf %83, %86 : f64
              %88 = arith.muli %arg7, %c-2 : index
              %89 = arith.addi %88, %arg6 : index
              %90 = memref.load %arg2[%89, %c2] : memref<?x30xf64>
              %91 = arith.addf %87, %90 : f64
              %92 = arith.muli %arg7, %c-2 : index
              %93 = arith.addi %92, %arg6 : index
              %94 = arith.addi %93, %c1 : index
              %95 = memref.load %arg2[%94, %c1] : memref<?x30xf64>
              %96 = arith.addf %91, %95 : f64
              %97 = arith.muli %arg7, %c-2 : index
              %98 = arith.addi %97, %arg6 : index
              %99 = arith.addi %98, %c-1 : index
              %100 = memref.load %arg2[%99, %c1] : memref<?x30xf64>
              %101 = arith.addf %96, %100 : f64
              %102 = arith.mulf %101, %cst : f64
              %103 = arith.muli %arg7, %c-2 : index
              %104 = arith.addi %103, %arg6 : index
              memref.store %102, %arg3[%104, %c1] : memref<?x30xf64>
            }
            %60 = arith.muli %arg5, %c32 : index
            %61 = arith.muli %arg6, %c2 : index
            %62 = arith.addi %61, %c2 : index
            %63 = arith.maxsi %60, %62 : index
            %64 = arith.muli %arg5, %c32 : index
            %65 = arith.addi %64, %c32 : index
            %66 = arith.muli %arg6, %c2 : index
            %67 = arith.addi %66, %c29 : index
            %68 = arith.minsi %65, %67 : index
            scf.for %arg8 = %63 to %68 step %c1 {
              %81 = arith.muli %arg7, %c-2 : index
              %82 = arith.addi %81, %arg6 : index
              %83 = arith.muli %arg6, %c-2 : index
              %84 = arith.addi %83, %arg8 : index
              %85 = memref.load %arg2[%82, %84] : memref<?x30xf64>
              %86 = arith.muli %arg7, %c-2 : index
              %87 = arith.addi %86, %arg6 : index
              %88 = arith.muli %arg6, %c-2 : index
              %89 = arith.addi %88, %arg8 : index
              %90 = arith.addi %89, %c-1 : index
              %91 = memref.load %arg2[%87, %90] : memref<?x30xf64>
              %92 = arith.addf %85, %91 : f64
              %93 = arith.muli %arg7, %c-2 : index
              %94 = arith.addi %93, %arg6 : index
              %95 = arith.muli %arg6, %c-2 : index
              %96 = arith.addi %95, %arg8 : index
              %97 = arith.addi %96, %c1 : index
              %98 = memref.load %arg2[%94, %97] : memref<?x30xf64>
              %99 = arith.addf %92, %98 : f64
              %100 = arith.muli %arg7, %c-2 : index
              %101 = arith.addi %100, %arg6 : index
              %102 = arith.addi %101, %c1 : index
              %103 = arith.muli %arg6, %c-2 : index
              %104 = arith.addi %103, %arg8 : index
              %105 = memref.load %arg2[%102, %104] : memref<?x30xf64>
              %106 = arith.addf %99, %105 : f64
              %107 = arith.muli %arg7, %c-2 : index
              %108 = arith.addi %107, %arg6 : index
              %109 = arith.addi %108, %c-1 : index
              %110 = arith.muli %arg6, %c-2 : index
              %111 = arith.addi %110, %arg8 : index
              %112 = memref.load %arg2[%109, %111] : memref<?x30xf64>
              %113 = arith.addf %106, %112 : f64
              %114 = arith.mulf %113, %cst : f64
              %115 = arith.muli %arg7, %c-2 : index
              %116 = arith.addi %115, %arg6 : index
              %117 = arith.muli %arg6, %c-2 : index
              %118 = arith.addi %117, %arg8 : index
              memref.store %114, %arg3[%116, %118] : memref<?x30xf64>
              %119 = arith.muli %arg7, %c-2 : index
              %120 = arith.addi %119, %arg6 : index
              %121 = arith.addi %120, %c-1 : index
              %122 = arith.muli %arg6, %c-2 : index
              %123 = arith.addi %122, %arg8 : index
              %124 = arith.addi %123, %c-1 : index
              %125 = memref.load %arg3[%121, %124] : memref<?x30xf64>
              %126 = arith.muli %arg7, %c-2 : index
              %127 = arith.addi %126, %arg6 : index
              %128 = arith.addi %127, %c-1 : index
              %129 = arith.muli %arg6, %c-2 : index
              %130 = arith.addi %129, %arg8 : index
              %131 = arith.addi %130, %c-2 : index
              %132 = memref.load %arg3[%128, %131] : memref<?x30xf64>
              %133 = arith.addf %125, %132 : f64
              %134 = arith.muli %arg7, %c-2 : index
              %135 = arith.addi %134, %arg6 : index
              %136 = arith.addi %135, %c-1 : index
              %137 = arith.muli %arg6, %c-2 : index
              %138 = arith.addi %137, %arg8 : index
              %139 = memref.load %arg3[%136, %138] : memref<?x30xf64>
              %140 = arith.addf %133, %139 : f64
              %141 = arith.muli %arg7, %c-2 : index
              %142 = arith.addi %141, %arg6 : index
              %143 = arith.muli %arg6, %c-2 : index
              %144 = arith.addi %143, %arg8 : index
              %145 = arith.addi %144, %c-1 : index
              %146 = memref.load %arg3[%142, %145] : memref<?x30xf64>
              %147 = arith.addf %140, %146 : f64
              %148 = arith.muli %arg7, %c-2 : index
              %149 = arith.addi %148, %arg6 : index
              %150 = arith.addi %149, %c-2 : index
              %151 = arith.muli %arg6, %c-2 : index
              %152 = arith.addi %151, %arg8 : index
              %153 = arith.addi %152, %c-1 : index
              %154 = memref.load %arg3[%150, %153] : memref<?x30xf64>
              %155 = arith.addf %147, %154 : f64
              %156 = arith.mulf %155, %cst : f64
              %157 = arith.muli %arg7, %c-2 : index
              %158 = arith.addi %157, %arg6 : index
              %159 = arith.addi %158, %c-1 : index
              %160 = arith.muli %arg6, %c-2 : index
              %161 = arith.addi %160, %arg8 : index
              %162 = arith.addi %161, %c-1 : index
              memref.store %156, %arg2[%159, %162] : memref<?x30xf64>
            }
            %69 = arith.addi %arg6, %c-1 : index
            %70 = arith.cmpi sle, %69, %c0 : index
            %71 = arith.subi %c0, %69 : index
            %72 = arith.subi %69, %c1 : index
            %73 = arith.select %70, %71, %72 : index
            %74 = arith.divsi %73, %c16 : index
            %75 = arith.subi %c0, %74 : index
            %76 = arith.addi %74, %c1 : index
            %77 = arith.select %70, %75, %76 : index
            %78 = arith.muli %77, %c-1 : index
            %79 = arith.addi %arg5, %78 : index
            %80 = arith.cmpi sge, %79, %c0 : index
            scf.if %80 {
              %81 = arith.muli %arg7, %c-2 : index
              %82 = arith.addi %81, %arg6 : index
              %83 = arith.addi %82, %c-1 : index
              %84 = memref.load %arg3[%83, %c28] : memref<?x30xf64>
              %85 = arith.muli %arg7, %c-2 : index
              %86 = arith.addi %85, %arg6 : index
              %87 = arith.addi %86, %c-1 : index
              %88 = memref.load %arg3[%87, %c27] : memref<?x30xf64>
              %89 = arith.addf %84, %88 : f64
              %90 = arith.muli %arg7, %c-2 : index
              %91 = arith.addi %90, %arg6 : index
              %92 = arith.addi %91, %c-1 : index
              %93 = memref.load %arg3[%92, %c29] : memref<?x30xf64>
              %94 = arith.addf %89, %93 : f64
              %95 = arith.muli %arg7, %c-2 : index
              %96 = arith.addi %95, %arg6 : index
              %97 = memref.load %arg3[%96, %c28] : memref<?x30xf64>
              %98 = arith.addf %94, %97 : f64
              %99 = arith.muli %arg7, %c-2 : index
              %100 = arith.addi %99, %arg6 : index
              %101 = arith.addi %100, %c-2 : index
              %102 = memref.load %arg3[%101, %c28] : memref<?x30xf64>
              %103 = arith.addf %98, %102 : f64
              %104 = arith.mulf %103, %cst : f64
              %105 = arith.muli %arg7, %c-2 : index
              %106 = arith.addi %105, %arg6 : index
              %107 = arith.addi %106, %c-1 : index
              memref.store %104, %arg2[%107, %c28] : memref<?x30xf64>
            }
          }
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
          %49 = arith.addi %arg4, %48 : index
          %50 = arith.cmpi sge, %49, %c0 : index
          scf.if %50 {
            %51 = arith.muli %arg5, %c32 : index
            %52 = arith.muli %arg6, %c2 : index
            %53 = arith.addi %52, %c2 : index
            %54 = arith.maxsi %51, %53 : index
            %55 = arith.muli %arg5, %c32 : index
            %56 = arith.addi %55, %c32 : index
            %57 = arith.muli %arg6, %c2 : index
            %58 = arith.addi %57, %c30 : index
            %59 = arith.minsi %56, %58 : index
            %60 = async.create_group %c42 : !async.group
            %61 = scf.for %arg7 = %54 to %59 step %c1 iter_args(%arg8 = %c0) -> (index) {
              %token = async.execute {
                %64 = arith.muli %arg6, %c-2 : index
                %65 = arith.addi %64, %arg7 : index
                %66 = arith.addi %65, %c-1 : index
                %67 = memref.load %arg3[%c28, %66] : memref<?x30xf64>
                %68 = arith.muli %arg6, %c-2 : index
                %69 = arith.addi %68, %arg7 : index
                %70 = arith.addi %69, %c-2 : index
                %71 = memref.load %arg3[%c28, %70] : memref<?x30xf64>
                %72 = arith.addf %67, %71 : f64
                %73 = arith.muli %arg6, %c-2 : index
                %74 = arith.addi %73, %arg7 : index
                %75 = memref.load %arg3[%c28, %74] : memref<?x30xf64>
                %76 = arith.addf %72, %75 : f64
                %77 = arith.muli %arg6, %c-2 : index
                %78 = arith.addi %77, %arg7 : index
                %79 = arith.addi %78, %c-1 : index
                %80 = memref.load %arg3[%c29, %79] : memref<?x30xf64>
                %81 = arith.addf %76, %80 : f64
                %82 = arith.muli %arg6, %c-2 : index
                %83 = arith.addi %82, %arg7 : index
                %84 = arith.addi %83, %c-1 : index
                %85 = memref.load %arg3[%c27, %84] : memref<?x30xf64>
                %86 = arith.addf %81, %85 : f64
                %87 = arith.mulf %86, %cst : f64
                %88 = arith.muli %arg6, %c-2 : index
                %89 = arith.addi %88, %arg7 : index
                %90 = arith.addi %89, %c-1 : index
                memref.store %87, %arg2[%c28, %90] : memref<?x30xf64>
                async.yield
              }
              %62 = async.add_to_group %token, %60 : !async.token
              %63 = arith.addi %arg8, %c1 : index
              scf.yield %63 : index
            }
            async.await_all %60
          }
        }
        %16 = arith.muli %arg5, %c-1 : index
        %17 = arith.muli %arg4, %c-1 : index
        %18 = arith.addi %16, %17 : index
        %19 = arith.addi %18, %c1 : index
        %20 = arith.cmpi sge, %19, %c0 : index
        scf.if %20 {
          %21 = arith.muli %arg4, %c32 : index
          %22 = arith.maxsi %21, %c31 : index
          %23 = arith.muli %arg4, %c32 : index
          %24 = arith.addi %23, %c32 : index
          %25 = arith.minsi %24, %c59 : index
          %26 = async.create_group %c42 : !async.group
          %27 = scf.for %arg6 = %22 to %25 step %c1 iter_args(%arg7 = %c0) -> (index) {
            %token = async.execute {
              %30 = arith.muli %arg5, %c32 : index
              %31 = arith.maxsi %30, %c31 : index
              %32 = arith.muli %arg5, %c32 : index
              %33 = arith.addi %32, %c32 : index
              %34 = arith.minsi %33, %c59 : index
              scf.for %arg8 = %31 to %34 step %c1 {
                %35 = arith.addi %arg6, %c-30 : index
                %36 = arith.addi %arg8, %c-30 : index
                %37 = memref.load %arg2[%35, %36] : memref<?x30xf64>
                %38 = arith.addi %arg6, %c-30 : index
                %39 = arith.addi %arg8, %c-31 : index
                %40 = memref.load %arg2[%38, %39] : memref<?x30xf64>
                %41 = arith.addf %37, %40 : f64
                %42 = arith.addi %arg6, %c-30 : index
                %43 = arith.addi %arg8, %c-29 : index
                %44 = memref.load %arg2[%42, %43] : memref<?x30xf64>
                %45 = arith.addf %41, %44 : f64
                %46 = arith.addi %arg6, %c-29 : index
                %47 = arith.addi %arg8, %c-30 : index
                %48 = memref.load %arg2[%46, %47] : memref<?x30xf64>
                %49 = arith.addf %45, %48 : f64
                %50 = arith.addi %arg6, %c-31 : index
                %51 = arith.addi %arg8, %c-30 : index
                %52 = memref.load %arg2[%50, %51] : memref<?x30xf64>
                %53 = arith.addf %49, %52 : f64
                %54 = arith.mulf %53, %cst : f64
                %55 = arith.addi %arg6, %c-30 : index
                %56 = arith.addi %arg8, %c-30 : index
                memref.store %54, %arg3[%55, %56] : memref<?x30xf64>
              }
              async.yield
            }
            %28 = async.add_to_group %token, %26 : !async.token
            %29 = arith.addi %arg7, %c1 : index
            scf.yield %29 : index
          }
          async.await_all %26
        }
      }
    }
    return
  }
}

