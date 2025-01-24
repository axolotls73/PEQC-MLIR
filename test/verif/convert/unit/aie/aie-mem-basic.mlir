// RUN: verif-opt --verif-convert-aie %s | FileCheck %s

module {
  %tile14 = aie.tile(1, 4)

// function generated for dma_start ^bd0
// CHECK: func.func @[[MEM_FUNC_1:.*]]([[CHANNEL_1:%.*]]: index, [[ISIN_1:%.*]]: index)
// CHECK:   cf.br ^[[BD0_1:.*]]
// CHECK: ^[[BD0_1]]:
// CHECK:   cf.br ^[[END_1:.*]]
// CHECK: ^[[END_1]]:
// CHECK:   cf.br ^[[FUNCEND_1:.*]]
// CHECK: ^[[FUNCEND_1]]:
// CHECK:   return

// function generated for dma_start ^end
// CHECK: func.func @[[MEM_FUNC_2:.*]]([[CHANNEL_2:%.*]]: index, [[ISIN_2:%.*]]: index)
// CHECK:   cf.br ^[[END_2:.*]]
// CHECK: ^[[BD0_2:.*]]:
// CHECK:   cf.br ^[[END_2]]
// CHECK: ^[[END_2]]:
// CHECK:   cf.br ^[[FUNCEND_2:.*]]
// CHECK: ^[[FUNCEND_2]]:
// CHECK:   return


// CHECK: async.execute
// CHECK-NOT: aie.mem
  %mem14 = aie.mem(%tile14) {

// handle chain to ^end
// CHECK: async.execute
// CHECK-DAG: [[CHARG_2:%.*]] = arith.constant 0
// CHECK-DAG: [[DIRARG_2:%.*]] = arith.constant 0
// CHECK: func.call @[[MEM_FUNC_2]]([[CHARG_2]], [[DIRARG_2]]
// CHECK: }
    aie.dma_start("MM2S", 0, ^bd0, ^end)

// dst block to ^bd0
// CHECK-DAG: [[CHARG_1:%.*]] = arith.constant 0
// CHECK-DAG: [[DIRARG_1:%.*]] = arith.constant 0
// CHECK: func.call @[[MEM_FUNC_1]]([[CHARG_1]], [[DIRARG_1]]
    ^bd0:
        aie.next_bd ^end
    ^end:
        aie.end
  }
}
// CHECK: }

