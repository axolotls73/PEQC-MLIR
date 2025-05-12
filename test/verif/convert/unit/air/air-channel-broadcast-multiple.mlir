
//
// air-channel-broadcast-multiple.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK-DAG: memref.global "private" @[[BUF_ARR:.*]] memref<1x1x4x5xi64>
// CHECK-DAG: memref.global "private" @[[SEM_ARR:.*]] memref<1x1x4x5x!verif.semaphore>
// CHECK-NOT: air.channel
  air.channel @channel [1, 1] {broadcast_shape = [4, 5]}

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

// CHECK-DAG:   [[PUT_CST4:%.*]] = arith.constant 4
// CHECK-DAG:   [[PUT_CST5:%.*]] = arith.constant 5
// CHECK:   scf.parallel ([[PARITER1:%.*]], [[PARITER2:%.*]]) = ([[PUT_CST0]], [[PUT_CST0]]) to ([[PUT_CST4]], [[PUT_CST5]]) step ([[PUT_CST1]], [[PUT_CST1]])
// CHECK:     [[PUTSEM:%.*]] = memref.load [[SEM_ARR_PUT]][[[PUT_CST0]], [[PUT_CST0]], [[PARITER1]], [[PARITER2]]]
// CHECK:     [[PUTWAIT:%.*]] = arith.constant 0
// CHECK:     verif.semaphore.wait [[PUTSEM]], [[PUTWAIT]]
// CHECK:     [[PUTVAL:%.*]] = memref.load [[A]][[[PUT_DEL]]]
// CHECK:     memref.store [[PUTVAL]], [[BUF_ARR_PUT]][[[PUT_CST0]], [[PUT_CST0]], [[PARITER1]], [[PARITER2]]]
// CHECK:     [[PUTSET:%.*]] = arith.constant 1
// CHECK:     verif.semaphore.set [[PUTSEM]], [[PUTSET]]

// CHECK-NOT: air.channel.put
  air.channel.put @channel[%0, %0] (%a[] [] []) : (memref<1xi64>)
}

