// RUN: verif-opt --verif-air-convert-channel %s | FileCheck %s

// CHECK: module
module {
// CHECK-DAG: [[BUF_ARR:%.*]] = memref.alloc() : memref<1x2xmemref<?xi64>>
// CHECK-DAG: [[SEM_ARR:%.*]] = memref.alloc() : memref<1x2x!verif.semaphore>
// CHECK-DAG: [[CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[CST1:%.*]] = arith.constant 1 : index
// CHECK: [[SIZE1:%.*]] = arith.constant 1 : index
// CHECK: scf.for [[I1:%.*]] = [[CST0]] to [[SIZE1]] step [[CST1]]
// CHECK: [[SIZE2:%.*]] = arith.constant 2 : index
// CHECK: scf.for [[I2:%.*]] = [[CST0]] to [[SIZE2]] step [[CST1]]
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
// CHECK: [[PUT_CST2:%.*]] = arith.constant 2 : index
// CHECK: scf.for [[PUT_I:%.*]] = [[PUT_CST0]] to [[PUT_CST2]] step [[PUT_CST1]]
// CHECK: [[PUTSEM:%.*]] = memref.load [[SEM_ARR]][[[CH_CST0]], [[PUT_I]]]
// CHECK: verif.semaphore.wait [[PUTSEM]], [[PUT_CST0]]
// CHECK: [[PUTBUFFER:%.*]] = memref.load [[BUF_ARR]][[[CH_CST0]], [[PUT_I]]]
// CHECK: memref.copy [[A]], [[PUTBUFFER]]
// CHECK: verif.semaphore.set [[PUTSEM]], [[PUT_CST1]]
// CHECK-NOT: air.channel.put
  air.channel.put @channel[%0, %0] (%a[] [] []) : (memref<1xi64>)

// CHECK-DAG: [[GET_CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[GET_CST1:%.*]] = arith.constant 1 : index
// CHECK: [[GETSEM:%.*]] = memref.load [[SEM_ARR]][[[CH_CST0]], [[CH_CST1]]]
// CHECK: verif.semaphore.wait [[GETSEM]], [[GET_CST1]]
// CHECK: [[GETBUFFER:%.*]] = memref.load [[BUF_ARR]][[[CH_CST0]], [[CH_CST1]]]
// CHECK: memref.copy [[GETBUFFER]], [[A]]
// CHECK: verif.semaphore.set [[GETSEM]], [[GET_CST0]]
// CHECK-NOT: air.channel.get
  air.channel.get @channel[%0, %1] (%a[] [] []) : (memref<1xi64>)
}

