module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c39 = arith.constant 39 : index
    %c29 = arith.constant 29 : index
    %c7 = arith.constant 7 : index
    %c-2 = arith.constant -2 : index
    %c33 = arith.constant 33 : index
    %c40 = arith.constant 40 : index
    %c31 = arith.constant 31 : index
    %c-1 = arith.constant -1 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c32 = arith.constant 32 : index
    %c8 = arith.constant 8 : index
    %c10 = arith.constant 10 : index
    %c-8 = arith.constant -8 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg4, %c-8 : index
      %1 = arith.addi %0, %c10 : index
      %2 = arith.minsi %1, %c8 : index
      scf.for %arg5 = %c0 to %2 step %c1 {
        %3 = arith.muli %arg4, %c32 : index
        %4 = arith.muli %arg5, %c4 : index
        %5 = arith.addi %3, %4 : index
        %6 = memref.load %arg3[%5] : memref<?xf64>
        memref.store %6, %arg2[%5] : memref<?xf64>
        %7 = arith.addi %5, %c1 : index
        %8 = memref.load %arg3[%7] : memref<?xf64>
        memref.store %8, %arg2[%7] : memref<?xf64>
        %9 = arith.addi %5, %c2 : index
        %10 = memref.load %arg3[%9] : memref<?xf64>
        memref.store %10, %arg2[%9] : memref<?xf64>
        %11 = arith.addi %5, %c3 : index
        %12 = memref.load %arg3[%11] : memref<?xf64>
        memref.store %12, %arg2[%11] : memref<?xf64>
      }
    }
    scf.for %arg4 = %c0 to %c2 step %c1 {
      %0 = arith.addi %arg4, %c1 : index
      scf.for %arg5 = %c0 to %0 step %c1 {
        %1 = arith.addi %arg4, %c-1 : index
        %2 = arith.cmpi eq, %1, %c0 : index
        %3 = arith.addi %arg5, %c-1 : index
        %4 = arith.cmpi eq, %3, %c0 : index
        %5 = arith.andi %2, %4 : i1
        scf.if %5 {
          %25 = memref.load %arg2[%c32] : memref<?xf64>
          %26 = memref.load %arg1[%c32, %c31] : memref<?x40xf64>
          %27 = memref.load %arg2[%c31] : memref<?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.subf %25, %28 : f64
          memref.store %29, %arg2[%c32] : memref<?xf64>
        }
        %6 = arith.muli %arg4, %c32 : index
        %7 = arith.muli %arg5, %c32 : index
        %8 = arith.addi %7, %c1 : index
        %9 = arith.maxsi %6, %8 : index
        %10 = arith.muli %arg4, %c32 : index
        %11 = arith.addi %10, %c32 : index
        %12 = arith.muli %arg5, %c32 : index
        %13 = arith.addi %12, %c33 : index
        %14 = arith.minsi %11, %c40 : index
        %15 = arith.minsi %14, %13 : index
        scf.for %arg6 = %9 to %15 step %c1 {
          %25 = arith.muli %arg5, %c32 : index
          %26 = arith.maxsi %25, %c1 : index
          %27 = arith.addi %arg6, %c-1 : index
          scf.for %arg7 = %26 to %27 step %c1 {
            %39 = memref.load %arg2[%arg6] : memref<?xf64>
            %40 = arith.addi %arg7, %c-1 : index
            %41 = memref.load %arg1[%arg6, %40] : memref<?x40xf64>
            %42 = arith.addi %arg7, %c-1 : index
            %43 = memref.load %arg2[%42] : memref<?xf64>
            %44 = arith.mulf %41, %43 : f64
            %45 = arith.subf %39, %44 : f64
            memref.store %45, %arg2[%arg6] : memref<?xf64>
          }
          %28 = arith.cmpi eq, %arg4, %c0 : index
          %29 = arith.cmpi eq, %arg5, %c0 : index
          %30 = arith.andi %28, %29 : i1
          %31 = arith.addi %arg6, %c-1 : index
          %32 = arith.cmpi eq, %31, %c0 : index
          %33 = arith.andi %30, %32 : i1
          scf.if %33 {
            %39 = memref.load %arg2[%c0] : memref<?xf64>
            %40 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
            %41 = arith.divf %39, %40 : f64
            memref.store %41, %arg2[%c0] : memref<?xf64>
          }
          %34 = arith.addi %arg6, %c-2 : index
          %35 = arith.cmpi sge, %34, %c0 : index
          scf.if %35 {
            %39 = arith.addi %arg6, %c-1 : index
            %40 = memref.load %arg2[%39] : memref<?xf64>
            %41 = arith.addi %arg6, %c-1 : index
            %42 = arith.addi %arg6, %c-1 : index
            %43 = memref.load %arg1[%41, %42] : memref<?x40xf64>
            %44 = arith.divf %40, %43 : f64
            %45 = arith.addi %arg6, %c-1 : index
            memref.store %44, %arg2[%45] : memref<?xf64>
            %46 = memref.load %arg2[%arg6] : memref<?xf64>
            %47 = arith.addi %arg6, %c-2 : index
            %48 = memref.load %arg1[%arg6, %47] : memref<?x40xf64>
            %49 = arith.addi %arg6, %c-2 : index
            %50 = memref.load %arg2[%49] : memref<?xf64>
            %51 = arith.mulf %48, %50 : f64
            %52 = arith.subf %46, %51 : f64
            memref.store %52, %arg2[%arg6] : memref<?xf64>
          }
          %36 = arith.muli %arg5, %c-1 : index
          %37 = arith.addi %arg4, %36 : index
          %38 = arith.cmpi eq, %37, %c0 : index
          scf.if %38 {
            %39 = memref.load %arg2[%arg6] : memref<?xf64>
            %40 = arith.addi %arg6, %c-1 : index
            %41 = memref.load %arg1[%arg6, %40] : memref<?x40xf64>
            %42 = arith.addi %arg6, %c-1 : index
            %43 = memref.load %arg2[%42] : memref<?xf64>
            %44 = arith.mulf %41, %43 : f64
            %45 = arith.subf %39, %44 : f64
            memref.store %45, %arg2[%arg6] : memref<?xf64>
          }
        }
        %16 = arith.addi %arg4, %c-1 : index
        %17 = arith.cmpi eq, %16, %c0 : index
        %18 = arith.cmpi eq, %arg5, %c0 : index
        %19 = arith.andi %17, %18 : i1
        scf.if %19 {
          scf.for %arg6 = %c0 to %c7 step %c1 {
            %25 = arith.addi %arg6, %c33 : index
            scf.for %arg7 = %c0 to %c7 step %c1 {
              %26 = arith.muli %arg7, %c4 : index
              %27 = arith.addi %26, %c1 : index
              %28 = memref.load %arg2[%25] : memref<?xf64>
              %29 = arith.addi %27, %c-1 : index
              %30 = memref.load %arg1[%25, %29] : memref<?x40xf64>
              %31 = arith.addi %27, %c-1 : index
              %32 = memref.load %arg2[%31] : memref<?xf64>
              %33 = arith.mulf %30, %32 : f64
              %34 = arith.subf %28, %33 : f64
              memref.store %34, %arg2[%25] : memref<?xf64>
              %35 = arith.addi %27, %c1 : index
              %36 = memref.load %arg2[%25] : memref<?xf64>
              %37 = arith.addi %35, %c-1 : index
              %38 = memref.load %arg1[%25, %37] : memref<?x40xf64>
              %39 = arith.addi %35, %c-1 : index
              %40 = memref.load %arg2[%39] : memref<?xf64>
              %41 = arith.mulf %38, %40 : f64
              %42 = arith.subf %36, %41 : f64
              memref.store %42, %arg2[%25] : memref<?xf64>
              %43 = arith.addi %27, %c2 : index
              %44 = memref.load %arg2[%25] : memref<?xf64>
              %45 = arith.addi %43, %c-1 : index
              %46 = memref.load %arg1[%25, %45] : memref<?x40xf64>
              %47 = arith.addi %43, %c-1 : index
              %48 = memref.load %arg2[%47] : memref<?xf64>
              %49 = arith.mulf %46, %48 : f64
              %50 = arith.subf %44, %49 : f64
              memref.store %50, %arg2[%25] : memref<?xf64>
              %51 = arith.addi %27, %c3 : index
              %52 = memref.load %arg2[%25] : memref<?xf64>
              %53 = arith.addi %51, %c-1 : index
              %54 = memref.load %arg1[%25, %53] : memref<?x40xf64>
              %55 = arith.addi %51, %c-1 : index
              %56 = memref.load %arg2[%55] : memref<?xf64>
              %57 = arith.mulf %54, %56 : f64
              %58 = arith.subf %52, %57 : f64
              memref.store %58, %arg2[%25] : memref<?xf64>
            }
            scf.for %arg7 = %c0 to %c3 step %c1 {
              %26 = arith.addi %arg7, %c29 : index
              %27 = memref.load %arg2[%25] : memref<?xf64>
              %28 = arith.addi %26, %c-1 : index
              %29 = memref.load %arg1[%25, %28] : memref<?x40xf64>
              %30 = arith.addi %26, %c-1 : index
              %31 = memref.load %arg2[%30] : memref<?xf64>
              %32 = arith.mulf %29, %31 : f64
              %33 = arith.subf %27, %32 : f64
              memref.store %33, %arg2[%25] : memref<?xf64>
            }
          }
        }
        %20 = arith.addi %arg4, %c-1 : index
        %21 = arith.cmpi eq, %20, %c0 : index
        %22 = arith.addi %arg5, %c-1 : index
        %23 = arith.cmpi eq, %22, %c0 : index
        %24 = arith.andi %21, %23 : i1
        scf.if %24 {
          %25 = memref.load %arg2[%c39] : memref<?xf64>
          %26 = memref.load %arg1[%c39, %c39] : memref<?x40xf64>
          %27 = arith.divf %25, %26 : f64
          memref.store %27, %arg2[%c39] : memref<?xf64>
        }
      }
    }
    return
  }
}

