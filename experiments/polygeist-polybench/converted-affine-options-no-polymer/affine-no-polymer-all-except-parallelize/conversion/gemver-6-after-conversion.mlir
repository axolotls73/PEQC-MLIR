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
    scf.for %arg12 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg12, %c128 : index
      scf.for %arg13 = %c0 to %c1 step %c1 {
        %1 = arith.muli %arg13, %c128 : index
        scf.for %arg14 = %c0 to %c10 step %c1 {
          %2 = arith.muli %arg14, %c4 : index
          %3 = arith.addi %0, %2 : index
          %4 = memref.load %arg4[%3] : memref<?xf64>
          %5 = memref.load %arg6[%3] : memref<?xf64>
          %6 = memref.load %arg4[%3] : memref<?xf64>
          %7 = memref.load %arg6[%3] : memref<?xf64>
          %8 = memref.load %arg4[%3] : memref<?xf64>
          %9 = memref.load %arg6[%3] : memref<?xf64>
          %10 = memref.load %arg4[%3] : memref<?xf64>
          %11 = memref.load %arg6[%3] : memref<?xf64>
          %12 = arith.addi %3, %c1 : index
          %13 = memref.load %arg4[%12] : memref<?xf64>
          %14 = memref.load %arg6[%12] : memref<?xf64>
          %15 = memref.load %arg4[%12] : memref<?xf64>
          %16 = memref.load %arg6[%12] : memref<?xf64>
          %17 = memref.load %arg4[%12] : memref<?xf64>
          %18 = memref.load %arg6[%12] : memref<?xf64>
          %19 = memref.load %arg4[%12] : memref<?xf64>
          %20 = memref.load %arg6[%12] : memref<?xf64>
          %21 = arith.addi %3, %c2 : index
          %22 = memref.load %arg4[%21] : memref<?xf64>
          %23 = memref.load %arg6[%21] : memref<?xf64>
          %24 = memref.load %arg4[%21] : memref<?xf64>
          %25 = memref.load %arg6[%21] : memref<?xf64>
          %26 = memref.load %arg4[%21] : memref<?xf64>
          %27 = memref.load %arg6[%21] : memref<?xf64>
          %28 = memref.load %arg4[%21] : memref<?xf64>
          %29 = memref.load %arg6[%21] : memref<?xf64>
          %30 = arith.addi %3, %c3 : index
          %31 = memref.load %arg4[%30] : memref<?xf64>
          %32 = memref.load %arg6[%30] : memref<?xf64>
          %33 = memref.load %arg4[%30] : memref<?xf64>
          %34 = memref.load %arg6[%30] : memref<?xf64>
          %35 = memref.load %arg4[%30] : memref<?xf64>
          %36 = memref.load %arg6[%30] : memref<?xf64>
          %37 = memref.load %arg4[%30] : memref<?xf64>
          %38 = memref.load %arg6[%30] : memref<?xf64>
          scf.for %arg15 = %c0 to %c10 step %c1 {
            %39 = arith.muli %arg15, %c4 : index
            %40 = arith.addi %1, %39 : index
            %41 = memref.load %arg3[%3, %40] : memref<?x40xf64>
            %42 = memref.load %arg5[%40] : memref<?xf64>
            %43 = arith.mulf %4, %42 : f64
            %44 = arith.addf %41, %43 : f64
            %45 = memref.load %arg7[%40] : memref<?xf64>
            %46 = arith.mulf %5, %45 : f64
            %47 = arith.addf %44, %46 : f64
            memref.store %47, %arg3[%3, %40] : memref<?x40xf64>
            %48 = arith.addi %40, %c1 : index
            %49 = memref.load %arg3[%3, %48] : memref<?x40xf64>
            %50 = memref.load %arg5[%48] : memref<?xf64>
            %51 = arith.mulf %6, %50 : f64
            %52 = arith.addf %49, %51 : f64
            %53 = memref.load %arg7[%48] : memref<?xf64>
            %54 = arith.mulf %7, %53 : f64
            %55 = arith.addf %52, %54 : f64
            memref.store %55, %arg3[%3, %48] : memref<?x40xf64>
            %56 = arith.addi %40, %c2 : index
            %57 = memref.load %arg3[%3, %56] : memref<?x40xf64>
            %58 = memref.load %arg5[%56] : memref<?xf64>
            %59 = arith.mulf %8, %58 : f64
            %60 = arith.addf %57, %59 : f64
            %61 = memref.load %arg7[%56] : memref<?xf64>
            %62 = arith.mulf %9, %61 : f64
            %63 = arith.addf %60, %62 : f64
            memref.store %63, %arg3[%3, %56] : memref<?x40xf64>
            %64 = arith.addi %40, %c3 : index
            %65 = memref.load %arg3[%3, %64] : memref<?x40xf64>
            %66 = memref.load %arg5[%64] : memref<?xf64>
            %67 = arith.mulf %10, %66 : f64
            %68 = arith.addf %65, %67 : f64
            %69 = memref.load %arg7[%64] : memref<?xf64>
            %70 = arith.mulf %11, %69 : f64
            %71 = arith.addf %68, %70 : f64
            memref.store %71, %arg3[%3, %64] : memref<?x40xf64>
            %72 = memref.load %arg3[%12, %40] : memref<?x40xf64>
            %73 = memref.load %arg5[%40] : memref<?xf64>
            %74 = arith.mulf %13, %73 : f64
            %75 = arith.addf %72, %74 : f64
            %76 = memref.load %arg7[%40] : memref<?xf64>
            %77 = arith.mulf %14, %76 : f64
            %78 = arith.addf %75, %77 : f64
            memref.store %78, %arg3[%12, %40] : memref<?x40xf64>
            %79 = arith.addi %40, %c1 : index
            %80 = memref.load %arg3[%12, %79] : memref<?x40xf64>
            %81 = memref.load %arg5[%79] : memref<?xf64>
            %82 = arith.mulf %15, %81 : f64
            %83 = arith.addf %80, %82 : f64
            %84 = memref.load %arg7[%79] : memref<?xf64>
            %85 = arith.mulf %16, %84 : f64
            %86 = arith.addf %83, %85 : f64
            memref.store %86, %arg3[%12, %79] : memref<?x40xf64>
            %87 = arith.addi %40, %c2 : index
            %88 = memref.load %arg3[%12, %87] : memref<?x40xf64>
            %89 = memref.load %arg5[%87] : memref<?xf64>
            %90 = arith.mulf %17, %89 : f64
            %91 = arith.addf %88, %90 : f64
            %92 = memref.load %arg7[%87] : memref<?xf64>
            %93 = arith.mulf %18, %92 : f64
            %94 = arith.addf %91, %93 : f64
            memref.store %94, %arg3[%12, %87] : memref<?x40xf64>
            %95 = arith.addi %40, %c3 : index
            %96 = memref.load %arg3[%12, %95] : memref<?x40xf64>
            %97 = memref.load %arg5[%95] : memref<?xf64>
            %98 = arith.mulf %19, %97 : f64
            %99 = arith.addf %96, %98 : f64
            %100 = memref.load %arg7[%95] : memref<?xf64>
            %101 = arith.mulf %20, %100 : f64
            %102 = arith.addf %99, %101 : f64
            memref.store %102, %arg3[%12, %95] : memref<?x40xf64>
            %103 = memref.load %arg3[%21, %40] : memref<?x40xf64>
            %104 = memref.load %arg5[%40] : memref<?xf64>
            %105 = arith.mulf %22, %104 : f64
            %106 = arith.addf %103, %105 : f64
            %107 = memref.load %arg7[%40] : memref<?xf64>
            %108 = arith.mulf %23, %107 : f64
            %109 = arith.addf %106, %108 : f64
            memref.store %109, %arg3[%21, %40] : memref<?x40xf64>
            %110 = arith.addi %40, %c1 : index
            %111 = memref.load %arg3[%21, %110] : memref<?x40xf64>
            %112 = memref.load %arg5[%110] : memref<?xf64>
            %113 = arith.mulf %24, %112 : f64
            %114 = arith.addf %111, %113 : f64
            %115 = memref.load %arg7[%110] : memref<?xf64>
            %116 = arith.mulf %25, %115 : f64
            %117 = arith.addf %114, %116 : f64
            memref.store %117, %arg3[%21, %110] : memref<?x40xf64>
            %118 = arith.addi %40, %c2 : index
            %119 = memref.load %arg3[%21, %118] : memref<?x40xf64>
            %120 = memref.load %arg5[%118] : memref<?xf64>
            %121 = arith.mulf %26, %120 : f64
            %122 = arith.addf %119, %121 : f64
            %123 = memref.load %arg7[%118] : memref<?xf64>
            %124 = arith.mulf %27, %123 : f64
            %125 = arith.addf %122, %124 : f64
            memref.store %125, %arg3[%21, %118] : memref<?x40xf64>
            %126 = arith.addi %40, %c3 : index
            %127 = memref.load %arg3[%21, %126] : memref<?x40xf64>
            %128 = memref.load %arg5[%126] : memref<?xf64>
            %129 = arith.mulf %28, %128 : f64
            %130 = arith.addf %127, %129 : f64
            %131 = memref.load %arg7[%126] : memref<?xf64>
            %132 = arith.mulf %29, %131 : f64
            %133 = arith.addf %130, %132 : f64
            memref.store %133, %arg3[%21, %126] : memref<?x40xf64>
            %134 = memref.load %arg3[%30, %40] : memref<?x40xf64>
            %135 = memref.load %arg5[%40] : memref<?xf64>
            %136 = arith.mulf %31, %135 : f64
            %137 = arith.addf %134, %136 : f64
            %138 = memref.load %arg7[%40] : memref<?xf64>
            %139 = arith.mulf %32, %138 : f64
            %140 = arith.addf %137, %139 : f64
            memref.store %140, %arg3[%30, %40] : memref<?x40xf64>
            %141 = arith.addi %40, %c1 : index
            %142 = memref.load %arg3[%30, %141] : memref<?x40xf64>
            %143 = memref.load %arg5[%141] : memref<?xf64>
            %144 = arith.mulf %33, %143 : f64
            %145 = arith.addf %142, %144 : f64
            %146 = memref.load %arg7[%141] : memref<?xf64>
            %147 = arith.mulf %34, %146 : f64
            %148 = arith.addf %145, %147 : f64
            memref.store %148, %arg3[%30, %141] : memref<?x40xf64>
            %149 = arith.addi %40, %c2 : index
            %150 = memref.load %arg3[%30, %149] : memref<?x40xf64>
            %151 = memref.load %arg5[%149] : memref<?xf64>
            %152 = arith.mulf %35, %151 : f64
            %153 = arith.addf %150, %152 : f64
            %154 = memref.load %arg7[%149] : memref<?xf64>
            %155 = arith.mulf %36, %154 : f64
            %156 = arith.addf %153, %155 : f64
            memref.store %156, %arg3[%30, %149] : memref<?x40xf64>
            %157 = arith.addi %40, %c3 : index
            %158 = memref.load %arg3[%30, %157] : memref<?x40xf64>
            %159 = memref.load %arg5[%157] : memref<?xf64>
            %160 = arith.mulf %37, %159 : f64
            %161 = arith.addf %158, %160 : f64
            %162 = memref.load %arg7[%157] : memref<?xf64>
            %163 = arith.mulf %38, %162 : f64
            %164 = arith.addf %161, %163 : f64
            memref.store %164, %arg3[%30, %157] : memref<?x40xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg12, %c32 : index
      scf.for %arg13 = %c0 to %c1 step %c1 {
        %1 = arith.muli %arg13, %c128 : index
        %2 = arith.muli %arg12, %c-32 : index
        %3 = arith.addi %2, %c40 : index
        %4 = arith.minsi %3, %c32 : index
        scf.for %arg14 = %c0 to %4 step %c1 {
          %5 = arith.addi %0, %arg14 : index
          scf.for %arg15 = %c0 to %c10 step %c1 {
            %6 = arith.muli %arg15, %c4 : index
            %7 = arith.addi %1, %6 : index
            %8 = memref.load %arg9[%5] : memref<?xf64>
            %9 = memref.load %arg3[%7, %5] : memref<?x40xf64>
            %10 = arith.mulf %arg2, %9 : f64
            %11 = memref.load %arg10[%7] : memref<?xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.addf %8, %12 : f64
            memref.store %13, %arg9[%5] : memref<?xf64>
            %14 = arith.addi %7, %c1 : index
            %15 = memref.load %arg9[%5] : memref<?xf64>
            %16 = memref.load %arg3[%14, %5] : memref<?x40xf64>
            %17 = arith.mulf %arg2, %16 : f64
            %18 = memref.load %arg10[%14] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %15, %19 : f64
            memref.store %20, %arg9[%5] : memref<?xf64>
            %21 = arith.addi %7, %c2 : index
            %22 = memref.load %arg9[%5] : memref<?xf64>
            %23 = memref.load %arg3[%21, %5] : memref<?x40xf64>
            %24 = arith.mulf %arg2, %23 : f64
            %25 = memref.load %arg10[%21] : memref<?xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = arith.addf %22, %26 : f64
            memref.store %27, %arg9[%5] : memref<?xf64>
            %28 = arith.addi %7, %c3 : index
            %29 = memref.load %arg9[%5] : memref<?xf64>
            %30 = memref.load %arg3[%28, %5] : memref<?x40xf64>
            %31 = arith.mulf %arg2, %30 : f64
            %32 = memref.load %arg10[%28] : memref<?xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = arith.addf %29, %33 : f64
            memref.store %34, %arg9[%5] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg12, %c128 : index
      scf.for %arg13 = %c0 to %c10 step %c1 {
        %1 = arith.muli %arg13, %c4 : index
        %2 = arith.addi %0, %1 : index
        %3 = memref.load %arg9[%2] : memref<?xf64>
        %4 = memref.load %arg11[%2] : memref<?xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %arg9[%2] : memref<?xf64>
        %6 = arith.addi %2, %c1 : index
        %7 = memref.load %arg9[%6] : memref<?xf64>
        %8 = memref.load %arg11[%6] : memref<?xf64>
        %9 = arith.addf %7, %8 : f64
        memref.store %9, %arg9[%6] : memref<?xf64>
        %10 = arith.addi %2, %c2 : index
        %11 = memref.load %arg9[%10] : memref<?xf64>
        %12 = memref.load %arg11[%10] : memref<?xf64>
        %13 = arith.addf %11, %12 : f64
        memref.store %13, %arg9[%10] : memref<?xf64>
        %14 = arith.addi %2, %c3 : index
        %15 = memref.load %arg9[%14] : memref<?xf64>
        %16 = memref.load %arg11[%14] : memref<?xf64>
        %17 = arith.addf %15, %16 : f64
        memref.store %17, %arg9[%14] : memref<?xf64>
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg12, %c32 : index
      scf.for %arg13 = %c0 to %c1 step %c1 {
        %1 = arith.muli %arg13, %c128 : index
        %2 = arith.muli %arg12, %c-32 : index
        %3 = arith.addi %2, %c40 : index
        %4 = arith.minsi %3, %c32 : index
        scf.for %arg14 = %c0 to %4 step %c1 {
          %5 = arith.addi %0, %arg14 : index
          scf.for %arg15 = %c0 to %c10 step %c1 {
            %6 = arith.muli %arg15, %c4 : index
            %7 = arith.addi %1, %6 : index
            %8 = memref.load %arg8[%5] : memref<?xf64>
            %9 = memref.load %arg3[%5, %7] : memref<?x40xf64>
            %10 = arith.mulf %arg1, %9 : f64
            %11 = memref.load %arg9[%7] : memref<?xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.addf %8, %12 : f64
            memref.store %13, %arg8[%5] : memref<?xf64>
            %14 = arith.addi %7, %c1 : index
            %15 = memref.load %arg8[%5] : memref<?xf64>
            %16 = memref.load %arg3[%5, %14] : memref<?x40xf64>
            %17 = arith.mulf %arg1, %16 : f64
            %18 = memref.load %arg9[%14] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %15, %19 : f64
            memref.store %20, %arg8[%5] : memref<?xf64>
            %21 = arith.addi %7, %c2 : index
            %22 = memref.load %arg8[%5] : memref<?xf64>
            %23 = memref.load %arg3[%5, %21] : memref<?x40xf64>
            %24 = arith.mulf %arg1, %23 : f64
            %25 = memref.load %arg9[%21] : memref<?xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = arith.addf %22, %26 : f64
            memref.store %27, %arg8[%5] : memref<?xf64>
            %28 = arith.addi %7, %c3 : index
            %29 = memref.load %arg8[%5] : memref<?xf64>
            %30 = memref.load %arg3[%5, %28] : memref<?x40xf64>
            %31 = arith.mulf %arg1, %30 : f64
            %32 = memref.load %arg9[%28] : memref<?xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = arith.addf %29, %33 : f64
            memref.store %34, %arg8[%5] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

