module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c60 = arith.constant 60 : index
    %c-32 = arith.constant -32 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c15 = arith.constant 15 : index
    %c32 = arith.constant 32 : index
    %c2 = arith.constant 2 : index
    %c128 = arith.constant 128 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg2 = %c0 to %c1 step %c1 iter_args(%arg3 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.muli %arg2, %c128 : index
        scf.for %arg4 = %c0 to %c2 step %c1 {
          %5 = arith.muli %arg4, %c32 : index
          scf.for %arg5 = %c0 to %c1 step %c1 {
            %6 = arith.muli %arg5, %c128 : index
            scf.for %arg6 = %c0 to %c15 step %c1 {
              %7 = arith.muli %arg6, %c4 : index
              %8 = arith.addi %4, %7 : index
              %9 = arith.addi %8, %c1 : index
              %10 = arith.addi %8, %c2 : index
              %11 = arith.addi %8, %c3 : index
              %12 = arith.muli %arg4, %c-32 : index
              %13 = arith.addi %12, %c60 : index
              %14 = arith.minsi %13, %c32 : index
              scf.for %arg7 = %c0 to %14 step %c1 {
                %15 = arith.addi %5, %arg7 : index
                scf.for %arg8 = %c0 to %c15 step %c1 {
                  %16 = arith.muli %arg8, %c4 : index
                  %17 = arith.addi %6, %16 : index
                  %18 = memref.load %arg1[%15, %17] : memref<?x60xi32>
                  %19 = memref.load %arg1[%15, %8] : memref<?x60xi32>
                  %20 = memref.load %arg1[%8, %17] : memref<?x60xi32>
                  %21 = arith.addi %19, %20 : i32
                  %22 = arith.cmpi slt, %18, %21 : i32
                  %23 = arith.select %22, %18, %21 : i32
                  memref.store %23, %arg1[%15, %17] : memref<?x60xi32>
                  %24 = arith.addi %17, %c1 : index
                  %25 = memref.load %arg1[%15, %24] : memref<?x60xi32>
                  %26 = memref.load %arg1[%15, %8] : memref<?x60xi32>
                  %27 = memref.load %arg1[%8, %24] : memref<?x60xi32>
                  %28 = arith.addi %26, %27 : i32
                  %29 = arith.cmpi slt, %25, %28 : i32
                  %30 = arith.select %29, %25, %28 : i32
                  memref.store %30, %arg1[%15, %24] : memref<?x60xi32>
                  %31 = arith.addi %17, %c2 : index
                  %32 = memref.load %arg1[%15, %31] : memref<?x60xi32>
                  %33 = memref.load %arg1[%15, %8] : memref<?x60xi32>
                  %34 = memref.load %arg1[%8, %31] : memref<?x60xi32>
                  %35 = arith.addi %33, %34 : i32
                  %36 = arith.cmpi slt, %32, %35 : i32
                  %37 = arith.select %36, %32, %35 : i32
                  memref.store %37, %arg1[%15, %31] : memref<?x60xi32>
                  %38 = arith.addi %17, %c3 : index
                  %39 = memref.load %arg1[%15, %38] : memref<?x60xi32>
                  %40 = memref.load %arg1[%15, %8] : memref<?x60xi32>
                  %41 = memref.load %arg1[%8, %38] : memref<?x60xi32>
                  %42 = arith.addi %40, %41 : i32
                  %43 = arith.cmpi slt, %39, %42 : i32
                  %44 = arith.select %43, %39, %42 : i32
                  memref.store %44, %arg1[%15, %38] : memref<?x60xi32>
                  %45 = memref.load %arg1[%15, %17] : memref<?x60xi32>
                  %46 = memref.load %arg1[%15, %9] : memref<?x60xi32>
                  %47 = memref.load %arg1[%9, %17] : memref<?x60xi32>
                  %48 = arith.addi %46, %47 : i32
                  %49 = arith.cmpi slt, %45, %48 : i32
                  %50 = arith.select %49, %45, %48 : i32
                  memref.store %50, %arg1[%15, %17] : memref<?x60xi32>
                  %51 = arith.addi %17, %c1 : index
                  %52 = memref.load %arg1[%15, %51] : memref<?x60xi32>
                  %53 = memref.load %arg1[%15, %9] : memref<?x60xi32>
                  %54 = memref.load %arg1[%9, %51] : memref<?x60xi32>
                  %55 = arith.addi %53, %54 : i32
                  %56 = arith.cmpi slt, %52, %55 : i32
                  %57 = arith.select %56, %52, %55 : i32
                  memref.store %57, %arg1[%15, %51] : memref<?x60xi32>
                  %58 = arith.addi %17, %c2 : index
                  %59 = memref.load %arg1[%15, %58] : memref<?x60xi32>
                  %60 = memref.load %arg1[%15, %9] : memref<?x60xi32>
                  %61 = memref.load %arg1[%9, %58] : memref<?x60xi32>
                  %62 = arith.addi %60, %61 : i32
                  %63 = arith.cmpi slt, %59, %62 : i32
                  %64 = arith.select %63, %59, %62 : i32
                  memref.store %64, %arg1[%15, %58] : memref<?x60xi32>
                  %65 = arith.addi %17, %c3 : index
                  %66 = memref.load %arg1[%15, %65] : memref<?x60xi32>
                  %67 = memref.load %arg1[%15, %9] : memref<?x60xi32>
                  %68 = memref.load %arg1[%9, %65] : memref<?x60xi32>
                  %69 = arith.addi %67, %68 : i32
                  %70 = arith.cmpi slt, %66, %69 : i32
                  %71 = arith.select %70, %66, %69 : i32
                  memref.store %71, %arg1[%15, %65] : memref<?x60xi32>
                  %72 = memref.load %arg1[%15, %17] : memref<?x60xi32>
                  %73 = memref.load %arg1[%15, %10] : memref<?x60xi32>
                  %74 = memref.load %arg1[%10, %17] : memref<?x60xi32>
                  %75 = arith.addi %73, %74 : i32
                  %76 = arith.cmpi slt, %72, %75 : i32
                  %77 = arith.select %76, %72, %75 : i32
                  memref.store %77, %arg1[%15, %17] : memref<?x60xi32>
                  %78 = arith.addi %17, %c1 : index
                  %79 = memref.load %arg1[%15, %78] : memref<?x60xi32>
                  %80 = memref.load %arg1[%15, %10] : memref<?x60xi32>
                  %81 = memref.load %arg1[%10, %78] : memref<?x60xi32>
                  %82 = arith.addi %80, %81 : i32
                  %83 = arith.cmpi slt, %79, %82 : i32
                  %84 = arith.select %83, %79, %82 : i32
                  memref.store %84, %arg1[%15, %78] : memref<?x60xi32>
                  %85 = arith.addi %17, %c2 : index
                  %86 = memref.load %arg1[%15, %85] : memref<?x60xi32>
                  %87 = memref.load %arg1[%15, %10] : memref<?x60xi32>
                  %88 = memref.load %arg1[%10, %85] : memref<?x60xi32>
                  %89 = arith.addi %87, %88 : i32
                  %90 = arith.cmpi slt, %86, %89 : i32
                  %91 = arith.select %90, %86, %89 : i32
                  memref.store %91, %arg1[%15, %85] : memref<?x60xi32>
                  %92 = arith.addi %17, %c3 : index
                  %93 = memref.load %arg1[%15, %92] : memref<?x60xi32>
                  %94 = memref.load %arg1[%15, %10] : memref<?x60xi32>
                  %95 = memref.load %arg1[%10, %92] : memref<?x60xi32>
                  %96 = arith.addi %94, %95 : i32
                  %97 = arith.cmpi slt, %93, %96 : i32
                  %98 = arith.select %97, %93, %96 : i32
                  memref.store %98, %arg1[%15, %92] : memref<?x60xi32>
                  %99 = memref.load %arg1[%15, %17] : memref<?x60xi32>
                  %100 = memref.load %arg1[%15, %11] : memref<?x60xi32>
                  %101 = memref.load %arg1[%11, %17] : memref<?x60xi32>
                  %102 = arith.addi %100, %101 : i32
                  %103 = arith.cmpi slt, %99, %102 : i32
                  %104 = arith.select %103, %99, %102 : i32
                  memref.store %104, %arg1[%15, %17] : memref<?x60xi32>
                  %105 = arith.addi %17, %c1 : index
                  %106 = memref.load %arg1[%15, %105] : memref<?x60xi32>
                  %107 = memref.load %arg1[%15, %11] : memref<?x60xi32>
                  %108 = memref.load %arg1[%11, %105] : memref<?x60xi32>
                  %109 = arith.addi %107, %108 : i32
                  %110 = arith.cmpi slt, %106, %109 : i32
                  %111 = arith.select %110, %106, %109 : i32
                  memref.store %111, %arg1[%15, %105] : memref<?x60xi32>
                  %112 = arith.addi %17, %c2 : index
                  %113 = memref.load %arg1[%15, %112] : memref<?x60xi32>
                  %114 = memref.load %arg1[%15, %11] : memref<?x60xi32>
                  %115 = memref.load %arg1[%11, %112] : memref<?x60xi32>
                  %116 = arith.addi %114, %115 : i32
                  %117 = arith.cmpi slt, %113, %116 : i32
                  %118 = arith.select %117, %113, %116 : i32
                  memref.store %118, %arg1[%15, %112] : memref<?x60xi32>
                  %119 = arith.addi %17, %c3 : index
                  %120 = memref.load %arg1[%15, %119] : memref<?x60xi32>
                  %121 = memref.load %arg1[%15, %11] : memref<?x60xi32>
                  %122 = memref.load %arg1[%11, %119] : memref<?x60xi32>
                  %123 = arith.addi %121, %122 : i32
                  %124 = arith.cmpi slt, %120, %123 : i32
                  %125 = arith.select %124, %120, %123 : i32
                  memref.store %125, %arg1[%15, %119] : memref<?x60xi32>
                }
              }
            }
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg3, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

