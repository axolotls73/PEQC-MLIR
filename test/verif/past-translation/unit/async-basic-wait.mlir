//XFAIL: *

// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %testroot/add_epilogue.sh %t/result.c %t/epilogue.c %t/translation.c %testroot/..

// RUN: cat %t/result.c | FileCheck %t/input.mlir

// RUN: %pastchecker %t/translation.c %t/translation.c res | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c res | grep YES

// RUN: %pastchecker %t/translation.c %t/compare-bug.c res | not grep YES


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
        async.await %token : !async.token
        %ret = memref.load %a[%0] : memref<1xi32>
        return %ret : i32
    }
}

//--- epilogue.c

#pragma peqc async_execute
{
  int res_arr[1];
  async_test(res_arr);
  int res = res_arr[0];
}

//--- compare.c

#pragma pocc-region-start
{
  int res = 30;
}
#pragma pocc-region-end

//--- compare-bug.c

#pragma pocc-region-start
{
  res = 31;
}
#pragma pocc-region-end
