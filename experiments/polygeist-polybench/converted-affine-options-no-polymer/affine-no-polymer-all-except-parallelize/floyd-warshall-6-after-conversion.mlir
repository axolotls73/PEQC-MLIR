module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c60 = arith.constant 60 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c15 = arith.constant 15 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c15 step %c1 {
      %0 = arith.muli %arg2, %c4 : index
      scf.for %arg3 = %c0 to %c60 step %c1 {
        scf.for %arg4 = %c0 to %c15 step %c1 {
          %1 = arith.muli %arg4, %c4 : index
          scf.for %arg5 = %c0 to %c1 step %c1 {
            %2 = arith.muli %arg5, %c4 : index
            %3 = arith.addi %0, %2 : index
            %4 = async.create_group %c1 : !async.group
            %5 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
              %token = async.execute {
                %8 = arith.addi %arg3, %arg6 : index
                %9 = arith.addi %3, %c1 : index
                %10 = arith.addi %3, %c2 : index
                %11 = arith.addi %3, %c3 : index
                scf.for %arg8 = %c0 to %c1 step %c1 {
                  %12 = arith.muli %arg8, %c4 : index
                  %13 = arith.addi %1, %12 : index
                  %14 = memref.load %arg1[%8, %13] : memref<?x60xi32>
                  %15 = memref.load %arg1[%8, %3] : memref<?x60xi32>
                  %16 = memref.load %arg1[%3, %13] : memref<?x60xi32>
                  %17 = arith.addi %15, %16 : i32
                  %18 = arith.cmpi slt, %14, %17 : i32
                  %19 = arith.select %18, %14, %17 : i32
                  memref.store %19, %arg1[%8, %13] : memref<?x60xi32>
                  %20 = arith.addi %13, %c1 : index
                  %21 = memref.load %arg1[%8, %20] : memref<?x60xi32>
                  %22 = memref.load %arg1[%8, %3] : memref<?x60xi32>
                  %23 = memref.load %arg1[%3, %20] : memref<?x60xi32>
                  %24 = arith.addi %22, %23 : i32
                  %25 = arith.cmpi slt, %21, %24 : i32
                  %26 = arith.select %25, %21, %24 : i32
                  memref.store %26, %arg1[%8, %20] : memref<?x60xi32>
                  %27 = arith.addi %13, %c2 : index
                  %28 = memref.load %arg1[%8, %27] : memref<?x60xi32>
                  %29 = memref.load %arg1[%8, %3] : memref<?x60xi32>
                  %30 = memref.load %arg1[%3, %27] : memref<?x60xi32>
                  %31 = arith.addi %29, %30 : i32
                  %32 = arith.cmpi slt, %28, %31 : i32
                  %33 = arith.select %32, %28, %31 : i32
                  memref.store %33, %arg1[%8, %27] : memref<?x60xi32>
                  %34 = arith.addi %13, %c3 : index
                  %35 = memref.load %arg1[%8, %34] : memref<?x60xi32>
                  %36 = memref.load %arg1[%8, %3] : memref<?x60xi32>
                  %37 = memref.load %arg1[%3, %34] : memref<?x60xi32>
                  %38 = arith.addi %36, %37 : i32
                  %39 = arith.cmpi slt, %35, %38 : i32
                  %40 = arith.select %39, %35, %38 : i32
                  memref.store %40, %arg1[%8, %34] : memref<?x60xi32>
                  %41 = memref.load %arg1[%8, %13] : memref<?x60xi32>
                  %42 = memref.load %arg1[%8, %9] : memref<?x60xi32>
                  %43 = memref.load %arg1[%9, %13] : memref<?x60xi32>
                  %44 = arith.addi %42, %43 : i32
                  %45 = arith.cmpi slt, %41, %44 : i32
                  %46 = arith.select %45, %41, %44 : i32
                  memref.store %46, %arg1[%8, %13] : memref<?x60xi32>
                  %47 = arith.addi %13, %c1 : index
                  %48 = memref.load %arg1[%8, %47] : memref<?x60xi32>
                  %49 = memref.load %arg1[%8, %9] : memref<?x60xi32>
                  %50 = memref.load %arg1[%9, %47] : memref<?x60xi32>
                  %51 = arith.addi %49, %50 : i32
                  %52 = arith.cmpi slt, %48, %51 : i32
                  %53 = arith.select %52, %48, %51 : i32
                  memref.store %53, %arg1[%8, %47] : memref<?x60xi32>
                  %54 = arith.addi %13, %c2 : index
                  %55 = memref.load %arg1[%8, %54] : memref<?x60xi32>
                  %56 = memref.load %arg1[%8, %9] : memref<?x60xi32>
                  %57 = memref.load %arg1[%9, %54] : memref<?x60xi32>
                  %58 = arith.addi %56, %57 : i32
                  %59 = arith.cmpi slt, %55, %58 : i32
                  %60 = arith.select %59, %55, %58 : i32
                  memref.store %60, %arg1[%8, %54] : memref<?x60xi32>
                  %61 = arith.addi %13, %c3 : index
                  %62 = memref.load %arg1[%8, %61] : memref<?x60xi32>
                  %63 = memref.load %arg1[%8, %9] : memref<?x60xi32>
                  %64 = memref.load %arg1[%9, %61] : memref<?x60xi32>
                  %65 = arith.addi %63, %64 : i32
                  %66 = arith.cmpi slt, %62, %65 : i32
                  %67 = arith.select %66, %62, %65 : i32
                  memref.store %67, %arg1[%8, %61] : memref<?x60xi32>
                  %68 = memref.load %arg1[%8, %13] : memref<?x60xi32>
                  %69 = memref.load %arg1[%8, %10] : memref<?x60xi32>
                  %70 = memref.load %arg1[%10, %13] : memref<?x60xi32>
                  %71 = arith.addi %69, %70 : i32
                  %72 = arith.cmpi slt, %68, %71 : i32
                  %73 = arith.select %72, %68, %71 : i32
                  memref.store %73, %arg1[%8, %13] : memref<?x60xi32>
                  %74 = arith.addi %13, %c1 : index
                  %75 = memref.load %arg1[%8, %74] : memref<?x60xi32>
                  %76 = memref.load %arg1[%8, %10] : memref<?x60xi32>
                  %77 = memref.load %arg1[%10, %74] : memref<?x60xi32>
                  %78 = arith.addi %76, %77 : i32
                  %79 = arith.cmpi slt, %75, %78 : i32
                  %80 = arith.select %79, %75, %78 : i32
                  memref.store %80, %arg1[%8, %74] : memref<?x60xi32>
                  %81 = arith.addi %13, %c2 : index
                  %82 = memref.load %arg1[%8, %81] : memref<?x60xi32>
                  %83 = memref.load %arg1[%8, %10] : memref<?x60xi32>
                  %84 = memref.load %arg1[%10, %81] : memref<?x60xi32>
                  %85 = arith.addi %83, %84 : i32
                  %86 = arith.cmpi slt, %82, %85 : i32
                  %87 = arith.select %86, %82, %85 : i32
                  memref.store %87, %arg1[%8, %81] : memref<?x60xi32>
                  %88 = arith.addi %13, %c3 : index
                  %89 = memref.load %arg1[%8, %88] : memref<?x60xi32>
                  %90 = memref.load %arg1[%8, %10] : memref<?x60xi32>
                  %91 = memref.load %arg1[%10, %88] : memref<?x60xi32>
                  %92 = arith.addi %90, %91 : i32
                  %93 = arith.cmpi slt, %89, %92 : i32
                  %94 = arith.select %93, %89, %92 : i32
                  memref.store %94, %arg1[%8, %88] : memref<?x60xi32>
                  %95 = memref.load %arg1[%8, %13] : memref<?x60xi32>
                  %96 = memref.load %arg1[%8, %11] : memref<?x60xi32>
                  %97 = memref.load %arg1[%11, %13] : memref<?x60xi32>
                  %98 = arith.addi %96, %97 : i32
                  %99 = arith.cmpi slt, %95, %98 : i32
                  %100 = arith.select %99, %95, %98 : i32
                  memref.store %100, %arg1[%8, %13] : memref<?x60xi32>
                  %101 = arith.addi %13, %c1 : index
                  %102 = memref.load %arg1[%8, %101] : memref<?x60xi32>
                  %103 = memref.load %arg1[%8, %11] : memref<?x60xi32>
                  %104 = memref.load %arg1[%11, %101] : memref<?x60xi32>
                  %105 = arith.addi %103, %104 : i32
                  %106 = arith.cmpi slt, %102, %105 : i32
                  %107 = arith.select %106, %102, %105 : i32
                  memref.store %107, %arg1[%8, %101] : memref<?x60xi32>
                  %108 = arith.addi %13, %c2 : index
                  %109 = memref.load %arg1[%8, %108] : memref<?x60xi32>
                  %110 = memref.load %arg1[%8, %11] : memref<?x60xi32>
                  %111 = memref.load %arg1[%11, %108] : memref<?x60xi32>
                  %112 = arith.addi %110, %111 : i32
                  %113 = arith.cmpi slt, %109, %112 : i32
                  %114 = arith.select %113, %109, %112 : i32
                  memref.store %114, %arg1[%8, %108] : memref<?x60xi32>
                  %115 = arith.addi %13, %c3 : index
                  %116 = memref.load %arg1[%8, %115] : memref<?x60xi32>
                  %117 = memref.load %arg1[%8, %11] : memref<?x60xi32>
                  %118 = memref.load %arg1[%11, %115] : memref<?x60xi32>
                  %119 = arith.addi %117, %118 : i32
                  %120 = arith.cmpi slt, %116, %119 : i32
                  %121 = arith.select %120, %116, %119 : i32
                  memref.store %121, %arg1[%8, %115] : memref<?x60xi32>
                }
                async.yield
              }
              %6 = async.add_to_group %token, %4 : !async.token
              %7 = arith.addi %arg7, %c1 : index
              scf.yield %7 : index
            }
            async.await_all %4
          }
        }
      }
    }
    return
  }
}

