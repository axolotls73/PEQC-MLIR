module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c40 = arith.constant 40 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c10 step %c1 {
      %4 = arith.muli %arg12, %c4 : index
      scf.for %arg13 = %c0 to %c10 step %c1 {
        %5 = arith.muli %arg13, %c4 : index
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %6 = arith.muli %arg14, %c4 : index
          %7 = arith.addi %4, %6 : index
          %8 = memref.load %arg4[%7] : memref<?xf64>
          %9 = memref.load %arg6[%7] : memref<?xf64>
          %10 = memref.load %arg4[%7] : memref<?xf64>
          %11 = memref.load %arg6[%7] : memref<?xf64>
          %12 = memref.load %arg4[%7] : memref<?xf64>
          %13 = memref.load %arg6[%7] : memref<?xf64>
          %14 = memref.load %arg4[%7] : memref<?xf64>
          %15 = memref.load %arg6[%7] : memref<?xf64>
          %16 = arith.addi %7, %c1 : index
          %17 = memref.load %arg4[%16] : memref<?xf64>
          %18 = memref.load %arg6[%16] : memref<?xf64>
          %19 = memref.load %arg4[%16] : memref<?xf64>
          %20 = memref.load %arg6[%16] : memref<?xf64>
          %21 = memref.load %arg4[%16] : memref<?xf64>
          %22 = memref.load %arg6[%16] : memref<?xf64>
          %23 = memref.load %arg4[%16] : memref<?xf64>
          %24 = memref.load %arg6[%16] : memref<?xf64>
          %25 = arith.addi %7, %c2 : index
          %26 = memref.load %arg4[%25] : memref<?xf64>
          %27 = memref.load %arg6[%25] : memref<?xf64>
          %28 = memref.load %arg4[%25] : memref<?xf64>
          %29 = memref.load %arg6[%25] : memref<?xf64>
          %30 = memref.load %arg4[%25] : memref<?xf64>
          %31 = memref.load %arg6[%25] : memref<?xf64>
          %32 = memref.load %arg4[%25] : memref<?xf64>
          %33 = memref.load %arg6[%25] : memref<?xf64>
          %34 = arith.addi %7, %c3 : index
          %35 = memref.load %arg4[%34] : memref<?xf64>
          %36 = memref.load %arg6[%34] : memref<?xf64>
          %37 = memref.load %arg4[%34] : memref<?xf64>
          %38 = memref.load %arg6[%34] : memref<?xf64>
          %39 = memref.load %arg4[%34] : memref<?xf64>
          %40 = memref.load %arg6[%34] : memref<?xf64>
          %41 = memref.load %arg4[%34] : memref<?xf64>
          %42 = memref.load %arg6[%34] : memref<?xf64>
          scf.for %arg15 = %c0 to %c1 step %c1 {
            %43 = arith.muli %arg15, %c4 : index
            %44 = arith.addi %5, %43 : index
            %45 = memref.load %arg3[%7, %44] : memref<?x40xf64>
            %46 = memref.load %arg5[%44] : memref<?xf64>
            %47 = arith.mulf %8, %46 : f64
            %48 = arith.addf %45, %47 : f64
            %49 = memref.load %arg7[%44] : memref<?xf64>
            %50 = arith.mulf %9, %49 : f64
            %51 = arith.addf %48, %50 : f64
            memref.store %51, %arg3[%7, %44] : memref<?x40xf64>
            %52 = arith.addi %44, %c1 : index
            %53 = memref.load %arg3[%7, %52] : memref<?x40xf64>
            %54 = memref.load %arg5[%52] : memref<?xf64>
            %55 = arith.mulf %10, %54 : f64
            %56 = arith.addf %53, %55 : f64
            %57 = memref.load %arg7[%52] : memref<?xf64>
            %58 = arith.mulf %11, %57 : f64
            %59 = arith.addf %56, %58 : f64
            memref.store %59, %arg3[%7, %52] : memref<?x40xf64>
            %60 = arith.addi %44, %c2 : index
            %61 = memref.load %arg3[%7, %60] : memref<?x40xf64>
            %62 = memref.load %arg5[%60] : memref<?xf64>
            %63 = arith.mulf %12, %62 : f64
            %64 = arith.addf %61, %63 : f64
            %65 = memref.load %arg7[%60] : memref<?xf64>
            %66 = arith.mulf %13, %65 : f64
            %67 = arith.addf %64, %66 : f64
            memref.store %67, %arg3[%7, %60] : memref<?x40xf64>
            %68 = arith.addi %44, %c3 : index
            %69 = memref.load %arg3[%7, %68] : memref<?x40xf64>
            %70 = memref.load %arg5[%68] : memref<?xf64>
            %71 = arith.mulf %14, %70 : f64
            %72 = arith.addf %69, %71 : f64
            %73 = memref.load %arg7[%68] : memref<?xf64>
            %74 = arith.mulf %15, %73 : f64
            %75 = arith.addf %72, %74 : f64
            memref.store %75, %arg3[%7, %68] : memref<?x40xf64>
            %76 = memref.load %arg3[%16, %44] : memref<?x40xf64>
            %77 = memref.load %arg5[%44] : memref<?xf64>
            %78 = arith.mulf %17, %77 : f64
            %79 = arith.addf %76, %78 : f64
            %80 = memref.load %arg7[%44] : memref<?xf64>
            %81 = arith.mulf %18, %80 : f64
            %82 = arith.addf %79, %81 : f64
            memref.store %82, %arg3[%16, %44] : memref<?x40xf64>
            %83 = arith.addi %44, %c1 : index
            %84 = memref.load %arg3[%16, %83] : memref<?x40xf64>
            %85 = memref.load %arg5[%83] : memref<?xf64>
            %86 = arith.mulf %19, %85 : f64
            %87 = arith.addf %84, %86 : f64
            %88 = memref.load %arg7[%83] : memref<?xf64>
            %89 = arith.mulf %20, %88 : f64
            %90 = arith.addf %87, %89 : f64
            memref.store %90, %arg3[%16, %83] : memref<?x40xf64>
            %91 = arith.addi %44, %c2 : index
            %92 = memref.load %arg3[%16, %91] : memref<?x40xf64>
            %93 = memref.load %arg5[%91] : memref<?xf64>
            %94 = arith.mulf %21, %93 : f64
            %95 = arith.addf %92, %94 : f64
            %96 = memref.load %arg7[%91] : memref<?xf64>
            %97 = arith.mulf %22, %96 : f64
            %98 = arith.addf %95, %97 : f64
            memref.store %98, %arg3[%16, %91] : memref<?x40xf64>
            %99 = arith.addi %44, %c3 : index
            %100 = memref.load %arg3[%16, %99] : memref<?x40xf64>
            %101 = memref.load %arg5[%99] : memref<?xf64>
            %102 = arith.mulf %23, %101 : f64
            %103 = arith.addf %100, %102 : f64
            %104 = memref.load %arg7[%99] : memref<?xf64>
            %105 = arith.mulf %24, %104 : f64
            %106 = arith.addf %103, %105 : f64
            memref.store %106, %arg3[%16, %99] : memref<?x40xf64>
            %107 = memref.load %arg3[%25, %44] : memref<?x40xf64>
            %108 = memref.load %arg5[%44] : memref<?xf64>
            %109 = arith.mulf %26, %108 : f64
            %110 = arith.addf %107, %109 : f64
            %111 = memref.load %arg7[%44] : memref<?xf64>
            %112 = arith.mulf %27, %111 : f64
            %113 = arith.addf %110, %112 : f64
            memref.store %113, %arg3[%25, %44] : memref<?x40xf64>
            %114 = arith.addi %44, %c1 : index
            %115 = memref.load %arg3[%25, %114] : memref<?x40xf64>
            %116 = memref.load %arg5[%114] : memref<?xf64>
            %117 = arith.mulf %28, %116 : f64
            %118 = arith.addf %115, %117 : f64
            %119 = memref.load %arg7[%114] : memref<?xf64>
            %120 = arith.mulf %29, %119 : f64
            %121 = arith.addf %118, %120 : f64
            memref.store %121, %arg3[%25, %114] : memref<?x40xf64>
            %122 = arith.addi %44, %c2 : index
            %123 = memref.load %arg3[%25, %122] : memref<?x40xf64>
            %124 = memref.load %arg5[%122] : memref<?xf64>
            %125 = arith.mulf %30, %124 : f64
            %126 = arith.addf %123, %125 : f64
            %127 = memref.load %arg7[%122] : memref<?xf64>
            %128 = arith.mulf %31, %127 : f64
            %129 = arith.addf %126, %128 : f64
            memref.store %129, %arg3[%25, %122] : memref<?x40xf64>
            %130 = arith.addi %44, %c3 : index
            %131 = memref.load %arg3[%25, %130] : memref<?x40xf64>
            %132 = memref.load %arg5[%130] : memref<?xf64>
            %133 = arith.mulf %32, %132 : f64
            %134 = arith.addf %131, %133 : f64
            %135 = memref.load %arg7[%130] : memref<?xf64>
            %136 = arith.mulf %33, %135 : f64
            %137 = arith.addf %134, %136 : f64
            memref.store %137, %arg3[%25, %130] : memref<?x40xf64>
            %138 = memref.load %arg3[%34, %44] : memref<?x40xf64>
            %139 = memref.load %arg5[%44] : memref<?xf64>
            %140 = arith.mulf %35, %139 : f64
            %141 = arith.addf %138, %140 : f64
            %142 = memref.load %arg7[%44] : memref<?xf64>
            %143 = arith.mulf %36, %142 : f64
            %144 = arith.addf %141, %143 : f64
            memref.store %144, %arg3[%34, %44] : memref<?x40xf64>
            %145 = arith.addi %44, %c1 : index
            %146 = memref.load %arg3[%34, %145] : memref<?x40xf64>
            %147 = memref.load %arg5[%145] : memref<?xf64>
            %148 = arith.mulf %37, %147 : f64
            %149 = arith.addf %146, %148 : f64
            %150 = memref.load %arg7[%145] : memref<?xf64>
            %151 = arith.mulf %38, %150 : f64
            %152 = arith.addf %149, %151 : f64
            memref.store %152, %arg3[%34, %145] : memref<?x40xf64>
            %153 = arith.addi %44, %c2 : index
            %154 = memref.load %arg3[%34, %153] : memref<?x40xf64>
            %155 = memref.load %arg5[%153] : memref<?xf64>
            %156 = arith.mulf %39, %155 : f64
            %157 = arith.addf %154, %156 : f64
            %158 = memref.load %arg7[%153] : memref<?xf64>
            %159 = arith.mulf %40, %158 : f64
            %160 = arith.addf %157, %159 : f64
            memref.store %160, %arg3[%34, %153] : memref<?x40xf64>
            %161 = arith.addi %44, %c3 : index
            %162 = memref.load %arg3[%34, %161] : memref<?x40xf64>
            %163 = memref.load %arg5[%161] : memref<?xf64>
            %164 = arith.mulf %41, %163 : f64
            %165 = arith.addf %162, %164 : f64
            %166 = memref.load %arg7[%161] : memref<?xf64>
            %167 = arith.mulf %42, %166 : f64
            %168 = arith.addf %165, %167 : f64
            memref.store %168, %arg3[%34, %161] : memref<?x40xf64>
          }
        }
      }
    }
    %0 = async.create_group %c40 : !async.group
    %1 = scf.for %arg12 = %c0 to %c40 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c10 step %c1 {
          %6 = arith.muli %arg14, %c4 : index
          scf.for %arg15 = %c0 to %c1 step %c1 {
            %7 = arith.addi %arg12, %arg15 : index
            scf.for %arg16 = %c0 to %c1 step %c1 {
              %8 = arith.muli %arg16, %c4 : index
              %9 = arith.addi %6, %8 : index
              %10 = memref.load %arg9[%7] : memref<?xf64>
              %11 = memref.load %arg3[%9, %7] : memref<?x40xf64>
              %12 = arith.mulf %arg2, %11 : f64
              %13 = memref.load %arg10[%9] : memref<?xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %10, %14 : f64
              memref.store %15, %arg9[%7] : memref<?xf64>
              %16 = arith.addi %9, %c1 : index
              %17 = memref.load %arg9[%7] : memref<?xf64>
              %18 = memref.load %arg3[%16, %7] : memref<?x40xf64>
              %19 = arith.mulf %arg2, %18 : f64
              %20 = memref.load %arg10[%16] : memref<?xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = arith.addf %17, %21 : f64
              memref.store %22, %arg9[%7] : memref<?xf64>
              %23 = arith.addi %9, %c2 : index
              %24 = memref.load %arg9[%7] : memref<?xf64>
              %25 = memref.load %arg3[%23, %7] : memref<?x40xf64>
              %26 = arith.mulf %arg2, %25 : f64
              %27 = memref.load %arg10[%23] : memref<?xf64>
              %28 = arith.mulf %26, %27 : f64
              %29 = arith.addf %24, %28 : f64
              memref.store %29, %arg9[%7] : memref<?xf64>
              %30 = arith.addi %9, %c3 : index
              %31 = memref.load %arg9[%7] : memref<?xf64>
              %32 = memref.load %arg3[%30, %7] : memref<?x40xf64>
              %33 = arith.mulf %arg2, %32 : f64
              %34 = memref.load %arg10[%30] : memref<?xf64>
              %35 = arith.mulf %33, %34 : f64
              %36 = arith.addf %31, %35 : f64
              memref.store %36, %arg9[%7] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg13, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    scf.for %arg12 = %c0 to %c10 step %c1 {
      %4 = arith.muli %arg12, %c4 : index
      scf.for %arg13 = %c0 to %c1 step %c1 {
        %5 = arith.muli %arg13, %c4 : index
        %6 = arith.addi %4, %5 : index
        %7 = memref.load %arg9[%6] : memref<?xf64>
        %8 = memref.load %arg11[%6] : memref<?xf64>
        %9 = arith.addf %7, %8 : f64
        memref.store %9, %arg9[%6] : memref<?xf64>
        %10 = arith.addi %6, %c1 : index
        %11 = memref.load %arg9[%10] : memref<?xf64>
        %12 = memref.load %arg11[%10] : memref<?xf64>
        %13 = arith.addf %11, %12 : f64
        memref.store %13, %arg9[%10] : memref<?xf64>
        %14 = arith.addi %6, %c2 : index
        %15 = memref.load %arg9[%14] : memref<?xf64>
        %16 = memref.load %arg11[%14] : memref<?xf64>
        %17 = arith.addf %15, %16 : f64
        memref.store %17, %arg9[%14] : memref<?xf64>
        %18 = arith.addi %6, %c3 : index
        %19 = memref.load %arg9[%18] : memref<?xf64>
        %20 = memref.load %arg11[%18] : memref<?xf64>
        %21 = arith.addf %19, %20 : f64
        memref.store %21, %arg9[%18] : memref<?xf64>
      }
    }
    %2 = async.create_group %c40 : !async.group
    %3 = scf.for %arg12 = %c0 to %c40 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c10 step %c1 {
          %6 = arith.muli %arg14, %c4 : index
          scf.for %arg15 = %c0 to %c1 step %c1 {
            %7 = arith.addi %arg12, %arg15 : index
            scf.for %arg16 = %c0 to %c1 step %c1 {
              %8 = arith.muli %arg16, %c4 : index
              %9 = arith.addi %6, %8 : index
              %10 = memref.load %arg8[%7] : memref<?xf64>
              %11 = memref.load %arg3[%7, %9] : memref<?x40xf64>
              %12 = arith.mulf %arg1, %11 : f64
              %13 = memref.load %arg9[%9] : memref<?xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %10, %14 : f64
              memref.store %15, %arg8[%7] : memref<?xf64>
              %16 = arith.addi %9, %c1 : index
              %17 = memref.load %arg8[%7] : memref<?xf64>
              %18 = memref.load %arg3[%7, %16] : memref<?x40xf64>
              %19 = arith.mulf %arg1, %18 : f64
              %20 = memref.load %arg9[%16] : memref<?xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = arith.addf %17, %21 : f64
              memref.store %22, %arg8[%7] : memref<?xf64>
              %23 = arith.addi %9, %c2 : index
              %24 = memref.load %arg8[%7] : memref<?xf64>
              %25 = memref.load %arg3[%7, %23] : memref<?x40xf64>
              %26 = arith.mulf %arg1, %25 : f64
              %27 = memref.load %arg9[%23] : memref<?xf64>
              %28 = arith.mulf %26, %27 : f64
              %29 = arith.addf %24, %28 : f64
              memref.store %29, %arg8[%7] : memref<?xf64>
              %30 = arith.addi %9, %c3 : index
              %31 = memref.load %arg8[%7] : memref<?xf64>
              %32 = memref.load %arg3[%7, %30] : memref<?x40xf64>
              %33 = arith.mulf %arg1, %32 : f64
              %34 = memref.load %arg9[%30] : memref<?xf64>
              %35 = arith.mulf %33, %34 : f64
              %36 = arith.addf %31, %35 : f64
              memref.store %36, %arg8[%7] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg13, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

