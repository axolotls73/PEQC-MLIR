#map = affine_map<(d0) -> (d0 * 128)>
#map1 = affine_map<(d0) -> (d0 * 32)>
#map2 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (32, -d0 + 60)>
#map7 = affine_map<(d0, d1) -> (d0 + d1)>
module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    affine.for %arg2 = 0 to 1 {
      %0 = affine.apply #map(%arg2)
      affine.for %arg3 = 0 to 2 {
        %1 = affine.apply #map1(%arg3)
        affine.for %arg4 = 0 to 1 {
          %2 = affine.apply #map(%arg4)
          affine.for %arg5 = 0 to 15 {
            %3 = affine.apply #map2(%0, %arg5)
            %4 = affine.apply #map3(%3)
            %5 = affine.apply #map4(%3)
            %6 = affine.apply #map5(%3)
            affine.for %arg6 = 0 to min #map6(%1) {
              %7 = affine.apply #map7(%1, %arg6)
              affine.for %arg7 = 0 to 15 {
                %8 = affine.apply #map2(%2, %arg7)
                %9 = affine.load %arg1[%7, %8] : memref<?x60xi32>
                %10 = affine.load %arg1[%7, %3] : memref<?x60xi32>
                %11 = affine.load %arg1[%3, %8] : memref<?x60xi32>
                %12 = arith.addi %10, %11 : i32
                %13 = arith.cmpi slt, %9, %12 : i32
                %14 = arith.select %13, %9, %12 : i32
                affine.store %14, %arg1[%7, %8] : memref<?x60xi32>
                %15 = affine.apply #map3(%8)
                %16 = affine.load %arg1[%7, %15] : memref<?x60xi32>
                %17 = affine.load %arg1[%7, %3] : memref<?x60xi32>
                %18 = affine.load %arg1[%3, %15] : memref<?x60xi32>
                %19 = arith.addi %17, %18 : i32
                %20 = arith.cmpi slt, %16, %19 : i32
                %21 = arith.select %20, %16, %19 : i32
                affine.store %21, %arg1[%7, %15] : memref<?x60xi32>
                %22 = affine.apply #map4(%8)
                %23 = affine.load %arg1[%7, %22] : memref<?x60xi32>
                %24 = affine.load %arg1[%7, %3] : memref<?x60xi32>
                %25 = affine.load %arg1[%3, %22] : memref<?x60xi32>
                %26 = arith.addi %24, %25 : i32
                %27 = arith.cmpi slt, %23, %26 : i32
                %28 = arith.select %27, %23, %26 : i32
                affine.store %28, %arg1[%7, %22] : memref<?x60xi32>
                %29 = affine.apply #map5(%8)
                %30 = affine.load %arg1[%7, %29] : memref<?x60xi32>
                %31 = affine.load %arg1[%7, %3] : memref<?x60xi32>
                %32 = affine.load %arg1[%3, %29] : memref<?x60xi32>
                %33 = arith.addi %31, %32 : i32
                %34 = arith.cmpi slt, %30, %33 : i32
                %35 = arith.select %34, %30, %33 : i32
                affine.store %35, %arg1[%7, %29] : memref<?x60xi32>
                %36 = affine.load %arg1[%7, %8] : memref<?x60xi32>
                %37 = affine.load %arg1[%7, %4] : memref<?x60xi32>
                %38 = affine.load %arg1[%4, %8] : memref<?x60xi32>
                %39 = arith.addi %37, %38 : i32
                %40 = arith.cmpi slt, %36, %39 : i32
                %41 = arith.select %40, %36, %39 : i32
                affine.store %41, %arg1[%7, %8] : memref<?x60xi32>
                %42 = affine.apply #map3(%8)
                %43 = affine.load %arg1[%7, %42] : memref<?x60xi32>
                %44 = affine.load %arg1[%7, %4] : memref<?x60xi32>
                %45 = affine.load %arg1[%4, %42] : memref<?x60xi32>
                %46 = arith.addi %44, %45 : i32
                %47 = arith.cmpi slt, %43, %46 : i32
                %48 = arith.select %47, %43, %46 : i32
                affine.store %48, %arg1[%7, %42] : memref<?x60xi32>
                %49 = affine.apply #map4(%8)
                %50 = affine.load %arg1[%7, %49] : memref<?x60xi32>
                %51 = affine.load %arg1[%7, %4] : memref<?x60xi32>
                %52 = affine.load %arg1[%4, %49] : memref<?x60xi32>
                %53 = arith.addi %51, %52 : i32
                %54 = arith.cmpi slt, %50, %53 : i32
                %55 = arith.select %54, %50, %53 : i32
                affine.store %55, %arg1[%7, %49] : memref<?x60xi32>
                %56 = affine.apply #map5(%8)
                %57 = affine.load %arg1[%7, %56] : memref<?x60xi32>
                %58 = affine.load %arg1[%7, %4] : memref<?x60xi32>
                %59 = affine.load %arg1[%4, %56] : memref<?x60xi32>
                %60 = arith.addi %58, %59 : i32
                %61 = arith.cmpi slt, %57, %60 : i32
                %62 = arith.select %61, %57, %60 : i32
                affine.store %62, %arg1[%7, %56] : memref<?x60xi32>
                %63 = affine.load %arg1[%7, %8] : memref<?x60xi32>
                %64 = affine.load %arg1[%7, %5] : memref<?x60xi32>
                %65 = affine.load %arg1[%5, %8] : memref<?x60xi32>
                %66 = arith.addi %64, %65 : i32
                %67 = arith.cmpi slt, %63, %66 : i32
                %68 = arith.select %67, %63, %66 : i32
                affine.store %68, %arg1[%7, %8] : memref<?x60xi32>
                %69 = affine.apply #map3(%8)
                %70 = affine.load %arg1[%7, %69] : memref<?x60xi32>
                %71 = affine.load %arg1[%7, %5] : memref<?x60xi32>
                %72 = affine.load %arg1[%5, %69] : memref<?x60xi32>
                %73 = arith.addi %71, %72 : i32
                %74 = arith.cmpi slt, %70, %73 : i32
                %75 = arith.select %74, %70, %73 : i32
                affine.store %75, %arg1[%7, %69] : memref<?x60xi32>
                %76 = affine.apply #map4(%8)
                %77 = affine.load %arg1[%7, %76] : memref<?x60xi32>
                %78 = affine.load %arg1[%7, %5] : memref<?x60xi32>
                %79 = affine.load %arg1[%5, %76] : memref<?x60xi32>
                %80 = arith.addi %78, %79 : i32
                %81 = arith.cmpi slt, %77, %80 : i32
                %82 = arith.select %81, %77, %80 : i32
                affine.store %82, %arg1[%7, %76] : memref<?x60xi32>
                %83 = affine.apply #map5(%8)
                %84 = affine.load %arg1[%7, %83] : memref<?x60xi32>
                %85 = affine.load %arg1[%7, %5] : memref<?x60xi32>
                %86 = affine.load %arg1[%5, %83] : memref<?x60xi32>
                %87 = arith.addi %85, %86 : i32
                %88 = arith.cmpi slt, %84, %87 : i32
                %89 = arith.select %88, %84, %87 : i32
                affine.store %89, %arg1[%7, %83] : memref<?x60xi32>
                %90 = affine.load %arg1[%7, %8] : memref<?x60xi32>
                %91 = affine.load %arg1[%7, %6] : memref<?x60xi32>
                %92 = affine.load %arg1[%6, %8] : memref<?x60xi32>
                %93 = arith.addi %91, %92 : i32
                %94 = arith.cmpi slt, %90, %93 : i32
                %95 = arith.select %94, %90, %93 : i32
                affine.store %95, %arg1[%7, %8] : memref<?x60xi32>
                %96 = affine.apply #map3(%8)
                %97 = affine.load %arg1[%7, %96] : memref<?x60xi32>
                %98 = affine.load %arg1[%7, %6] : memref<?x60xi32>
                %99 = affine.load %arg1[%6, %96] : memref<?x60xi32>
                %100 = arith.addi %98, %99 : i32
                %101 = arith.cmpi slt, %97, %100 : i32
                %102 = arith.select %101, %97, %100 : i32
                affine.store %102, %arg1[%7, %96] : memref<?x60xi32>
                %103 = affine.apply #map4(%8)
                %104 = affine.load %arg1[%7, %103] : memref<?x60xi32>
                %105 = affine.load %arg1[%7, %6] : memref<?x60xi32>
                %106 = affine.load %arg1[%6, %103] : memref<?x60xi32>
                %107 = arith.addi %105, %106 : i32
                %108 = arith.cmpi slt, %104, %107 : i32
                %109 = arith.select %108, %104, %107 : i32
                affine.store %109, %arg1[%7, %103] : memref<?x60xi32>
                %110 = affine.apply #map5(%8)
                %111 = affine.load %arg1[%7, %110] : memref<?x60xi32>
                %112 = affine.load %arg1[%7, %6] : memref<?x60xi32>
                %113 = affine.load %arg1[%6, %110] : memref<?x60xi32>
                %114 = arith.addi %112, %113 : i32
                %115 = arith.cmpi slt, %111, %114 : i32
                %116 = arith.select %115, %111, %114 : i32
                affine.store %116, %arg1[%7, %110] : memref<?x60xi32>
              }
            }
          }
        }
      }
    }
    return
  }
}

