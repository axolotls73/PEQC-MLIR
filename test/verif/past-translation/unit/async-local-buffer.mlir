// COM: checking for no conflicts here since %local isn't shared

// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c a | grep YES


//--- input.mlir

module {
    func.func @async_test () -> () {
        %0 = arith.constant 0 : index
        %1 = arith.constant 1 : index
        %3 = arith.constant 3 : index
// CHECK: #pragma peqc async_execute
        scf.for %i = %0 to %3 step %1 {
            %token = async.execute {
                %local = memref.alloc() : memref<1xi32>
                %5 = arith.constant 30 : i32
                memref.store %5, %local[%0] : memref<1xi32>
                async.yield
            }
            scf.yield
        }
        return
    }
}

//--- epilogue.c

{
  // #pragma peqc async_execute
  // {
    int a = 5;
    async_test();
  // }
}
