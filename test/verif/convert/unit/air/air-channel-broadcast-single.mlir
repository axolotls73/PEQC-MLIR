
//
// air-channel-broadcast-single.mlir: This file is part of the PEQC-MLIR project.
//
// Copyright (C) 2024 Colorado State University
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
// RUN: verif-opt --verif-air-convert-channel %s | FileCheck %s


// CHECK: [[MAP:#.*]] = affine_map<(d0)[s0, s1] -> ((d0 + s0) * s1)>
// CHECK: module
module {
// CHECK-DAG: memref.global "private" @[[BUF_ARR:.*]] memref<1x1x1x2xi64>
// CHECK-DAG: memref.global "private" @[[SEM_ARR:.*]] memref<1x1x1x2x!verif.semaphore>
// CHECK-NOT: air.channel
  air.channel @channel [1, 1] {broadcast_shape = [1, 2]}

// CHECK: [[A:%.*]] = memref.alloc() : memref<1xi64>
  %a = memref.alloc() : memref<1xi64>
// CHECK: [[CH_CST0:%.*]] = arith.constant 0 : index
// CHECK: [[CH_CST1:%.*]] = arith.constant 1 : index
  %0 = arith.constant 0 : index
  %1 = arith.constant 1 : index


// CHECK: [[PUT_CST0:%.*]] = arith.constant 0 : index
// CHECK: [[PUT_CST1:%.*]] = arith.constant 1 : index
// CHECK: [[PUT_CST1_SIZE:%.*]] = arith.constant 1 : index
// CHECK: [[PUT_CST1_STRIDE:%.*]] = arith.constant 1 : index
// CHECK-DAG: [[SEM_ARR_PUT:%.*]] = memref.get_global @[[SEM_ARR]]
// CHECK-DAG: [[BUF_ARR_PUT:%.*]] = memref.get_global @[[BUF_ARR]]

// CHECK: scf.for [[ITER:%.*]] = [[PUT_CST0]] to [[PUT_CST1_SIZE]] step [[PUT_CST1]]
// CHECK:   [[PUT_LI:%.*]] = affine.apply [[MAP]]([[ITER]])[[[PUT_CST0]], [[PUT_CST1_STRIDE]]]
// CHECK:   [[PUT_DEL:%.*]] = affine.delinearize_index [[PUT_LI]] into (1)

// CHECK:   [[PUT_CST2:%.*]] = arith.constant 2
// CHECK:   scf.parallel ([[PARITER:%.*]]) = ([[PUT_CST0]]) to ([[PUT_CST2]]) step ([[PUT_CST1]])
// CHECK:     [[PUTSEM:%.*]] = memref.load [[SEM_ARR_PUT]][[[PUT_CST0]], [[PUT_CST0]], [[CH_CST0]], [[PARITER]]]
// CHECK:     [[PUTWAIT:%.*]] = arith.constant 0
// CHECK:     verif.semaphore.wait [[PUTSEM]], [[PUTWAIT]]
// CHECK:     [[PUTVAL:%.*]] = memref.load [[A]][[[PUT_DEL]]]
// CHECK:     memref.store [[PUTVAL]], [[BUF_ARR_PUT]][[[PUT_CST0]], [[PUT_CST0]], [[CH_CST0]], [[PARITER]]]
// CHECK:     [[PUTSET:%.*]] = arith.constant 1
// CHECK:     verif.semaphore.set [[PUTSEM]], [[PUTSET]]

// CHECK-NOT: air.channel.put
  air.channel.put @channel[%0, %0] (%a[] [] []) : (memref<1xi64>)

// CHECK: [[GET_CST0:%.*]] = arith.constant 0 : index
// CHECK: [[GET_CST1:%.*]] = arith.constant 1 : index
// CHECK: [[GET_CST1_SIZE:%.*]] = arith.constant 1 : index
// CHECK: [[GET_CST1_STRIDE:%.*]] = arith.constant 1 : index
// CHECK-DAG: [[SEM_ARR_GET:%.*]] = memref.get_global @[[SEM_ARR]]
// CHECK-DAG: [[BUF_ARR_GET:%.*]] = memref.get_global @[[BUF_ARR]]

// CHECK: scf.for [[ITER:%.*]] = [[GET_CST0]] to [[GET_CST1_SIZE]] step [[GET_CST1]]
// CHECK:   [[GET_LI:%.*]] = affine.apply [[MAP]]([[ITER]])[[[GET_CST0]], [[GET_CST1_STRIDE]]]
// CHECK:   [[GET_DEL:%.*]] = affine.delinearize_index [[GET_LI]] into (1)
// CHECK:   [[GETSEM:%.*]] = memref.load [[SEM_ARR_GET]][[[GET_CST0]], [[GET_CST0]], [[CH_CST0]], [[CH_CST1]]]
// CHECK:   [[GETWAIT:%.*]] = arith.constant 1
// CHECK:   verif.semaphore.wait [[GETSEM]], [[GETWAIT]]
// CHECK:   [[GETVAL:%.*]] = memref.load [[BUF_ARR_GET]][[[GET_CST0]], [[GET_CST0]], [[CH_CST0]], [[CH_CST1]]]
// CHECK:   memref.store [[GETVAL]], [[A]][[[GET_DEL]]]
// CHECK:   [[GETSET:%.*]] = arith.constant 0
// CHECK:   verif.semaphore.set [[GETSEM]], [[GETSET]]

// CHECK-NOT: air.channel.get
  air.channel.get @channel[%0, %1] (%a[] [] []) : (memref<1xi64>)
}

