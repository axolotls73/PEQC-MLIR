// RUN: verif-opt --verif-convert-aie %s | FileCheck %s

module {
  %tile14 = aie.tile(1, 4)

// CHECK: func.func @[[FUNCNAME:.*]]([[FUNCARG:%.*]]: index)

// first block, to handle destination block ^bd0 in dma_start
// CHECK: [[BD0I:%.*]] = arith.constant [[BD0IVAL:.*]] : index
// CHECK: [[BD0CMP:%.*]] = arith.cmpi eq, [[FUNCARG]], [[BD0I]]
// fork to end block
// CHECK: async.execute
// CHECK:   [[CALLI:%.*]] = arith.constant [[ENDIVAL:.*]] : index
// CHECK:   func.call @[[FUNCNAME]]([[CALLI]])
// CHECK: cf.cond_br [[BD0CMP]], ^[[BD0BLOCK:.*]], ^[[ENDTESTBLOCK:.*]]([[FUNCARG]]

// second block, to handle destination block ^end in dma_start
// CHECK: ^[[ENDTESTBLOCK]]([[ENDBLOCKARG:.*]]: index
// CHECK: [[ENDI:%.*]] = arith.constant [[ENDIVAL]] : index
// CHECK: [[ENDCMP:%.*]] = arith.cmpi eq, [[ENDBLOCKARG]], [[ENDI]]
// CHECK: cf.cond_br [[ENDCMP]], ^[[ENDBLOCK:.*]], ^[[RETBLOCK:.*]]

// CHECK: ^[[BD0BLOCK]]
// CHECK:   cf.br ^[[ENDBLOCK]]

// CHECK: ^[[ENDBLOCK]]
// CHECK:   cf.br ^[[RETBLOCK]]

// CHECK: ^[[RETBLOCK]]
// CHECK:   return


// CHECK: async.execute
  %mem14 = aie.mem(%tile14) {

// CHECK: [[CALLVAL:%.*]] = arith.constant [[BD0IVAL]]
// CHECK: func.call @[[FUNCNAME]]([[CALLVAL]]
    aie.dma_start("MM2S", 0, ^bd0, ^end)

// CHECK: }
    ^bd0:
        aie.next_bd ^end
    ^end:
        aie.end
  }
}

