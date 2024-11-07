#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    affine.for %arg2 = 0 to 15 {
      %0 = affine.apply #map(%arg2)
      affine.for %arg3 = 0 to 60 {
        affine.for %arg4 = 0 to 15 {
          %1 = affine.apply #map(%arg4)
          affine.for %arg5 = 0 to 1 {
            %2 = affine.apply #map1(%0, %arg5)
            affine.parallel (%arg6) = (0) to (1) {
              %3 = affine.apply #map2(%arg3, %arg6)
              %4 = affine.apply #map3(%2)
              %5 = affine.apply #map4(%2)
              %6 = affine.apply #map5(%2)
              affine.for %arg7 = 0 to 1 {
                %7 = affine.apply #map1(%1, %arg7)
                %8 = affine.load %arg1[%3, %7] : memref<?x60xi32>
                %9 = affine.load %arg1[%3, %2] : memref<?x60xi32>
                %10 = affine.load %arg1[%2, %7] : memref<?x60xi32>
                %11 = arith.addi %9, %10 : i32
                %12 = arith.cmpi slt, %8, %11 : i32
                %13 = arith.select %12, %8, %11 : i32
                affine.store %13, %arg1[%3, %7] : memref<?x60xi32>
                %14 = affine.apply #map3(%7)
                %15 = affine.load %arg1[%3, %14] : memref<?x60xi32>
                %16 = affine.load %arg1[%3, %2] : memref<?x60xi32>
                %17 = affine.load %arg1[%2, %14] : memref<?x60xi32>
                %18 = arith.addi %16, %17 : i32
                %19 = arith.cmpi slt, %15, %18 : i32
                %20 = arith.select %19, %15, %18 : i32
                affine.store %20, %arg1[%3, %14] : memref<?x60xi32>
                %21 = affine.apply #map4(%7)
                %22 = affine.load %arg1[%3, %21] : memref<?x60xi32>
                %23 = affine.load %arg1[%3, %2] : memref<?x60xi32>
                %24 = affine.load %arg1[%2, %21] : memref<?x60xi32>
                %25 = arith.addi %23, %24 : i32
                %26 = arith.cmpi slt, %22, %25 : i32
                %27 = arith.select %26, %22, %25 : i32
                affine.store %27, %arg1[%3, %21] : memref<?x60xi32>
                %28 = affine.apply #map5(%7)
                %29 = affine.load %arg1[%3, %28] : memref<?x60xi32>
                %30 = affine.load %arg1[%3, %2] : memref<?x60xi32>
                %31 = affine.load %arg1[%2, %28] : memref<?x60xi32>
                %32 = arith.addi %30, %31 : i32
                %33 = arith.cmpi slt, %29, %32 : i32
                %34 = arith.select %33, %29, %32 : i32
                affine.store %34, %arg1[%3, %28] : memref<?x60xi32>
                %35 = affine.load %arg1[%3, %7] : memref<?x60xi32>
                %36 = affine.load %arg1[%3, %4] : memref<?x60xi32>
                %37 = affine.load %arg1[%4, %7] : memref<?x60xi32>
                %38 = arith.addi %36, %37 : i32
                %39 = arith.cmpi slt, %35, %38 : i32
                %40 = arith.select %39, %35, %38 : i32
                affine.store %40, %arg1[%3, %7] : memref<?x60xi32>
                %41 = affine.apply #map3(%7)
                %42 = affine.load %arg1[%3, %41] : memref<?x60xi32>
                %43 = affine.load %arg1[%3, %4] : memref<?x60xi32>
                %44 = affine.load %arg1[%4, %41] : memref<?x60xi32>
                %45 = arith.addi %43, %44 : i32
                %46 = arith.cmpi slt, %42, %45 : i32
                %47 = arith.select %46, %42, %45 : i32
                affine.store %47, %arg1[%3, %41] : memref<?x60xi32>
                %48 = affine.apply #map4(%7)
                %49 = affine.load %arg1[%3, %48] : memref<?x60xi32>
                %50 = affine.load %arg1[%3, %4] : memref<?x60xi32>
                %51 = affine.load %arg1[%4, %48] : memref<?x60xi32>
                %52 = arith.addi %50, %51 : i32
                %53 = arith.cmpi slt, %49, %52 : i32
                %54 = arith.select %53, %49, %52 : i32
                affine.store %54, %arg1[%3, %48] : memref<?x60xi32>
                %55 = affine.apply #map5(%7)
                %56 = affine.load %arg1[%3, %55] : memref<?x60xi32>
                %57 = affine.load %arg1[%3, %4] : memref<?x60xi32>
                %58 = affine.load %arg1[%4, %55] : memref<?x60xi32>
                %59 = arith.addi %57, %58 : i32
                %60 = arith.cmpi slt, %56, %59 : i32
                %61 = arith.select %60, %56, %59 : i32
                affine.store %61, %arg1[%3, %55] : memref<?x60xi32>
                %62 = affine.load %arg1[%3, %7] : memref<?x60xi32>
                %63 = affine.load %arg1[%3, %5] : memref<?x60xi32>
                %64 = affine.load %arg1[%5, %7] : memref<?x60xi32>
                %65 = arith.addi %63, %64 : i32
                %66 = arith.cmpi slt, %62, %65 : i32
                %67 = arith.select %66, %62, %65 : i32
                affine.store %67, %arg1[%3, %7] : memref<?x60xi32>
                %68 = affine.apply #map3(%7)
                %69 = affine.load %arg1[%3, %68] : memref<?x60xi32>
                %70 = affine.load %arg1[%3, %5] : memref<?x60xi32>
                %71 = affine.load %arg1[%5, %68] : memref<?x60xi32>
                %72 = arith.addi %70, %71 : i32
                %73 = arith.cmpi slt, %69, %72 : i32
                %74 = arith.select %73, %69, %72 : i32
                affine.store %74, %arg1[%3, %68] : memref<?x60xi32>
                %75 = affine.apply #map4(%7)
                %76 = affine.load %arg1[%3, %75] : memref<?x60xi32>
                %77 = affine.load %arg1[%3, %5] : memref<?x60xi32>
                %78 = affine.load %arg1[%5, %75] : memref<?x60xi32>
                %79 = arith.addi %77, %78 : i32
                %80 = arith.cmpi slt, %76, %79 : i32
                %81 = arith.select %80, %76, %79 : i32
                affine.store %81, %arg1[%3, %75] : memref<?x60xi32>
                %82 = affine.apply #map5(%7)
                %83 = affine.load %arg1[%3, %82] : memref<?x60xi32>
                %84 = affine.load %arg1[%3, %5] : memref<?x60xi32>
                %85 = affine.load %arg1[%5, %82] : memref<?x60xi32>
                %86 = arith.addi %84, %85 : i32
                %87 = arith.cmpi slt, %83, %86 : i32
                %88 = arith.select %87, %83, %86 : i32
                affine.store %88, %arg1[%3, %82] : memref<?x60xi32>
                %89 = affine.load %arg1[%3, %7] : memref<?x60xi32>
                %90 = affine.load %arg1[%3, %6] : memref<?x60xi32>
                %91 = affine.load %arg1[%6, %7] : memref<?x60xi32>
                %92 = arith.addi %90, %91 : i32
                %93 = arith.cmpi slt, %89, %92 : i32
                %94 = arith.select %93, %89, %92 : i32
                affine.store %94, %arg1[%3, %7] : memref<?x60xi32>
                %95 = affine.apply #map3(%7)
                %96 = affine.load %arg1[%3, %95] : memref<?x60xi32>
                %97 = affine.load %arg1[%3, %6] : memref<?x60xi32>
                %98 = affine.load %arg1[%6, %95] : memref<?x60xi32>
                %99 = arith.addi %97, %98 : i32
                %100 = arith.cmpi slt, %96, %99 : i32
                %101 = arith.select %100, %96, %99 : i32
                affine.store %101, %arg1[%3, %95] : memref<?x60xi32>
                %102 = affine.apply #map4(%7)
                %103 = affine.load %arg1[%3, %102] : memref<?x60xi32>
                %104 = affine.load %arg1[%3, %6] : memref<?x60xi32>
                %105 = affine.load %arg1[%6, %102] : memref<?x60xi32>
                %106 = arith.addi %104, %105 : i32
                %107 = arith.cmpi slt, %103, %106 : i32
                %108 = arith.select %107, %103, %106 : i32
                affine.store %108, %arg1[%3, %102] : memref<?x60xi32>
                %109 = affine.apply #map5(%7)
                %110 = affine.load %arg1[%3, %109] : memref<?x60xi32>
                %111 = affine.load %arg1[%3, %6] : memref<?x60xi32>
                %112 = affine.load %arg1[%6, %109] : memref<?x60xi32>
                %113 = arith.addi %111, %112 : i32
                %114 = arith.cmpi slt, %110, %113 : i32
                %115 = arith.select %114, %110, %113 : i32
                affine.store %115, %arg1[%3, %109] : memref<?x60xi32>
              }
            }
          }
        }
      }
    }
    return
  }
}

