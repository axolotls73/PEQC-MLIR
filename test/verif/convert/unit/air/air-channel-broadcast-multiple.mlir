// RUN: verif-opt --verif-air-convert-channel %s | FileCheck %s

// CHECK: module
module {
// CHECK-DAG: [[BUF_ARR:%.*]] = memref.alloc() : memref<5x5xmemref<?xi64>>
// CHECK-DAG: [[SEM_ARR:%.*]] = memref.alloc() : memref<5x5x!verif.semaphore>
// CHECK-DAG: [[CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[CST1:%.*]] = arith.constant 1 : index
// CHECK: [[SIZE1:%.*]] = arith.constant 5 : index
// CHECK: scf.for [[I1:%.*]] = [[CST0]] to [[SIZE1]] step [[CST1]]
// CHECK: [[SIZE2:%.*]] = arith.constant 5 : index
// CHECK: scf.for [[I2:%.*]] = [[CST0]] to [[SIZE2]] step [[CST1]]
// CHECK-NOT: air.channel
  air.channel @channel [1, 1] {broadcast_shape = [5, 5]}

// CHECK: [[A:%.*]] = memref.alloc() : memref<1xi64>
  %a = memref.alloc() : memref<1xi64>
// CHECK: [[CH_CST0:%.*]] = arith.constant 0 : index
// CHECK: [[CH_CST1:%.*]] = arith.constant 1 : index
  %0 = arith.constant 0 : index
  %1 = arith.constant 1 : index

// CHECK: [[PUT_CST0:%.*]] = arith.constant 0 : index
// CHECK: [[PUT_CST1:%.*]] = arith.constant 1 : index
// CHECK: [[PUT_CST5:%.*]] = arith.constant 5 : index
// CHECK: scf.for [[PUT_I:%.*]] = [[PUT_CST0]] to [[PUT_CST5]] step [[PUT_CST1]]
// CHECK: [[PUT_CST5_2:%.*]] = arith.constant 5 : index
// CHECK: scf.for [[PUT_J:%.*]] = [[PUT_CST0]] to [[PUT_CST5_2]] step [[PUT_CST1]]
// CHECK: [[PUTSEM:%.*]] = memref.load [[SEM_ARR]][[[PUT_I]], [[PUT_J]]]
// CHECK: verif.semaphore.wait [[PUTSEM]], [[PUT_CST0]]
// CHECK: [[PUTBUFFER:%.*]] = memref.load [[BUF_ARR]][[[PUT_I]], [[PUT_J]]]
// CHECK: [[PBUF:%.*]] = {{.*}}cast [[PUTBUFFER]]
// CHECK: memref.copy [[A]], [[PBUF]]
// CHECK: verif.semaphore.set [[PUTSEM]], [[PUT_CST1]]
// CHECK-NOT: air.channel.put
  air.channel.put @channel[%0, %0] (%a[] [] []) : (memref<1xi64>)

// CHECK-DAG: [[GET_CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[GET_CST1:%.*]] = arith.constant 1 : index
// CHECK: [[GETSEM:%.*]] = memref.load [[SEM_ARR]][[[CH_CST0]], [[CH_CST1]]]
// CHECK: verif.semaphore.wait [[GETSEM]], [[GET_CST1]]
// CHECK: [[GETBUFFER:%.*]] = memref.load [[BUF_ARR]][[[CH_CST0]], [[CH_CST1]]]
// CHECK: [[GBUF:%.*]] = {{.*}}cast [[GETBUFFER]]
// CHECK: memref.copy [[GBUF]], [[A]]
// CHECK: verif.semaphore.set [[GETSEM]], [[GET_CST0]]
// CHECK-NOT: air.channel.get
  air.channel.get @channel[%0, %1] (%a[] [] []) : (memref<1xi64>)
}

