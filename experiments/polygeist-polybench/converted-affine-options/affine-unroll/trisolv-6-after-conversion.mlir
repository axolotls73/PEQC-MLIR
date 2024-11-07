module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c39 = arith.constant 39 : index
    %c29 = arith.constant 29 : index
    %c-2 = arith.constant -2 : index
    %c33 = arith.constant 33 : index
    %c31 = arith.constant 31 : index
    %c-1 = arith.constant -1 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg4, %c32 : index
      %1 = arith.muli %arg4, %c32 : index
      %2 = arith.addi %1, %c32 : index
      %3 = arith.minsi %2, %c40 : index
      scf.for %arg5 = %0 to %3 step %c4 {
        %4 = memref.load %arg3[%arg5] : memref<?xf64>
        memref.store %4, %arg2[%arg5] : memref<?xf64>
        %5 = arith.addi %arg5, %c1 : index
        %6 = memref.load %arg3[%5] : memref<?xf64>
        memref.store %6, %arg2[%5] : memref<?xf64>
        %7 = arith.addi %arg5, %c2 : index
        %8 = memref.load %arg3[%7] : memref<?xf64>
        memref.store %8, %arg2[%7] : memref<?xf64>
        %9 = arith.addi %arg5, %c3 : index
        %10 = memref.load %arg3[%9] : memref<?xf64>
        memref.store %10, %arg2[%9] : memref<?xf64>
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
          scf.for %arg6 = %c33 to %c40 step %c1 {
            scf.for %arg7 = %c1 to %c29 step %c4 {
              %25 = memref.load %arg2[%arg6] : memref<?xf64>
              %26 = arith.addi %arg7, %c-1 : index
              %27 = memref.load %arg1[%arg6, %26] : memref<?x40xf64>
              %28 = arith.addi %arg7, %c-1 : index
              %29 = memref.load %arg2[%28] : memref<?xf64>
              %30 = arith.mulf %27, %29 : f64
              %31 = arith.subf %25, %30 : f64
              memref.store %31, %arg2[%arg6] : memref<?xf64>
              %32 = arith.addi %arg7, %c1 : index
              %33 = memref.load %arg2[%arg6] : memref<?xf64>
              %34 = arith.addi %32, %c-1 : index
              %35 = memref.load %arg1[%arg6, %34] : memref<?x40xf64>
              %36 = arith.addi %32, %c-1 : index
              %37 = memref.load %arg2[%36] : memref<?xf64>
              %38 = arith.mulf %35, %37 : f64
              %39 = arith.subf %33, %38 : f64
              memref.store %39, %arg2[%arg6] : memref<?xf64>
              %40 = arith.addi %arg7, %c2 : index
              %41 = memref.load %arg2[%arg6] : memref<?xf64>
              %42 = arith.addi %40, %c-1 : index
              %43 = memref.load %arg1[%arg6, %42] : memref<?x40xf64>
              %44 = arith.addi %40, %c-1 : index
              %45 = memref.load %arg2[%44] : memref<?xf64>
              %46 = arith.mulf %43, %45 : f64
              %47 = arith.subf %41, %46 : f64
              memref.store %47, %arg2[%arg6] : memref<?xf64>
              %48 = arith.addi %arg7, %c3 : index
              %49 = memref.load %arg2[%arg6] : memref<?xf64>
              %50 = arith.addi %48, %c-1 : index
              %51 = memref.load %arg1[%arg6, %50] : memref<?x40xf64>
              %52 = arith.addi %48, %c-1 : index
              %53 = memref.load %arg2[%52] : memref<?xf64>
              %54 = arith.mulf %51, %53 : f64
              %55 = arith.subf %49, %54 : f64
              memref.store %55, %arg2[%arg6] : memref<?xf64>
            }
            scf.for %arg7 = %c29 to %c32 step %c1 {
              %25 = memref.load %arg2[%arg6] : memref<?xf64>
              %26 = arith.addi %arg7, %c-1 : index
              %27 = memref.load %arg1[%arg6, %26] : memref<?x40xf64>
              %28 = arith.addi %arg7, %c-1 : index
              %29 = memref.load %arg2[%28] : memref<?xf64>
              %30 = arith.mulf %27, %29 : f64
              %31 = arith.subf %25, %30 : f64
              memref.store %31, %arg2[%arg6] : memref<?xf64>
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

