module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c32 = arith.constant 32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c10 = arith.constant 10 : index
    %c128 = arith.constant 128 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %10 = arith.muli %arg12, %c128 : index
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %11 = arith.muli %arg14, %c128 : index
          scf.for %arg15 = %c0 to %c10 step %c1 {
            %12 = arith.muli %arg15, %c4 : index
            %13 = arith.addi %10, %12 : index
            %14 = memref.load %arg4[%13] : memref<?xf64>
            %15 = memref.load %arg6[%13] : memref<?xf64>
            %16 = memref.load %arg4[%13] : memref<?xf64>
            %17 = memref.load %arg6[%13] : memref<?xf64>
            %18 = memref.load %arg4[%13] : memref<?xf64>
            %19 = memref.load %arg6[%13] : memref<?xf64>
            %20 = memref.load %arg4[%13] : memref<?xf64>
            %21 = memref.load %arg6[%13] : memref<?xf64>
            %22 = arith.addi %13, %c1 : index
            %23 = memref.load %arg4[%22] : memref<?xf64>
            %24 = memref.load %arg6[%22] : memref<?xf64>
            %25 = memref.load %arg4[%22] : memref<?xf64>
            %26 = memref.load %arg6[%22] : memref<?xf64>
            %27 = memref.load %arg4[%22] : memref<?xf64>
            %28 = memref.load %arg6[%22] : memref<?xf64>
            %29 = memref.load %arg4[%22] : memref<?xf64>
            %30 = memref.load %arg6[%22] : memref<?xf64>
            %31 = arith.addi %13, %c2 : index
            %32 = memref.load %arg4[%31] : memref<?xf64>
            %33 = memref.load %arg6[%31] : memref<?xf64>
            %34 = memref.load %arg4[%31] : memref<?xf64>
            %35 = memref.load %arg6[%31] : memref<?xf64>
            %36 = memref.load %arg4[%31] : memref<?xf64>
            %37 = memref.load %arg6[%31] : memref<?xf64>
            %38 = memref.load %arg4[%31] : memref<?xf64>
            %39 = memref.load %arg6[%31] : memref<?xf64>
            %40 = arith.addi %13, %c3 : index
            %41 = memref.load %arg4[%40] : memref<?xf64>
            %42 = memref.load %arg6[%40] : memref<?xf64>
            %43 = memref.load %arg4[%40] : memref<?xf64>
            %44 = memref.load %arg6[%40] : memref<?xf64>
            %45 = memref.load %arg4[%40] : memref<?xf64>
            %46 = memref.load %arg6[%40] : memref<?xf64>
            %47 = memref.load %arg4[%40] : memref<?xf64>
            %48 = memref.load %arg6[%40] : memref<?xf64>
            scf.for %arg16 = %c0 to %c10 step %c1 {
              %49 = arith.muli %arg16, %c4 : index
              %50 = arith.addi %11, %49 : index
              %51 = memref.load %arg3[%13, %50] : memref<?x40xf64>
              %52 = memref.load %arg5[%50] : memref<?xf64>
              %53 = arith.mulf %14, %52 : f64
              %54 = arith.addf %51, %53 : f64
              %55 = memref.load %arg7[%50] : memref<?xf64>
              %56 = arith.mulf %15, %55 : f64
              %57 = arith.addf %54, %56 : f64
              memref.store %57, %arg3[%13, %50] : memref<?x40xf64>
              %58 = arith.addi %50, %c1 : index
              %59 = memref.load %arg3[%13, %58] : memref<?x40xf64>
              %60 = memref.load %arg5[%58] : memref<?xf64>
              %61 = arith.mulf %16, %60 : f64
              %62 = arith.addf %59, %61 : f64
              %63 = memref.load %arg7[%58] : memref<?xf64>
              %64 = arith.mulf %17, %63 : f64
              %65 = arith.addf %62, %64 : f64
              memref.store %65, %arg3[%13, %58] : memref<?x40xf64>
              %66 = arith.addi %50, %c2 : index
              %67 = memref.load %arg3[%13, %66] : memref<?x40xf64>
              %68 = memref.load %arg5[%66] : memref<?xf64>
              %69 = arith.mulf %18, %68 : f64
              %70 = arith.addf %67, %69 : f64
              %71 = memref.load %arg7[%66] : memref<?xf64>
              %72 = arith.mulf %19, %71 : f64
              %73 = arith.addf %70, %72 : f64
              memref.store %73, %arg3[%13, %66] : memref<?x40xf64>
              %74 = arith.addi %50, %c3 : index
              %75 = memref.load %arg3[%13, %74] : memref<?x40xf64>
              %76 = memref.load %arg5[%74] : memref<?xf64>
              %77 = arith.mulf %20, %76 : f64
              %78 = arith.addf %75, %77 : f64
              %79 = memref.load %arg7[%74] : memref<?xf64>
              %80 = arith.mulf %21, %79 : f64
              %81 = arith.addf %78, %80 : f64
              memref.store %81, %arg3[%13, %74] : memref<?x40xf64>
              %82 = memref.load %arg3[%22, %50] : memref<?x40xf64>
              %83 = memref.load %arg5[%50] : memref<?xf64>
              %84 = arith.mulf %23, %83 : f64
              %85 = arith.addf %82, %84 : f64
              %86 = memref.load %arg7[%50] : memref<?xf64>
              %87 = arith.mulf %24, %86 : f64
              %88 = arith.addf %85, %87 : f64
              memref.store %88, %arg3[%22, %50] : memref<?x40xf64>
              %89 = arith.addi %50, %c1 : index
              %90 = memref.load %arg3[%22, %89] : memref<?x40xf64>
              %91 = memref.load %arg5[%89] : memref<?xf64>
              %92 = arith.mulf %25, %91 : f64
              %93 = arith.addf %90, %92 : f64
              %94 = memref.load %arg7[%89] : memref<?xf64>
              %95 = arith.mulf %26, %94 : f64
              %96 = arith.addf %93, %95 : f64
              memref.store %96, %arg3[%22, %89] : memref<?x40xf64>
              %97 = arith.addi %50, %c2 : index
              %98 = memref.load %arg3[%22, %97] : memref<?x40xf64>
              %99 = memref.load %arg5[%97] : memref<?xf64>
              %100 = arith.mulf %27, %99 : f64
              %101 = arith.addf %98, %100 : f64
              %102 = memref.load %arg7[%97] : memref<?xf64>
              %103 = arith.mulf %28, %102 : f64
              %104 = arith.addf %101, %103 : f64
              memref.store %104, %arg3[%22, %97] : memref<?x40xf64>
              %105 = arith.addi %50, %c3 : index
              %106 = memref.load %arg3[%22, %105] : memref<?x40xf64>
              %107 = memref.load %arg5[%105] : memref<?xf64>
              %108 = arith.mulf %29, %107 : f64
              %109 = arith.addf %106, %108 : f64
              %110 = memref.load %arg7[%105] : memref<?xf64>
              %111 = arith.mulf %30, %110 : f64
              %112 = arith.addf %109, %111 : f64
              memref.store %112, %arg3[%22, %105] : memref<?x40xf64>
              %113 = memref.load %arg3[%31, %50] : memref<?x40xf64>
              %114 = memref.load %arg5[%50] : memref<?xf64>
              %115 = arith.mulf %32, %114 : f64
              %116 = arith.addf %113, %115 : f64
              %117 = memref.load %arg7[%50] : memref<?xf64>
              %118 = arith.mulf %33, %117 : f64
              %119 = arith.addf %116, %118 : f64
              memref.store %119, %arg3[%31, %50] : memref<?x40xf64>
              %120 = arith.addi %50, %c1 : index
              %121 = memref.load %arg3[%31, %120] : memref<?x40xf64>
              %122 = memref.load %arg5[%120] : memref<?xf64>
              %123 = arith.mulf %34, %122 : f64
              %124 = arith.addf %121, %123 : f64
              %125 = memref.load %arg7[%120] : memref<?xf64>
              %126 = arith.mulf %35, %125 : f64
              %127 = arith.addf %124, %126 : f64
              memref.store %127, %arg3[%31, %120] : memref<?x40xf64>
              %128 = arith.addi %50, %c2 : index
              %129 = memref.load %arg3[%31, %128] : memref<?x40xf64>
              %130 = memref.load %arg5[%128] : memref<?xf64>
              %131 = arith.mulf %36, %130 : f64
              %132 = arith.addf %129, %131 : f64
              %133 = memref.load %arg7[%128] : memref<?xf64>
              %134 = arith.mulf %37, %133 : f64
              %135 = arith.addf %132, %134 : f64
              memref.store %135, %arg3[%31, %128] : memref<?x40xf64>
              %136 = arith.addi %50, %c3 : index
              %137 = memref.load %arg3[%31, %136] : memref<?x40xf64>
              %138 = memref.load %arg5[%136] : memref<?xf64>
              %139 = arith.mulf %38, %138 : f64
              %140 = arith.addf %137, %139 : f64
              %141 = memref.load %arg7[%136] : memref<?xf64>
              %142 = arith.mulf %39, %141 : f64
              %143 = arith.addf %140, %142 : f64
              memref.store %143, %arg3[%31, %136] : memref<?x40xf64>
              %144 = memref.load %arg3[%40, %50] : memref<?x40xf64>
              %145 = memref.load %arg5[%50] : memref<?xf64>
              %146 = arith.mulf %41, %145 : f64
              %147 = arith.addf %144, %146 : f64
              %148 = memref.load %arg7[%50] : memref<?xf64>
              %149 = arith.mulf %42, %148 : f64
              %150 = arith.addf %147, %149 : f64
              memref.store %150, %arg3[%40, %50] : memref<?x40xf64>
              %151 = arith.addi %50, %c1 : index
              %152 = memref.load %arg3[%40, %151] : memref<?x40xf64>
              %153 = memref.load %arg5[%151] : memref<?xf64>
              %154 = arith.mulf %43, %153 : f64
              %155 = arith.addf %152, %154 : f64
              %156 = memref.load %arg7[%151] : memref<?xf64>
              %157 = arith.mulf %44, %156 : f64
              %158 = arith.addf %155, %157 : f64
              memref.store %158, %arg3[%40, %151] : memref<?x40xf64>
              %159 = arith.addi %50, %c2 : index
              %160 = memref.load %arg3[%40, %159] : memref<?x40xf64>
              %161 = memref.load %arg5[%159] : memref<?xf64>
              %162 = arith.mulf %45, %161 : f64
              %163 = arith.addf %160, %162 : f64
              %164 = memref.load %arg7[%159] : memref<?xf64>
              %165 = arith.mulf %46, %164 : f64
              %166 = arith.addf %163, %165 : f64
              memref.store %166, %arg3[%40, %159] : memref<?x40xf64>
              %167 = arith.addi %50, %c3 : index
              %168 = memref.load %arg3[%40, %167] : memref<?x40xf64>
              %169 = memref.load %arg5[%167] : memref<?xf64>
              %170 = arith.mulf %47, %169 : f64
              %171 = arith.addf %168, %170 : f64
              %172 = memref.load %arg7[%167] : memref<?xf64>
              %173 = arith.mulf %48, %172 : f64
              %174 = arith.addf %171, %173 : f64
              memref.store %174, %arg3[%40, %167] : memref<?x40xf64>
            }
          }
        }
        async.yield
      }
      %8 = async.add_to_group %token, %0 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %0
    %2 = async.create_group %c2 : !async.group
    %3 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %10 = arith.muli %arg12, %c32 : index
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %11 = arith.muli %arg14, %c128 : index
          %12 = arith.muli %arg12, %c-32 : index
          %13 = arith.addi %12, %c40 : index
          %14 = arith.minsi %13, %c32 : index
          scf.for %arg15 = %c0 to %14 step %c1 {
            %15 = arith.addi %10, %arg15 : index
            scf.for %arg16 = %c0 to %c10 step %c1 {
              %16 = arith.muli %arg16, %c4 : index
              %17 = arith.addi %11, %16 : index
              %18 = memref.load %arg9[%15] : memref<?xf64>
              %19 = memref.load %arg3[%17, %15] : memref<?x40xf64>
              %20 = arith.mulf %arg2, %19 : f64
              %21 = memref.load %arg10[%17] : memref<?xf64>
              %22 = arith.mulf %20, %21 : f64
              %23 = arith.addf %18, %22 : f64
              memref.store %23, %arg9[%15] : memref<?xf64>
              %24 = arith.addi %17, %c1 : index
              %25 = memref.load %arg9[%15] : memref<?xf64>
              %26 = memref.load %arg3[%24, %15] : memref<?x40xf64>
              %27 = arith.mulf %arg2, %26 : f64
              %28 = memref.load %arg10[%24] : memref<?xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = arith.addf %25, %29 : f64
              memref.store %30, %arg9[%15] : memref<?xf64>
              %31 = arith.addi %17, %c2 : index
              %32 = memref.load %arg9[%15] : memref<?xf64>
              %33 = memref.load %arg3[%31, %15] : memref<?x40xf64>
              %34 = arith.mulf %arg2, %33 : f64
              %35 = memref.load %arg10[%31] : memref<?xf64>
              %36 = arith.mulf %34, %35 : f64
              %37 = arith.addf %32, %36 : f64
              memref.store %37, %arg9[%15] : memref<?xf64>
              %38 = arith.addi %17, %c3 : index
              %39 = memref.load %arg9[%15] : memref<?xf64>
              %40 = memref.load %arg3[%38, %15] : memref<?x40xf64>
              %41 = arith.mulf %arg2, %40 : f64
              %42 = memref.load %arg10[%38] : memref<?xf64>
              %43 = arith.mulf %41, %42 : f64
              %44 = arith.addf %39, %43 : f64
              memref.store %44, %arg9[%15] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %8 = async.add_to_group %token, %2 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %2
    %4 = async.create_group %c1 : !async.group
    %5 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %10 = arith.muli %arg12, %c128 : index
        scf.for %arg14 = %c0 to %c10 step %c1 {
          %11 = arith.muli %arg14, %c4 : index
          %12 = arith.addi %10, %11 : index
          %13 = memref.load %arg9[%12] : memref<?xf64>
          %14 = memref.load %arg11[%12] : memref<?xf64>
          %15 = arith.addf %13, %14 : f64
          memref.store %15, %arg9[%12] : memref<?xf64>
          %16 = arith.addi %12, %c1 : index
          %17 = memref.load %arg9[%16] : memref<?xf64>
          %18 = memref.load %arg11[%16] : memref<?xf64>
          %19 = arith.addf %17, %18 : f64
          memref.store %19, %arg9[%16] : memref<?xf64>
          %20 = arith.addi %12, %c2 : index
          %21 = memref.load %arg9[%20] : memref<?xf64>
          %22 = memref.load %arg11[%20] : memref<?xf64>
          %23 = arith.addf %21, %22 : f64
          memref.store %23, %arg9[%20] : memref<?xf64>
          %24 = arith.addi %12, %c3 : index
          %25 = memref.load %arg9[%24] : memref<?xf64>
          %26 = memref.load %arg11[%24] : memref<?xf64>
          %27 = arith.addf %25, %26 : f64
          memref.store %27, %arg9[%24] : memref<?xf64>
        }
        async.yield
      }
      %8 = async.add_to_group %token, %4 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %4
    %6 = async.create_group %c2 : !async.group
    %7 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %10 = arith.muli %arg12, %c32 : index
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %11 = arith.muli %arg14, %c128 : index
          %12 = arith.muli %arg12, %c-32 : index
          %13 = arith.addi %12, %c40 : index
          %14 = arith.minsi %13, %c32 : index
          scf.for %arg15 = %c0 to %14 step %c1 {
            %15 = arith.addi %10, %arg15 : index
            scf.for %arg16 = %c0 to %c10 step %c1 {
              %16 = arith.muli %arg16, %c4 : index
              %17 = arith.addi %11, %16 : index
              %18 = memref.load %arg8[%15] : memref<?xf64>
              %19 = memref.load %arg3[%15, %17] : memref<?x40xf64>
              %20 = arith.mulf %arg1, %19 : f64
              %21 = memref.load %arg9[%17] : memref<?xf64>
              %22 = arith.mulf %20, %21 : f64
              %23 = arith.addf %18, %22 : f64
              memref.store %23, %arg8[%15] : memref<?xf64>
              %24 = arith.addi %17, %c1 : index
              %25 = memref.load %arg8[%15] : memref<?xf64>
              %26 = memref.load %arg3[%15, %24] : memref<?x40xf64>
              %27 = arith.mulf %arg1, %26 : f64
              %28 = memref.load %arg9[%24] : memref<?xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = arith.addf %25, %29 : f64
              memref.store %30, %arg8[%15] : memref<?xf64>
              %31 = arith.addi %17, %c2 : index
              %32 = memref.load %arg8[%15] : memref<?xf64>
              %33 = memref.load %arg3[%15, %31] : memref<?x40xf64>
              %34 = arith.mulf %arg1, %33 : f64
              %35 = memref.load %arg9[%31] : memref<?xf64>
              %36 = arith.mulf %34, %35 : f64
              %37 = arith.addf %32, %36 : f64
              memref.store %37, %arg8[%15] : memref<?xf64>
              %38 = arith.addi %17, %c3 : index
              %39 = memref.load %arg8[%15] : memref<?xf64>
              %40 = memref.load %arg3[%15, %38] : memref<?x40xf64>
              %41 = arith.mulf %arg1, %40 : f64
              %42 = memref.load %arg9[%38] : memref<?xf64>
              %43 = arith.mulf %41, %42 : f64
              %44 = arith.addf %39, %43 : f64
              memref.store %44, %arg8[%15] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %8 = async.add_to_group %token, %6 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %6
    return
  }
}

