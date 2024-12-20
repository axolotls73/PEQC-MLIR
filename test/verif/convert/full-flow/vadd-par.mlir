// RUN: split-file %s %t

// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c x,y,z | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c x,y,z | grep YES

//--- input.mlir

module {
    func.func @vadd (%x : memref<128xf32>, %y : memref<128xf32>) -> (memref<128xf32>) {
        %c_0 = arith.constant 0 : index
        %c_1 = arith.constant 1 : index
        %c_128 = arith.constant 128 : index
        %z = memref.alloc() : memref<128xf32>

        %group = async.create_group %c_128 : !async.group
        scf.for %i = %c_0 to %c_128 step %c_1 {
            %token = async.execute {
                %x_i = memref.load %x[%i] : memref<128xf32>
                %y_i = memref.load %y[%i] : memref<128xf32>
                %z_i = arith.addf %x_i, %y_i : f32
                memref.store %z_i, %z[%i] : memref<128xf32>
                async.yield
            }
            async.add_to_group %token, %group : !async.token

            scf.yield
        }
        async.await_all %group
        return %z : memref<128xf32>
    }
}

//--- epilogue.c

{
    float* x;
    float* y;
    float* z;
    vadd(x, y, z);
}

//--- compare.c

#pragma pocc-region-start
{
    float* x;
    float* y;
    float* z;
    for (int i = 0; i < 128; i++) {
        z[i] = x[i] + y[i];
    }
}
#pragma pocc-region-end
