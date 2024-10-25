// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %testroot/add_epilogue.sh %t/result.c %t/epilogue.c %t/translation.c %testroot/..

// RUN: cat %t/result.c | FileCheck %t/input.mlir

// RUN: not %pastchecker %t/translation.c %t/translation.c res | grep conflict


//--- input.mlir

module {
    func.func @async_test () -> i32 {
        %a = memref.alloc() : memref<1xi32>
        %0 = arith.constant 0 : index
// CHECK: #pragma peqc async_execute
        %token = async.execute {
            %5 = arith.constant 30 : i32
            memref.store %5, %a[%0] : memref<1xi32>
            async.yield
        }
        %ret = memref.load %a[%0] : memref<1xi32>
        return %ret : i32
    }
}

//--- epilogue.c

{
  #pragma peqc async_execute
  {
    int* res_arr;
    async_test(res_arr);
    int res = res_arr[0];
  }
}
