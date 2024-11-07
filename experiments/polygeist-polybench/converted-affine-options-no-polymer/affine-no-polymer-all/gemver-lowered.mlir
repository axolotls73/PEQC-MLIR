module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c10 step %c1 {
      %c4 = arith.constant 4 : index
      %0 = arith.muli %arg12, %c4 : index
      %c0_8 = arith.constant 0 : index
      %c10_9 = arith.constant 10 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg13 = %c0_8 to %c10_9 step %c1_10 {
        %c4_11 = arith.constant 4 : index
        %1 = arith.muli %arg13, %c4_11 : index
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg14 = %c0_12 to %c1_13 step %c1_14 {
          %c4_15 = arith.constant 4 : index
          %2 = arith.muli %arg14, %c4_15 : index
          %3 = arith.addi %0, %2 : index
          %4 = memref.load %arg4[%3] : memref<?xf64>
          %5 = memref.load %arg6[%3] : memref<?xf64>
          %6 = memref.load %arg4[%3] : memref<?xf64>
          %7 = memref.load %arg6[%3] : memref<?xf64>
          %8 = memref.load %arg4[%3] : memref<?xf64>
          %9 = memref.load %arg6[%3] : memref<?xf64>
          %10 = memref.load %arg4[%3] : memref<?xf64>
          %11 = memref.load %arg6[%3] : memref<?xf64>
          %c1_16 = arith.constant 1 : index
          %12 = arith.addi %3, %c1_16 : index
          %13 = memref.load %arg4[%12] : memref<?xf64>
          %14 = memref.load %arg6[%12] : memref<?xf64>
          %15 = memref.load %arg4[%12] : memref<?xf64>
          %16 = memref.load %arg6[%12] : memref<?xf64>
          %17 = memref.load %arg4[%12] : memref<?xf64>
          %18 = memref.load %arg6[%12] : memref<?xf64>
          %19 = memref.load %arg4[%12] : memref<?xf64>
          %20 = memref.load %arg6[%12] : memref<?xf64>
          %c2 = arith.constant 2 : index
          %21 = arith.addi %3, %c2 : index
          %22 = memref.load %arg4[%21] : memref<?xf64>
          %23 = memref.load %arg6[%21] : memref<?xf64>
          %24 = memref.load %arg4[%21] : memref<?xf64>
          %25 = memref.load %arg6[%21] : memref<?xf64>
          %26 = memref.load %arg4[%21] : memref<?xf64>
          %27 = memref.load %arg6[%21] : memref<?xf64>
          %28 = memref.load %arg4[%21] : memref<?xf64>
          %29 = memref.load %arg6[%21] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %30 = arith.addi %3, %c3 : index
          %31 = memref.load %arg4[%30] : memref<?xf64>
          %32 = memref.load %arg6[%30] : memref<?xf64>
          %33 = memref.load %arg4[%30] : memref<?xf64>
          %34 = memref.load %arg6[%30] : memref<?xf64>
          %35 = memref.load %arg4[%30] : memref<?xf64>
          %36 = memref.load %arg6[%30] : memref<?xf64>
          %37 = memref.load %arg4[%30] : memref<?xf64>
          %38 = memref.load %arg6[%30] : memref<?xf64>
          %c0_17 = arith.constant 0 : index
          %c1_18 = arith.constant 1 : index
          %c1_19 = arith.constant 1 : index
          scf.for %arg15 = %c0_17 to %c1_18 step %c1_19 {
            %c4_20 = arith.constant 4 : index
            %39 = arith.muli %arg15, %c4_20 : index
            %40 = arith.addi %1, %39 : index
            %41 = memref.load %arg3[%3, %40] : memref<?x40xf64>
            %42 = memref.load %arg5[%40] : memref<?xf64>
            %43 = arith.mulf %4, %42 : f64
            %44 = arith.addf %41, %43 : f64
            %45 = memref.load %arg7[%40] : memref<?xf64>
            %46 = arith.mulf %5, %45 : f64
            %47 = arith.addf %44, %46 : f64
            memref.store %47, %arg3[%3, %40] : memref<?x40xf64>
            %c1_21 = arith.constant 1 : index
            %48 = arith.addi %40, %c1_21 : index
            %49 = memref.load %arg3[%3, %48] : memref<?x40xf64>
            %50 = memref.load %arg5[%48] : memref<?xf64>
            %51 = arith.mulf %6, %50 : f64
            %52 = arith.addf %49, %51 : f64
            %53 = memref.load %arg7[%48] : memref<?xf64>
            %54 = arith.mulf %7, %53 : f64
            %55 = arith.addf %52, %54 : f64
            memref.store %55, %arg3[%3, %48] : memref<?x40xf64>
            %c2_22 = arith.constant 2 : index
            %56 = arith.addi %40, %c2_22 : index
            %57 = memref.load %arg3[%3, %56] : memref<?x40xf64>
            %58 = memref.load %arg5[%56] : memref<?xf64>
            %59 = arith.mulf %8, %58 : f64
            %60 = arith.addf %57, %59 : f64
            %61 = memref.load %arg7[%56] : memref<?xf64>
            %62 = arith.mulf %9, %61 : f64
            %63 = arith.addf %60, %62 : f64
            memref.store %63, %arg3[%3, %56] : memref<?x40xf64>
            %c3_23 = arith.constant 3 : index
            %64 = arith.addi %40, %c3_23 : index
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
            %c1_24 = arith.constant 1 : index
            %79 = arith.addi %40, %c1_24 : index
            %80 = memref.load %arg3[%12, %79] : memref<?x40xf64>
            %81 = memref.load %arg5[%79] : memref<?xf64>
            %82 = arith.mulf %15, %81 : f64
            %83 = arith.addf %80, %82 : f64
            %84 = memref.load %arg7[%79] : memref<?xf64>
            %85 = arith.mulf %16, %84 : f64
            %86 = arith.addf %83, %85 : f64
            memref.store %86, %arg3[%12, %79] : memref<?x40xf64>
            %c2_25 = arith.constant 2 : index
            %87 = arith.addi %40, %c2_25 : index
            %88 = memref.load %arg3[%12, %87] : memref<?x40xf64>
            %89 = memref.load %arg5[%87] : memref<?xf64>
            %90 = arith.mulf %17, %89 : f64
            %91 = arith.addf %88, %90 : f64
            %92 = memref.load %arg7[%87] : memref<?xf64>
            %93 = arith.mulf %18, %92 : f64
            %94 = arith.addf %91, %93 : f64
            memref.store %94, %arg3[%12, %87] : memref<?x40xf64>
            %c3_26 = arith.constant 3 : index
            %95 = arith.addi %40, %c3_26 : index
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
            %c1_27 = arith.constant 1 : index
            %110 = arith.addi %40, %c1_27 : index
            %111 = memref.load %arg3[%21, %110] : memref<?x40xf64>
            %112 = memref.load %arg5[%110] : memref<?xf64>
            %113 = arith.mulf %24, %112 : f64
            %114 = arith.addf %111, %113 : f64
            %115 = memref.load %arg7[%110] : memref<?xf64>
            %116 = arith.mulf %25, %115 : f64
            %117 = arith.addf %114, %116 : f64
            memref.store %117, %arg3[%21, %110] : memref<?x40xf64>
            %c2_28 = arith.constant 2 : index
            %118 = arith.addi %40, %c2_28 : index
            %119 = memref.load %arg3[%21, %118] : memref<?x40xf64>
            %120 = memref.load %arg5[%118] : memref<?xf64>
            %121 = arith.mulf %26, %120 : f64
            %122 = arith.addf %119, %121 : f64
            %123 = memref.load %arg7[%118] : memref<?xf64>
            %124 = arith.mulf %27, %123 : f64
            %125 = arith.addf %122, %124 : f64
            memref.store %125, %arg3[%21, %118] : memref<?x40xf64>
            %c3_29 = arith.constant 3 : index
            %126 = arith.addi %40, %c3_29 : index
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
            %c1_30 = arith.constant 1 : index
            %141 = arith.addi %40, %c1_30 : index
            %142 = memref.load %arg3[%30, %141] : memref<?x40xf64>
            %143 = memref.load %arg5[%141] : memref<?xf64>
            %144 = arith.mulf %33, %143 : f64
            %145 = arith.addf %142, %144 : f64
            %146 = memref.load %arg7[%141] : memref<?xf64>
            %147 = arith.mulf %34, %146 : f64
            %148 = arith.addf %145, %147 : f64
            memref.store %148, %arg3[%30, %141] : memref<?x40xf64>
            %c2_31 = arith.constant 2 : index
            %149 = arith.addi %40, %c2_31 : index
            %150 = memref.load %arg3[%30, %149] : memref<?x40xf64>
            %151 = memref.load %arg5[%149] : memref<?xf64>
            %152 = arith.mulf %35, %151 : f64
            %153 = arith.addf %150, %152 : f64
            %154 = memref.load %arg7[%149] : memref<?xf64>
            %155 = arith.mulf %36, %154 : f64
            %156 = arith.addf %153, %155 : f64
            memref.store %156, %arg3[%30, %149] : memref<?x40xf64>
            %c3_32 = arith.constant 3 : index
            %157 = arith.addi %40, %c3_32 : index
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
    %c0_0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1_1 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0_0) to (%c40) step (%c1_1) {
      %c0_8 = arith.constant 0 : index
      %c10_9 = arith.constant 10 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg13 = %c0_8 to %c10_9 step %c1_10 {
        %c4 = arith.constant 4 : index
        %0 = arith.muli %arg13, %c4 : index
        %c0_11 = arith.constant 0 : index
        %c1_12 = arith.constant 1 : index
        %c1_13 = arith.constant 1 : index
        scf.parallel (%arg14) = (%c0_11) to (%c1_12) step (%c1_13) {
          %1 = arith.addi %arg12, %arg14 : index
          %c0_14 = arith.constant 0 : index
          %c1_15 = arith.constant 1 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg15 = %c0_14 to %c1_15 step %c1_16 {
            %c4_17 = arith.constant 4 : index
            %2 = arith.muli %arg15, %c4_17 : index
            %3 = arith.addi %0, %2 : index
            %4 = memref.load %arg9[%1] : memref<?xf64>
            %5 = memref.load %arg3[%3, %1] : memref<?x40xf64>
            %6 = arith.mulf %arg2, %5 : f64
            %7 = memref.load %arg10[%3] : memref<?xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = arith.addf %4, %8 : f64
            memref.store %9, %arg9[%1] : memref<?xf64>
            %c1_18 = arith.constant 1 : index
            %10 = arith.addi %3, %c1_18 : index
            %11 = memref.load %arg9[%1] : memref<?xf64>
            %12 = memref.load %arg3[%10, %1] : memref<?x40xf64>
            %13 = arith.mulf %arg2, %12 : f64
            %14 = memref.load %arg10[%10] : memref<?xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = arith.addf %11, %15 : f64
            memref.store %16, %arg9[%1] : memref<?xf64>
            %c2 = arith.constant 2 : index
            %17 = arith.addi %3, %c2 : index
            %18 = memref.load %arg9[%1] : memref<?xf64>
            %19 = memref.load %arg3[%17, %1] : memref<?x40xf64>
            %20 = arith.mulf %arg2, %19 : f64
            %21 = memref.load %arg10[%17] : memref<?xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = arith.addf %18, %22 : f64
            memref.store %23, %arg9[%1] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %24 = arith.addi %3, %c3 : index
            %25 = memref.load %arg9[%1] : memref<?xf64>
            %26 = memref.load %arg3[%24, %1] : memref<?x40xf64>
            %27 = arith.mulf %arg2, %26 : f64
            %28 = memref.load %arg10[%24] : memref<?xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = arith.addf %25, %29 : f64
            memref.store %30, %arg9[%1] : memref<?xf64>
          }
          scf.reduce 
        }
      }
      scf.reduce 
    }
    %c0_2 = arith.constant 0 : index
    %c10_3 = arith.constant 10 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg12 = %c0_2 to %c10_3 step %c1_4 {
      %c4 = arith.constant 4 : index
      %0 = arith.muli %arg12, %c4 : index
      %c0_8 = arith.constant 0 : index
      %c1_9 = arith.constant 1 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg13 = %c0_8 to %c1_9 step %c1_10 {
        %c4_11 = arith.constant 4 : index
        %1 = arith.muli %arg13, %c4_11 : index
        %2 = arith.addi %0, %1 : index
        %3 = memref.load %arg9[%2] : memref<?xf64>
        %4 = memref.load %arg11[%2] : memref<?xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %arg9[%2] : memref<?xf64>
        %c1_12 = arith.constant 1 : index
        %6 = arith.addi %2, %c1_12 : index
        %7 = memref.load %arg9[%6] : memref<?xf64>
        %8 = memref.load %arg11[%6] : memref<?xf64>
        %9 = arith.addf %7, %8 : f64
        memref.store %9, %arg9[%6] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %10 = arith.addi %2, %c2 : index
        %11 = memref.load %arg9[%10] : memref<?xf64>
        %12 = memref.load %arg11[%10] : memref<?xf64>
        %13 = arith.addf %11, %12 : f64
        memref.store %13, %arg9[%10] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %14 = arith.addi %2, %c3 : index
        %15 = memref.load %arg9[%14] : memref<?xf64>
        %16 = memref.load %arg11[%14] : memref<?xf64>
        %17 = arith.addf %15, %16 : f64
        memref.store %17, %arg9[%14] : memref<?xf64>
      }
    }
    %c0_5 = arith.constant 0 : index
    %c40_6 = arith.constant 40 : index
    %c1_7 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0_5) to (%c40_6) step (%c1_7) {
      %c0_8 = arith.constant 0 : index
      %c10_9 = arith.constant 10 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg13 = %c0_8 to %c10_9 step %c1_10 {
        %c4 = arith.constant 4 : index
        %0 = arith.muli %arg13, %c4 : index
        %c0_11 = arith.constant 0 : index
        %c1_12 = arith.constant 1 : index
        %c1_13 = arith.constant 1 : index
        scf.parallel (%arg14) = (%c0_11) to (%c1_12) step (%c1_13) {
          %1 = arith.addi %arg12, %arg14 : index
          %c0_14 = arith.constant 0 : index
          %c1_15 = arith.constant 1 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg15 = %c0_14 to %c1_15 step %c1_16 {
            %c4_17 = arith.constant 4 : index
            %2 = arith.muli %arg15, %c4_17 : index
            %3 = arith.addi %0, %2 : index
            %4 = memref.load %arg8[%1] : memref<?xf64>
            %5 = memref.load %arg3[%1, %3] : memref<?x40xf64>
            %6 = arith.mulf %arg1, %5 : f64
            %7 = memref.load %arg9[%3] : memref<?xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = arith.addf %4, %8 : f64
            memref.store %9, %arg8[%1] : memref<?xf64>
            %c1_18 = arith.constant 1 : index
            %10 = arith.addi %3, %c1_18 : index
            %11 = memref.load %arg8[%1] : memref<?xf64>
            %12 = memref.load %arg3[%1, %10] : memref<?x40xf64>
            %13 = arith.mulf %arg1, %12 : f64
            %14 = memref.load %arg9[%10] : memref<?xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = arith.addf %11, %15 : f64
            memref.store %16, %arg8[%1] : memref<?xf64>
            %c2 = arith.constant 2 : index
            %17 = arith.addi %3, %c2 : index
            %18 = memref.load %arg8[%1] : memref<?xf64>
            %19 = memref.load %arg3[%1, %17] : memref<?x40xf64>
            %20 = arith.mulf %arg1, %19 : f64
            %21 = memref.load %arg9[%17] : memref<?xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = arith.addf %18, %22 : f64
            memref.store %23, %arg8[%1] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %24 = arith.addi %3, %c3 : index
            %25 = memref.load %arg8[%1] : memref<?xf64>
            %26 = memref.load %arg3[%1, %24] : memref<?x40xf64>
            %27 = arith.mulf %arg1, %26 : f64
            %28 = memref.load %arg9[%24] : memref<?xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = arith.addf %25, %29 : f64
            memref.store %30, %arg8[%1] : memref<?xf64>
          }
          scf.reduce 
        }
      }
      scf.reduce 
    }
    return
  }
}

