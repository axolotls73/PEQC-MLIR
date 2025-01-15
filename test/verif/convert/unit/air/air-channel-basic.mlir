// RUN: verif-opt --verif-air-convert-channel %s | FileCheck %s

// CHECK: module
module {
// CHECK-DAG: memref.global "private" @[[BUF_ARR:.*]] memref<1x1xmemref<?xi32>>
// CHECK-DAG: memref.global "private" @[[SEM_ARR:.*]] memref<1x1x!verif.semaphore>
// CHECK-DAG: [[CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[CST1:%.*]] = arith.constant 1 : index
// CHECK-DAG: [[SEM_ARR_CH:%.*]] = memref.get_global @[[SEM_ARR]]
// CHECK: [[SIZE1:%.*]] = arith.constant 1 : index
// CHECK: scf.for [[I1:%.*]] = [[CST0]] to [[SIZE1]] step [[CST1]]
// CHECK: [[SIZE2:%.*]] = arith.constant 1 : index
// CHECK: scf.for [[I2:%.*]] = [[CST0]] to [[SIZE2]] step [[CST1]]
// CHECK: [[SEMINIT:%.*]] = verif.semaphore
// CHECK: verif.semaphore.set [[SEMINIT]], [[CST0]]
// CHECK: memref.store [[SEMINIT]], [[SEM_ARR_CH]][[[I1]], [[I2]]]
// CHECK-NOT: air.channel
  air.channel @channel [1, 1]

// CHECK: [[A:%.*]] = memref.alloc() : memref<1xi32>
  %a = memref.alloc() : memref<1xi32>

// CHECK-DAG: [[PUT_CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[PUT_CST1:%.*]] = arith.constant 1 : index
// CHECK-DAG: [[SEM_ARR_PUT:%.*]] = memref.get_global @[[SEM_ARR]]
// CHECK-DAG: [[BUF_ARR_PUT:%.*]] = memref.get_global @[[BUF_ARR]]
// CHECK: [[PUTSEM:%.*]] = memref.load [[SEM_ARR_PUT]][[[PUT_CST0]], [[PUT_CST0]]]
// CHECK: verif.semaphore.wait [[PUTSEM]], [[PUT_CST0]]
// CHECK: [[PUTBUFFER:%.*]] = memref.load [[BUF_ARR_PUT]][[[PUT_CST0]], [[PUT_CST0]]]
// CHECK: [[PBUF:%.*]] = unrealized_conversion_cast [[PUTBUFFER]]
// CHECK: memref.copy [[A]], [[PBUF]]
// CHECK: verif.semaphore.set [[PUTSEM]], [[PUT_CST1]]
// CHECK-NOT: air.channel.put
  air.channel.put @channel[] (%a[] [] []) : (memref<1xi32>)

// CHECK-DAG: [[GET_CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[GET_CST1:%.*]] = arith.constant 1 : index
// CHECK-DAG: [[SEM_ARR_GET:%.*]] = memref.get_global @[[SEM_ARR]]
// CHECK-DAG: [[BUF_ARR_GET:%.*]] = memref.get_global @[[BUF_ARR]]
// CHECK: [[GETSEM:%.*]] = memref.load [[SEM_ARR_GET]][[[GET_CST0]], [[GET_CST0]]]
// CHECK: verif.semaphore.wait [[GETSEM]], [[GET_CST1]]
// CHECK: [[GETBUFFER:%.*]] = memref.load [[BUF_ARR_GET]][[[GET_CST0]], [[GET_CST0]]]
// CHECK: [[GBUF:%.*]] = unrealized_conversion_cast [[GETBUFFER]]
// CHECK: memref.copy [[GBUF]], [[A]]
// CHECK: verif.semaphore.set [[GETSEM]], [[GET_CST0]]
// CHECK-NOT: air.channel.get
  air.channel.get @channel[] (%a[] [] []) : (memref<1xi32>)
}

