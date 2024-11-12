module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %c39 = arith.constant 39 : index
    %c40 = arith.constant 40 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c10 step %c1 {
      %1 = arith.muli %arg5, %c4 : index
      scf.for %arg6 = %c0 to %c4 step %c1 {
        %2 = arith.addi %1, %arg6 : index
        %3 = arith.muli %arg5, %c4 : index
        %4 = arith.addi %arg6, %3 : index
        scf.for %arg7 = %c0 to %4 step %c1 {
          %9 = memref.load %arg1[%2, %arg7] : memref<?x40xf64>
          memref.store %9, %alloca[] : memref<f64>
          %10 = arith.cmpi slt, %arg7, %c0 : index
          %11 = arith.subi %c-1, %arg7 : index
          %12 = arith.select %10, %11, %arg7 : index
          %13 = arith.divsi %12, %c4 : index
          %14 = arith.subi %c-1, %13 : index
          %15 = arith.select %10, %14, %13 : index
          scf.for %arg8 = %c0 to %15 step %c1 {
            %23 = arith.muli %arg8, %c4 : index
            %24 = memref.load %arg1[%2, %23] : memref<?x40xf64>
            %25 = memref.load %arg1[%23, %arg7] : memref<?x40xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = memref.load %alloca[] : memref<f64>
            %28 = arith.subf %27, %26 : f64
            memref.store %28, %alloca[] : memref<f64>
            %29 = arith.addi %23, %c1 : index
            %30 = memref.load %arg1[%2, %29] : memref<?x40xf64>
            %31 = memref.load %arg1[%29, %arg7] : memref<?x40xf64>
            %32 = arith.mulf %30, %31 : f64
            %33 = memref.load %alloca[] : memref<f64>
            %34 = arith.subf %33, %32 : f64
            memref.store %34, %alloca[] : memref<f64>
            %35 = arith.addi %23, %c2 : index
            %36 = memref.load %arg1[%2, %35] : memref<?x40xf64>
            %37 = memref.load %arg1[%35, %arg7] : memref<?x40xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloca[] : memref<f64>
            %40 = arith.subf %39, %38 : f64
            memref.store %40, %alloca[] : memref<f64>
            %41 = arith.addi %23, %c3 : index
            %42 = memref.load %arg1[%2, %41] : memref<?x40xf64>
            %43 = memref.load %arg1[%41, %arg7] : memref<?x40xf64>
            %44 = arith.mulf %42, %43 : f64
            %45 = memref.load %alloca[] : memref<f64>
            %46 = arith.subf %45, %44 : f64
            memref.store %46, %alloca[] : memref<f64>
          }
          %16 = arith.remsi %arg7, %c4 : index
          %17 = arith.cmpi slt, %16, %c0 : index
          %18 = arith.addi %16, %c4 : index
          %19 = arith.select %17, %18, %16 : index
          scf.for %arg8 = %c0 to %19 step %c1 {
            %23 = arith.cmpi slt, %arg7, %c0 : index
            %24 = arith.subi %c-1, %arg7 : index
            %25 = arith.select %23, %24, %arg7 : index
            %26 = arith.divsi %25, %c4 : index
            %27 = arith.subi %c-1, %26 : index
            %28 = arith.select %23, %27, %26 : index
            %29 = arith.muli %28, %c4 : index
            %30 = arith.addi %arg8, %29 : index
            %31 = memref.load %arg1[%2, %30] : memref<?x40xf64>
            %32 = memref.load %arg1[%30, %arg7] : memref<?x40xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = memref.load %alloca[] : memref<f64>
            %35 = arith.subf %34, %33 : f64
            memref.store %35, %alloca[] : memref<f64>
          }
          %20 = memref.load %alloca[] : memref<f64>
          %21 = memref.load %arg1[%arg7, %arg7] : memref<?x40xf64>
          %22 = arith.divf %20, %21 : f64
          memref.store %22, %arg1[%2, %arg7] : memref<?x40xf64>
        }
        %5 = arith.muli %arg6, %c-1 : index
        %6 = arith.muli %arg5, %c-4 : index
        %7 = arith.addi %5, %6 : index
        %8 = arith.addi %7, %c40 : index
        scf.for %arg7 = %c0 to %8 step %c1 {
          %9 = arith.addi %2, %arg7 : index
          %10 = memref.load %arg1[%2, %9] : memref<?x40xf64>
          memref.store %10, %alloca[] : memref<f64>
          %11 = arith.cmpi slt, %arg6, %c0 : index
          %12 = arith.subi %c-1, %arg6 : index
          %13 = arith.select %11, %12, %arg6 : index
          %14 = arith.divsi %13, %c4 : index
          %15 = arith.subi %c-1, %14 : index
          %16 = arith.select %11, %15, %14 : index
          %17 = arith.addi %arg5, %16 : index
          scf.for %arg8 = %c0 to %17 step %c1 {
            %23 = arith.muli %arg8, %c4 : index
            %24 = memref.load %arg1[%2, %23] : memref<?x40xf64>
            %25 = memref.load %arg1[%23, %9] : memref<?x40xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = memref.load %alloca[] : memref<f64>
            %28 = arith.subf %27, %26 : f64
            memref.store %28, %alloca[] : memref<f64>
            %29 = arith.addi %23, %c1 : index
            %30 = memref.load %arg1[%2, %29] : memref<?x40xf64>
            %31 = memref.load %arg1[%29, %9] : memref<?x40xf64>
            %32 = arith.mulf %30, %31 : f64
            %33 = memref.load %alloca[] : memref<f64>
            %34 = arith.subf %33, %32 : f64
            memref.store %34, %alloca[] : memref<f64>
            %35 = arith.addi %23, %c2 : index
            %36 = memref.load %arg1[%2, %35] : memref<?x40xf64>
            %37 = memref.load %arg1[%35, %9] : memref<?x40xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloca[] : memref<f64>
            %40 = arith.subf %39, %38 : f64
            memref.store %40, %alloca[] : memref<f64>
            %41 = arith.addi %23, %c3 : index
            %42 = memref.load %arg1[%2, %41] : memref<?x40xf64>
            %43 = memref.load %arg1[%41, %9] : memref<?x40xf64>
            %44 = arith.mulf %42, %43 : f64
            %45 = memref.load %alloca[] : memref<f64>
            %46 = arith.subf %45, %44 : f64
            memref.store %46, %alloca[] : memref<f64>
          }
          %18 = arith.remsi %2, %c4 : index
          %19 = arith.cmpi slt, %18, %c0 : index
          %20 = arith.addi %18, %c4 : index
          %21 = arith.select %19, %20, %18 : index
          scf.for %arg8 = %c0 to %21 step %c1 {
            %23 = arith.cmpi slt, %2, %c0 : index
            %24 = arith.subi %c-1, %2 : index
            %25 = arith.select %23, %24, %2 : index
            %26 = arith.divsi %25, %c4 : index
            %27 = arith.subi %c-1, %26 : index
            %28 = arith.select %23, %27, %26 : index
            %29 = arith.muli %28, %c4 : index
            %30 = arith.addi %arg8, %29 : index
            %31 = memref.load %arg1[%2, %30] : memref<?x40xf64>
            %32 = memref.load %arg1[%30, %9] : memref<?x40xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = memref.load %alloca[] : memref<f64>
            %35 = arith.subf %34, %33 : f64
            memref.store %35, %alloca[] : memref<f64>
          }
          %22 = memref.load %alloca[] : memref<f64>
          memref.store %22, %arg1[%2, %9] : memref<?x40xf64>
        }
      }
    }
    scf.for %arg5 = %c0 to %c40 step %c1 {
      %1 = async.create_group %c1 : !async.group
      %2 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
        %token = async.execute {
          %5 = arith.addi %arg5, %arg6 : index
          %6 = memref.load %arg2[%5] : memref<?xf64>
          memref.store %6, %alloca[] : memref<f64>
          %7 = arith.addi %arg5, %arg6 : index
          %8 = arith.cmpi slt, %7, %c0 : index
          %9 = arith.subi %c-1, %7 : index
          %10 = arith.select %8, %9, %7 : index
          %11 = arith.divsi %10, %c4 : index
          %12 = arith.subi %c-1, %11 : index
          %13 = arith.select %8, %12, %11 : index
          scf.for %arg8 = %c0 to %13 step %c1 {
            %20 = arith.muli %arg8, %c4 : index
            %21 = memref.load %arg1[%5, %20] : memref<?x40xf64>
            %22 = memref.load %arg4[%20] : memref<?xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = memref.load %alloca[] : memref<f64>
            %25 = arith.subf %24, %23 : f64
            memref.store %25, %alloca[] : memref<f64>
            %26 = arith.addi %20, %c1 : index
            %27 = memref.load %arg1[%5, %26] : memref<?x40xf64>
            %28 = memref.load %arg4[%26] : memref<?xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = memref.load %alloca[] : memref<f64>
            %31 = arith.subf %30, %29 : f64
            memref.store %31, %alloca[] : memref<f64>
            %32 = arith.addi %20, %c2 : index
            %33 = memref.load %arg1[%5, %32] : memref<?x40xf64>
            %34 = memref.load %arg4[%32] : memref<?xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = memref.load %alloca[] : memref<f64>
            %37 = arith.subf %36, %35 : f64
            memref.store %37, %alloca[] : memref<f64>
            %38 = arith.addi %20, %c3 : index
            %39 = memref.load %arg1[%5, %38] : memref<?x40xf64>
            %40 = memref.load %arg4[%38] : memref<?xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = memref.load %alloca[] : memref<f64>
            %43 = arith.subf %42, %41 : f64
            memref.store %43, %alloca[] : memref<f64>
          }
          %14 = arith.addi %arg5, %arg6 : index
          %15 = arith.remsi %14, %c4 : index
          %16 = arith.cmpi slt, %15, %c0 : index
          %17 = arith.addi %15, %c4 : index
          %18 = arith.select %16, %17, %15 : index
          scf.for %arg8 = %c0 to %18 step %c1 {
            %20 = arith.cmpi slt, %5, %c0 : index
            %21 = arith.subi %c-1, %5 : index
            %22 = arith.select %20, %21, %5 : index
            %23 = arith.divsi %22, %c4 : index
            %24 = arith.subi %c-1, %23 : index
            %25 = arith.select %20, %24, %23 : index
            %26 = arith.muli %25, %c4 : index
            %27 = arith.addi %arg8, %26 : index
            %28 = memref.load %arg1[%5, %27] : memref<?x40xf64>
            %29 = memref.load %arg4[%27] : memref<?xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = memref.load %alloca[] : memref<f64>
            %32 = arith.subf %31, %30 : f64
            memref.store %32, %alloca[] : memref<f64>
          }
          %19 = memref.load %alloca[] : memref<f64>
          memref.store %19, %arg4[%5] : memref<?xf64>
          async.yield
        }
        %3 = async.add_to_group %token, %1 : !async.token
        %4 = arith.addi %arg7, %c1 : index
        scf.yield %4 : index
      }
      async.await_all %1
    }
    scf.for %arg5 = %c0 to %c40 step %c1 {
      %1 = async.create_group %c1 : !async.group
      %2 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
        %token = async.execute {
          %5 = arith.addi %arg5, %arg6 : index
          %6 = arith.muli %5, %c-1 : index
          %7 = arith.addi %6, %c39 : index
          %8 = memref.load %arg4[%7] : memref<?xf64>
          memref.store %8, %alloca[] : memref<f64>
          %9 = arith.addi %arg5, %arg6 : index
          %10 = arith.cmpi slt, %9, %c0 : index
          %11 = arith.subi %c-1, %9 : index
          %12 = arith.select %10, %11, %9 : index
          %13 = arith.divsi %12, %c4 : index
          %14 = arith.subi %c-1, %13 : index
          %15 = arith.select %10, %14, %13 : index
          scf.for %arg8 = %c0 to %15 step %c1 {
            %30 = arith.muli %5, %c-1 : index
            %31 = arith.muli %arg8, %c4 : index
            %32 = arith.addi %30, %31 : index
            %33 = arith.addi %32, %c40 : index
            %34 = arith.muli %5, %c-1 : index
            %35 = arith.addi %34, %c39 : index
            %36 = memref.load %arg1[%35, %33] : memref<?x40xf64>
            %37 = memref.load %arg3[%33] : memref<?xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloca[] : memref<f64>
            %40 = arith.subf %39, %38 : f64
            memref.store %40, %alloca[] : memref<f64>
            %41 = arith.addi %33, %c1 : index
            %42 = arith.muli %5, %c-1 : index
            %43 = arith.addi %42, %c39 : index
            %44 = memref.load %arg1[%43, %41] : memref<?x40xf64>
            %45 = memref.load %arg3[%41] : memref<?xf64>
            %46 = arith.mulf %44, %45 : f64
            %47 = memref.load %alloca[] : memref<f64>
            %48 = arith.subf %47, %46 : f64
            memref.store %48, %alloca[] : memref<f64>
            %49 = arith.addi %33, %c2 : index
            %50 = arith.muli %5, %c-1 : index
            %51 = arith.addi %50, %c39 : index
            %52 = memref.load %arg1[%51, %49] : memref<?x40xf64>
            %53 = memref.load %arg3[%49] : memref<?xf64>
            %54 = arith.mulf %52, %53 : f64
            %55 = memref.load %alloca[] : memref<f64>
            %56 = arith.subf %55, %54 : f64
            memref.store %56, %alloca[] : memref<f64>
            %57 = arith.addi %33, %c3 : index
            %58 = arith.muli %5, %c-1 : index
            %59 = arith.addi %58, %c39 : index
            %60 = memref.load %arg1[%59, %57] : memref<?x40xf64>
            %61 = memref.load %arg3[%57] : memref<?xf64>
            %62 = arith.mulf %60, %61 : f64
            %63 = memref.load %alloca[] : memref<f64>
            %64 = arith.subf %63, %62 : f64
            memref.store %64, %alloca[] : memref<f64>
          }
          %16 = arith.addi %arg5, %arg6 : index
          %17 = arith.remsi %16, %c4 : index
          %18 = arith.cmpi slt, %17, %c0 : index
          %19 = arith.addi %17, %c4 : index
          %20 = arith.select %18, %19, %17 : index
          scf.for %arg8 = %c0 to %20 step %c1 {
            %30 = arith.muli %5, %c-1 : index
            %31 = arith.addi %30, %arg8 : index
            %32 = arith.cmpi slt, %5, %c0 : index
            %33 = arith.subi %c-1, %5 : index
            %34 = arith.select %32, %33, %5 : index
            %35 = arith.divsi %34, %c4 : index
            %36 = arith.subi %c-1, %35 : index
            %37 = arith.select %32, %36, %35 : index
            %38 = arith.muli %37, %c4 : index
            %39 = arith.addi %31, %38 : index
            %40 = arith.addi %39, %c40 : index
            %41 = arith.muli %5, %c-1 : index
            %42 = arith.addi %41, %c39 : index
            %43 = memref.load %arg1[%42, %40] : memref<?x40xf64>
            %44 = memref.load %arg3[%40] : memref<?xf64>
            %45 = arith.mulf %43, %44 : f64
            %46 = memref.load %alloca[] : memref<f64>
            %47 = arith.subf %46, %45 : f64
            memref.store %47, %alloca[] : memref<f64>
          }
          %21 = memref.load %alloca[] : memref<f64>
          %22 = arith.muli %5, %c-1 : index
          %23 = arith.addi %22, %c39 : index
          %24 = arith.muli %5, %c-1 : index
          %25 = arith.addi %24, %c39 : index
          %26 = memref.load %arg1[%23, %25] : memref<?x40xf64>
          %27 = arith.divf %21, %26 : f64
          %28 = arith.muli %5, %c-1 : index
          %29 = arith.addi %28, %c39 : index
          memref.store %27, %arg3[%29] : memref<?xf64>
          async.yield
        }
        %3 = async.add_to_group %token, %1 : !async.token
        %4 = arith.addi %arg7, %c1 : index
        scf.yield %4 : index
      }
      async.await_all %1
    }
    return
  }
}

