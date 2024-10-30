// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %testroot/add_epilogue.sh %t/result.c %t/epilogue.c %t/translation.c %testroot/..

// RUN: %pastchecker --enable-preprocessor %t/translation.c %t/translation.c a,b,c | grep YES


//--- input.mlir

module {
  func.func @async_test(%arg0: memref<10xi32>, %arg1: memref<10xi32>) -> () {
    %c0_i32 = arith.constant 0 : i32
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %i = %c0 to %c10 step %c1 {
      async.execute {
        %local = memref.alloc() : memref<10xi32>
        scf.for %j = %c0 to %c10 step %c1 {
          async.execute {
            // conflict
            // memref.store %c0_i32, %local[%c0] : memref<10xi32>
            // no conflict
            memref.store %c0_i32, %local[%j] : memref<10xi32>
            async.yield
          }
        }
        async.yield
      }
    }
    return
  }
}

//--- epilogue.c
{
  float* a;
  float* b;
  float* c;
  async_test(a, b, c);
}
