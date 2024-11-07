#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0, d1) -> (d0 + d1)>
module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    affine.for %arg12 = 0 to 10 {
      %0 = affine.apply #map(%arg12)
      affine.for %arg13 = 0 to 10 {
        %1 = affine.apply #map(%arg13)
        affine.for %arg14 = 0 to 1 {
          %2 = affine.apply #map1(%0, %arg14)
          %3 = affine.load %arg4[%2] : memref<?xf64>
          %4 = affine.load %arg6[%2] : memref<?xf64>
          %5 = affine.load %arg4[%2] : memref<?xf64>
          %6 = affine.load %arg6[%2] : memref<?xf64>
          %7 = affine.load %arg4[%2] : memref<?xf64>
          %8 = affine.load %arg6[%2] : memref<?xf64>
          %9 = affine.load %arg4[%2] : memref<?xf64>
          %10 = affine.load %arg6[%2] : memref<?xf64>
          %11 = affine.apply #map2(%2)
          %12 = affine.load %arg4[%11] : memref<?xf64>
          %13 = affine.load %arg6[%11] : memref<?xf64>
          %14 = affine.load %arg4[%11] : memref<?xf64>
          %15 = affine.load %arg6[%11] : memref<?xf64>
          %16 = affine.load %arg4[%11] : memref<?xf64>
          %17 = affine.load %arg6[%11] : memref<?xf64>
          %18 = affine.load %arg4[%11] : memref<?xf64>
          %19 = affine.load %arg6[%11] : memref<?xf64>
          %20 = affine.apply #map3(%2)
          %21 = affine.load %arg4[%20] : memref<?xf64>
          %22 = affine.load %arg6[%20] : memref<?xf64>
          %23 = affine.load %arg4[%20] : memref<?xf64>
          %24 = affine.load %arg6[%20] : memref<?xf64>
          %25 = affine.load %arg4[%20] : memref<?xf64>
          %26 = affine.load %arg6[%20] : memref<?xf64>
          %27 = affine.load %arg4[%20] : memref<?xf64>
          %28 = affine.load %arg6[%20] : memref<?xf64>
          %29 = affine.apply #map4(%2)
          %30 = affine.load %arg4[%29] : memref<?xf64>
          %31 = affine.load %arg6[%29] : memref<?xf64>
          %32 = affine.load %arg4[%29] : memref<?xf64>
          %33 = affine.load %arg6[%29] : memref<?xf64>
          %34 = affine.load %arg4[%29] : memref<?xf64>
          %35 = affine.load %arg6[%29] : memref<?xf64>
          %36 = affine.load %arg4[%29] : memref<?xf64>
          %37 = affine.load %arg6[%29] : memref<?xf64>
          affine.for %arg15 = 0 to 1 {
            %38 = affine.apply #map1(%1, %arg15)
            %39 = affine.load %arg3[%2, %38] : memref<?x40xf64>
            %40 = affine.load %arg5[%38] : memref<?xf64>
            %41 = arith.mulf %3, %40 : f64
            %42 = arith.addf %39, %41 : f64
            %43 = affine.load %arg7[%38] : memref<?xf64>
            %44 = arith.mulf %4, %43 : f64
            %45 = arith.addf %42, %44 : f64
            affine.store %45, %arg3[%2, %38] : memref<?x40xf64>
            %46 = affine.apply #map2(%38)
            %47 = affine.load %arg3[%2, %46] : memref<?x40xf64>
            %48 = affine.load %arg5[%46] : memref<?xf64>
            %49 = arith.mulf %5, %48 : f64
            %50 = arith.addf %47, %49 : f64
            %51 = affine.load %arg7[%46] : memref<?xf64>
            %52 = arith.mulf %6, %51 : f64
            %53 = arith.addf %50, %52 : f64
            affine.store %53, %arg3[%2, %46] : memref<?x40xf64>
            %54 = affine.apply #map3(%38)
            %55 = affine.load %arg3[%2, %54] : memref<?x40xf64>
            %56 = affine.load %arg5[%54] : memref<?xf64>
            %57 = arith.mulf %7, %56 : f64
            %58 = arith.addf %55, %57 : f64
            %59 = affine.load %arg7[%54] : memref<?xf64>
            %60 = arith.mulf %8, %59 : f64
            %61 = arith.addf %58, %60 : f64
            affine.store %61, %arg3[%2, %54] : memref<?x40xf64>
            %62 = affine.apply #map4(%38)
            %63 = affine.load %arg3[%2, %62] : memref<?x40xf64>
            %64 = affine.load %arg5[%62] : memref<?xf64>
            %65 = arith.mulf %9, %64 : f64
            %66 = arith.addf %63, %65 : f64
            %67 = affine.load %arg7[%62] : memref<?xf64>
            %68 = arith.mulf %10, %67 : f64
            %69 = arith.addf %66, %68 : f64
            affine.store %69, %arg3[%2, %62] : memref<?x40xf64>
            %70 = affine.load %arg3[%11, %38] : memref<?x40xf64>
            %71 = affine.load %arg5[%38] : memref<?xf64>
            %72 = arith.mulf %12, %71 : f64
            %73 = arith.addf %70, %72 : f64
            %74 = affine.load %arg7[%38] : memref<?xf64>
            %75 = arith.mulf %13, %74 : f64
            %76 = arith.addf %73, %75 : f64
            affine.store %76, %arg3[%11, %38] : memref<?x40xf64>
            %77 = affine.apply #map2(%38)
            %78 = affine.load %arg3[%11, %77] : memref<?x40xf64>
            %79 = affine.load %arg5[%77] : memref<?xf64>
            %80 = arith.mulf %14, %79 : f64
            %81 = arith.addf %78, %80 : f64
            %82 = affine.load %arg7[%77] : memref<?xf64>
            %83 = arith.mulf %15, %82 : f64
            %84 = arith.addf %81, %83 : f64
            affine.store %84, %arg3[%11, %77] : memref<?x40xf64>
            %85 = affine.apply #map3(%38)
            %86 = affine.load %arg3[%11, %85] : memref<?x40xf64>
            %87 = affine.load %arg5[%85] : memref<?xf64>
            %88 = arith.mulf %16, %87 : f64
            %89 = arith.addf %86, %88 : f64
            %90 = affine.load %arg7[%85] : memref<?xf64>
            %91 = arith.mulf %17, %90 : f64
            %92 = arith.addf %89, %91 : f64
            affine.store %92, %arg3[%11, %85] : memref<?x40xf64>
            %93 = affine.apply #map4(%38)
            %94 = affine.load %arg3[%11, %93] : memref<?x40xf64>
            %95 = affine.load %arg5[%93] : memref<?xf64>
            %96 = arith.mulf %18, %95 : f64
            %97 = arith.addf %94, %96 : f64
            %98 = affine.load %arg7[%93] : memref<?xf64>
            %99 = arith.mulf %19, %98 : f64
            %100 = arith.addf %97, %99 : f64
            affine.store %100, %arg3[%11, %93] : memref<?x40xf64>
            %101 = affine.load %arg3[%20, %38] : memref<?x40xf64>
            %102 = affine.load %arg5[%38] : memref<?xf64>
            %103 = arith.mulf %21, %102 : f64
            %104 = arith.addf %101, %103 : f64
            %105 = affine.load %arg7[%38] : memref<?xf64>
            %106 = arith.mulf %22, %105 : f64
            %107 = arith.addf %104, %106 : f64
            affine.store %107, %arg3[%20, %38] : memref<?x40xf64>
            %108 = affine.apply #map2(%38)
            %109 = affine.load %arg3[%20, %108] : memref<?x40xf64>
            %110 = affine.load %arg5[%108] : memref<?xf64>
            %111 = arith.mulf %23, %110 : f64
            %112 = arith.addf %109, %111 : f64
            %113 = affine.load %arg7[%108] : memref<?xf64>
            %114 = arith.mulf %24, %113 : f64
            %115 = arith.addf %112, %114 : f64
            affine.store %115, %arg3[%20, %108] : memref<?x40xf64>
            %116 = affine.apply #map3(%38)
            %117 = affine.load %arg3[%20, %116] : memref<?x40xf64>
            %118 = affine.load %arg5[%116] : memref<?xf64>
            %119 = arith.mulf %25, %118 : f64
            %120 = arith.addf %117, %119 : f64
            %121 = affine.load %arg7[%116] : memref<?xf64>
            %122 = arith.mulf %26, %121 : f64
            %123 = arith.addf %120, %122 : f64
            affine.store %123, %arg3[%20, %116] : memref<?x40xf64>
            %124 = affine.apply #map4(%38)
            %125 = affine.load %arg3[%20, %124] : memref<?x40xf64>
            %126 = affine.load %arg5[%124] : memref<?xf64>
            %127 = arith.mulf %27, %126 : f64
            %128 = arith.addf %125, %127 : f64
            %129 = affine.load %arg7[%124] : memref<?xf64>
            %130 = arith.mulf %28, %129 : f64
            %131 = arith.addf %128, %130 : f64
            affine.store %131, %arg3[%20, %124] : memref<?x40xf64>
            %132 = affine.load %arg3[%29, %38] : memref<?x40xf64>
            %133 = affine.load %arg5[%38] : memref<?xf64>
            %134 = arith.mulf %30, %133 : f64
            %135 = arith.addf %132, %134 : f64
            %136 = affine.load %arg7[%38] : memref<?xf64>
            %137 = arith.mulf %31, %136 : f64
            %138 = arith.addf %135, %137 : f64
            affine.store %138, %arg3[%29, %38] : memref<?x40xf64>
            %139 = affine.apply #map2(%38)
            %140 = affine.load %arg3[%29, %139] : memref<?x40xf64>
            %141 = affine.load %arg5[%139] : memref<?xf64>
            %142 = arith.mulf %32, %141 : f64
            %143 = arith.addf %140, %142 : f64
            %144 = affine.load %arg7[%139] : memref<?xf64>
            %145 = arith.mulf %33, %144 : f64
            %146 = arith.addf %143, %145 : f64
            affine.store %146, %arg3[%29, %139] : memref<?x40xf64>
            %147 = affine.apply #map3(%38)
            %148 = affine.load %arg3[%29, %147] : memref<?x40xf64>
            %149 = affine.load %arg5[%147] : memref<?xf64>
            %150 = arith.mulf %34, %149 : f64
            %151 = arith.addf %148, %150 : f64
            %152 = affine.load %arg7[%147] : memref<?xf64>
            %153 = arith.mulf %35, %152 : f64
            %154 = arith.addf %151, %153 : f64
            affine.store %154, %arg3[%29, %147] : memref<?x40xf64>
            %155 = affine.apply #map4(%38)
            %156 = affine.load %arg3[%29, %155] : memref<?x40xf64>
            %157 = affine.load %arg5[%155] : memref<?xf64>
            %158 = arith.mulf %36, %157 : f64
            %159 = arith.addf %156, %158 : f64
            %160 = affine.load %arg7[%155] : memref<?xf64>
            %161 = arith.mulf %37, %160 : f64
            %162 = arith.addf %159, %161 : f64
            affine.store %162, %arg3[%29, %155] : memref<?x40xf64>
          }
        }
      }
    }
    affine.parallel (%arg12) = (0) to (40) {
      affine.for %arg13 = 0 to 10 {
        %0 = affine.apply #map(%arg13)
        affine.parallel (%arg14) = (0) to (1) {
          %1 = affine.apply #map5(%arg12, %arg14)
          affine.for %arg15 = 0 to 1 {
            %2 = affine.apply #map1(%0, %arg15)
            %3 = affine.load %arg9[%1] : memref<?xf64>
            %4 = affine.load %arg3[%2, %1] : memref<?x40xf64>
            %5 = arith.mulf %arg2, %4 : f64
            %6 = affine.load %arg10[%2] : memref<?xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = arith.addf %3, %7 : f64
            affine.store %8, %arg9[%1] : memref<?xf64>
            %9 = affine.apply #map2(%2)
            %10 = affine.load %arg9[%1] : memref<?xf64>
            %11 = affine.load %arg3[%9, %1] : memref<?x40xf64>
            %12 = arith.mulf %arg2, %11 : f64
            %13 = affine.load %arg10[%9] : memref<?xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = arith.addf %10, %14 : f64
            affine.store %15, %arg9[%1] : memref<?xf64>
            %16 = affine.apply #map3(%2)
            %17 = affine.load %arg9[%1] : memref<?xf64>
            %18 = affine.load %arg3[%16, %1] : memref<?x40xf64>
            %19 = arith.mulf %arg2, %18 : f64
            %20 = affine.load %arg10[%16] : memref<?xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = arith.addf %17, %21 : f64
            affine.store %22, %arg9[%1] : memref<?xf64>
            %23 = affine.apply #map4(%2)
            %24 = affine.load %arg9[%1] : memref<?xf64>
            %25 = affine.load %arg3[%23, %1] : memref<?x40xf64>
            %26 = arith.mulf %arg2, %25 : f64
            %27 = affine.load %arg10[%23] : memref<?xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = arith.addf %24, %28 : f64
            affine.store %29, %arg9[%1] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg12 = 0 to 10 {
      %0 = affine.apply #map(%arg12)
      affine.for %arg13 = 0 to 1 {
        %1 = affine.apply #map1(%0, %arg13)
        %2 = affine.load %arg9[%1] : memref<?xf64>
        %3 = affine.load %arg11[%1] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        affine.store %4, %arg9[%1] : memref<?xf64>
        %5 = affine.apply #map2(%1)
        %6 = affine.load %arg9[%5] : memref<?xf64>
        %7 = affine.load %arg11[%5] : memref<?xf64>
        %8 = arith.addf %6, %7 : f64
        affine.store %8, %arg9[%5] : memref<?xf64>
        %9 = affine.apply #map3(%1)
        %10 = affine.load %arg9[%9] : memref<?xf64>
        %11 = affine.load %arg11[%9] : memref<?xf64>
        %12 = arith.addf %10, %11 : f64
        affine.store %12, %arg9[%9] : memref<?xf64>
        %13 = affine.apply #map4(%1)
        %14 = affine.load %arg9[%13] : memref<?xf64>
        %15 = affine.load %arg11[%13] : memref<?xf64>
        %16 = arith.addf %14, %15 : f64
        affine.store %16, %arg9[%13] : memref<?xf64>
      }
    }
    affine.parallel (%arg12) = (0) to (40) {
      affine.for %arg13 = 0 to 10 {
        %0 = affine.apply #map(%arg13)
        affine.parallel (%arg14) = (0) to (1) {
          %1 = affine.apply #map5(%arg12, %arg14)
          affine.for %arg15 = 0 to 1 {
            %2 = affine.apply #map1(%0, %arg15)
            %3 = affine.load %arg8[%1] : memref<?xf64>
            %4 = affine.load %arg3[%1, %2] : memref<?x40xf64>
            %5 = arith.mulf %arg1, %4 : f64
            %6 = affine.load %arg9[%2] : memref<?xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = arith.addf %3, %7 : f64
            affine.store %8, %arg8[%1] : memref<?xf64>
            %9 = affine.apply #map2(%2)
            %10 = affine.load %arg8[%1] : memref<?xf64>
            %11 = affine.load %arg3[%1, %9] : memref<?x40xf64>
            %12 = arith.mulf %arg1, %11 : f64
            %13 = affine.load %arg9[%9] : memref<?xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = arith.addf %10, %14 : f64
            affine.store %15, %arg8[%1] : memref<?xf64>
            %16 = affine.apply #map3(%2)
            %17 = affine.load %arg8[%1] : memref<?xf64>
            %18 = affine.load %arg3[%1, %16] : memref<?x40xf64>
            %19 = arith.mulf %arg1, %18 : f64
            %20 = affine.load %arg9[%16] : memref<?xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = arith.addf %17, %21 : f64
            affine.store %22, %arg8[%1] : memref<?xf64>
            %23 = affine.apply #map4(%2)
            %24 = affine.load %arg8[%1] : memref<?xf64>
            %25 = affine.load %arg3[%1, %23] : memref<?x40xf64>
            %26 = arith.mulf %arg1, %25 : f64
            %27 = affine.load %arg9[%23] : memref<?xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = arith.addf %24, %28 : f64
            affine.store %29, %arg8[%1] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

