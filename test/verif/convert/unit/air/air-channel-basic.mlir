
//
// air-channel-basic.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK-DAG: memref.global "private" @[[BUF_ARR:.*]] : memref<1x1xmemref<?xi32>>
// CHECK-DAG: memref.global "private" @[[SEM_ARR:.*]] : memref<1x1x!verif.semaphore>
// CHECK-DAG: [[CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[CST1:%.*]] = arith.constant 1 : index
// CHECK-DAG: [[SEM_ARR_CH:%.*]] = memref.get_global @[[SEM_ARR]]
// CHECK: [[SIZE1:%.*]] = arith.constant 1 : index
// CHECK: scf.for [[I1:%.*]] = [[CST0]] to [[SIZE1]] step [[CST1]]
// CHECK: [[SIZE2:%.*]] = arith.constant 1 : index
// CHECK: scf.for [[I2:%.*]] = [[CST0]] to [[SIZE2]] step [[CST1]]
// CHECK: [[SEMINIT:%.*]] = verif.semaphore(0 : index)
// CHECK: memref.store [[SEMINIT]], [[SEM_ARR_CH]][[[I1]], [[I2]]]
// CHECK-NOT: air.channel
  air.channel @channel [1, 1]

// CHECK: [[A:%.*]] = memref.alloc() : memref<1xi32>
  %a = memref.alloc() : memref<1xi32>

// CHECK: [[PUT_CST0:%.*]] = arith.constant 0 : index
// CHECK: [[PUT_CST1:%.*]] = arith.constant 1 : index
// CHECK: [[PUT_CST1_SIZE:%.*]] = arith.constant 1 : index
// CHECK: [[PUT_CST1_STRIDE:%.*]] = arith.constant 1 : index
// CHECK-DAG: [[SEM_ARR_PUT:%.*]] = memref.get_global @[[SEM_ARR]]
// CHECK-DAG: [[BUF_ARR_PUT:%.*]] = memref.get_global @[[BUF_ARR]]

// CHECK: scf.for [[ITER:%.*]] = [[PUT_CST0]] to [[PUT_CST1_SIZE]] step [[PUT_CST1]]
// CHECK:   [[PUT_LI:%.*]] = affine.apply [[MAP]]([[ITER]])[[[PUT_CST0]], [[PUT_CST1_STRIDE]]]
// CHECK:   [[PUT_DEL:%.*]] = affine.delinearize_index [[PUT_LI]] into (1)
// CHECK:   [[PUTSEM:%.*]] = memref.load [[SEM_ARR_PUT]][[[PUT_CST0]], [[PUT_CST0]]]
// CHECK:   [[PUTWAIT:%.*]] = arith.constant 0
// CHECK:   verif.semaphore.wait [[PUTSEM]], [[PUTWAIT]]
// CHECK:   [[PUTBUF:%.*]] = memref.load [[BUF_ARR_PUT]][[[PUT_CST0]], [[PUT_CST0]]]
// CHECK:   [[PUTVAL:%.*]] = memref.load [[A]][[[PUT_DEL]]]
// CHECK:   memref.store [[PUTVAL]], [[PUTBUF]][[[PUT_CST0]]]
// CHECK:   [[PUTSET:%.*]] = arith.constant 1
// CHECK:   verif.semaphore.set [[PUTSEM]], [[PUTSET]]
// CHECK-NOT: air.channel.put
  air.channel.put @channel[] (%a[] [] []) : (memref<1xi32>)

// CHECK: [[GET_CST0:%.*]] = arith.constant 0 : index
// CHECK: [[GET_CST1:%.*]] = arith.constant 1 : index
// CHECK: [[GET_CST1_SIZE:%.*]] = arith.constant 1 : index
// CHECK: [[GET_CST1_STRIDE:%.*]] = arith.constant 1 : index
// CHECK-DAG: [[SEM_ARR_GET:%.*]] = memref.get_global @[[SEM_ARR]]
// CHECK-DAG: [[BUF_ARR_GET:%.*]] = memref.get_global @[[BUF_ARR]]

// CHECK: scf.for [[ITER:%.*]] = [[GET_CST0]] to [[GET_CST1_SIZE]] step [[GET_CST1]]
// CHECK:   [[GET_LI:%.*]] = affine.apply [[MAP]]([[ITER]])[[[GET_CST0]], [[GET_CST1_STRIDE]]]
// CHECK:   [[GET_DEL:%.*]] = affine.delinearize_index [[GET_LI]] into (1)
// CHECK:   [[GETSEM:%.*]] = memref.load [[SEM_ARR_GET]][[[GET_CST0]], [[GET_CST0]]]
// CHECK:   [[GETWAIT:%.*]] = arith.constant 1
// CHECK:   verif.semaphore.wait [[GETSEM]], [[GETWAIT]]
// CHECK:   [[GETBUF:%.*]] = memref.load [[BUF_ARR_GET]][[[GET_CST0]], [[GET_CST0]]]
// CHECK:   [[GETVAL:%.*]] = memref.load [[GETBUF]][[[GET_CST0]]]
// CHECK:   memref.store [[GETVAL]], [[A]][[[GET_DEL]]]
// CHECK:   [[GETSET:%.*]] = arith.constant 0
// CHECK:   verif.semaphore.set [[GETSEM]], [[GETSET]]
// CHECK-NOT: air.channel.get
  air.channel.get @channel[] (%a[] [] []) : (memref<1xi32>)
}

