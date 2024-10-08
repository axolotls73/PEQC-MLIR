// RUN: split-file %s %t && \
// RUN: verif-opt --verif-scf-parallel-to-async %t/input.mlir | FileCheck %s

//--- input.mlir

module {
    func.func @madd(%A: memref<128x128xi32>, %B: memref<128x128xi32>) -> (memref<128x128xi32>) {
        %C = memref.alloc() : memref<128x128xi32>
        %lb = arith.constant 0 : index
        %ub = arith.constant 128 : index
        %step = arith.constant 1 : index
// CHECK-DAG: [[LB:%.*]] = arith.constant 0
// CHECK-DAG: [[UB:%.*]] = arith.constant 128
// CHECK-DAG: [[STEP:%.*]] = arith.constant 1 :
// CHECK: scf.for [[ITER1:%.*]] = [[LB]] to [[UB]] step [[STEP]]
// CHECK: scf.for [[ITER2:%.*]] = [[LB]] to [[UB]] step [[STEP]]
        scf.parallel (%i, %j) = (%lb, %lb) to (%ub, %ub) step (%step, %step) -> () {
            %a = memref.load %A[%i, %j] : memref<128x128xi32>
            %b = memref.load %B[%i, %j] : memref<128x128xi32>
            %c = arith.addi %a, %b : i32
            memref.store %c, %C[%i, %j] : memref<128x128xi32>
        }
        return %C : memref<128x128xi32>
    }
}

//--- epilogue.c

{
  madd(A, B, C);
}

//--- compare.c

#pragma pocc-region-start
{
  for (int i = 0; i < 128; i++) {
    for (int j = 0; j < 128; j++) {
        C[i][j] + A[i][j] + B[i][j];
    }
  }
}
#pragma pocc-region-end
