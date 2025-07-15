
//
// aie-objfifo-basic.mlir: This file is part of the PEQC-MLIR project.
//
// Copyright (C) 2025 Colorado State University
//
// This program can be redistributed and/or modified under the terms
// of the license specified in the LICENSE.txt file at the root of the
// project.
//
// Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
//          Emily Tucker <emily.tucker@colostate.edu>
// Author: Emily Tucker <emily.tucker@colostate.edu>
//
//

// REQUIRES: air
// RUN: verif-opt --verif-aie-convert-objfifo %s | FileCheck %s

module {
  aie.device(npu1_4col) {
    %tile14 = aie.tile(1, 4)
    %tile34 = aie.tile(3, 4)

// CHECK: memref.global "private" @[[BUFARRGLOBAL:.*]] : memref<5xmemref<16xi32>>
// CHECK: memref.global "private" @[[SEMARRGLOBAL:.*]] : memref<5x!verif.semaphore>
// CHECK-DAG: [[BUFARR:%.*]] = memref.get_global @[[BUFARRGLOBAL]]
// CHECK-DAG: [[SEMARR:%.*]] = memref.get_global @[[SEMARRGLOBAL]]

// CHECK-DAG: [[CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[CST1:%.*]] = arith.constant 1 : index
// CHECK-DAG: [[DEPTH:%.*]] = arith.constant 5 : index
// CHECK: scf.for [[I4:%.*]] = [[CST0]] to [[DEPTH]] step [[CST1]]
// CHECK:   [[BUFINIT:%.*]] = memref.alloc() : memref<16xi32>
// CHECK:   memref.store [[BUFINIT]], [[BUFARR]]
// CHECK:   [[SEMINIT:%.*]] = verif.semaphore(0
// CHECK:   memref.store [[SEMINIT]], [[SEMARR]]

// CHECK: memref.global "private" @[[STR_PROD_I:.*]] : memref<1xindex>
// CHECK: memref.global "private" @[[END_PROD_I:.*]] : memref<1xindex>
// CHECK: memref.global "private" @[[STR_CONS_I:.*]] : memref<1xindex>
// CHECK: memref.global "private" @[[END_CONS_I:.*]] : memref<1xindex>


    aie.objectfifo @of (%tile14, {%tile34}, 5 : i32) : !aie.objectfifo<memref<16xi32>>

    aie.core(%tile14) {
// CHECK: [[PROD_SUBVIEW:%.*]] = memref.alloc() : memref<1xmemref<16xi32>>
// CHECK: [[PROD_CST0:%.*]] = arith.constant 0
// CHECK: [[PROD_CST1:%.*]] = arith.constant 1
// CHECK: [[PROD_SIZE:%.*]] = arith.constant 1
// CHECK: [[PROD_BUFARR:%.*]] = memref.get_global @[[BUFARRGLOBAL]]
// CHECK: [[PROD_SEMARR:%.*]] = memref.get_global @[[SEMARRGLOBAL]]
// CHECK: [[PROD_SI_ARR:%.*]] = memref.get_global @[[STR_PROD_I]]
// CHECK: [[PROD_SI:%.*]] = memref.load [[PROD_SI_ARR]][[[PROD_CST0]]]
// CHECK: scf.for [[PROD_ITER:%.*]] = [[PROD_CST0]] to [[PROD_SIZE]] step [[PROD_CST1]]
// CHECK-DAG:   [[PROD_SEM:%.*]] = memref.load [[PROD_SEMARR]][[[PROD_SI]]]
// CHECK-DAG:   [[PROD_WAIT:%.*]] = arith.constant 0
// CHECK:   verif.semaphore.wait [[PROD_SEM]], [[PROD_WAIT]]
// CHECK:   [[PROD_BUFVAL:%.*]] = memref.load [[PROD_BUFARR]][[[PROD_SI]]]
// CHECK:   memref.store [[PROD_BUFVAL]], [[PROD_SUBVIEW]][[[PROD_ITER]]]
// CHECK:   [[PROD_SI2:%.*]] = arith.addi [[PROD_SI]], [[PROD_CST1]] : index
// CHECK:   [[PROD_SI3:%.*]] = arith.remsi [[PROD_SI2]], [[PROD_SIZE]] : index
// CHECK:   memref.store [[PROD_SI3]], [[PROD_SI_ARR]][[[PROD_CST0]]] : memref<1xindex>
// CHECK-NOT: aie.objectfifo.acquire
      %inputSubview = aie.objectfifo.acquire @of (Produce, 1) : !aie.objectfifosubview<memref<16xi32>>

// CHECK: [[PROD_SU_CST0:%.*]] = arith.constant 0
// CHECK: [[PROD_SUBVIEWUSE:%.*]] = memref.load [[PROD_SUBVIEW]][[[PROD_SU_CST0]]]
// CHECK-NOT: objectfifo.subview.access
      %input = aie.objectfifo.subview.access %inputSubview[0] : !aie.objectfifosubview<memref<16xi32>> -> memref<16xi32>

      %0 = arith.constant 0 : index
// CHECK: memref.load [[PROD_SUBVIEWUSE]]
      %a = memref.load %input[%0] : memref<16xi32>

      aie.objectfifo.release @of (Produce, 1)
      aie.end
    }

    aie.core(%tile34) {
// CHECK: [[CONS_SUBVIEW:%.*]] = memref.alloc() : memref<1xmemref<16xi32>>
// CHECK-NOT: objectfifo.acquire
      %inputSubview = aie.objectfifo.acquire @of (Consume, 1) : !aie.objectfifosubview<memref<16xi32>>

// CHECK: [[CONS_SUBVIEWUSE:%.*]] = memref.load [[CONS_SUBVIEW]]
// CHECK-NOT: objectfifo.subview.access
      %input = aie.objectfifo.subview.access %inputSubview[0] : !aie.objectfifosubview<memref<16xi32>> -> memref<16xi32>

      aie.objectfifo.release @of (Consume, 1)
      aie.end
    }
  }
}

