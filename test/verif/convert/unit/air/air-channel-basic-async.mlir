// RUN: verif-opt --verif-air-convert-channel %s | FileCheck %s

// CHECK: module
module {
// CHECK-DAG: [[BUF_ARR:%.*]] = memref.alloc() : memref<1x1xmemref<?xi32>>
// CHECK-DAG: [[SEM_ARR:%.*]] = memref.alloc() : memref<1x1x!verif.semaphore>
// CHECK-DAG: [[CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[CST1:%.*]] = arith.constant 1 : index
// CHECK: [[SIZE1:%.*]] = arith.constant 1 : index
// CHECK: scf.for [[I1:%.*]] = [[CST0]] to [[SIZE1]] step [[CST1]]
// CHECK: [[SIZE2:%.*]] = arith.constant 1 : index
// CHECK: scf.for [[I2:%.*]] = [[CST0]] to [[SIZE2]] step [[CST1]]
// CHECK: [[SEMINIT:%.*]] = verif.semaphore
// CHECK: verif.semaphore.set [[SEMINIT]], [[CST0]]
// CHECK: memref.store [[SEMINIT]], [[SEM_ARR]][[[I1]], [[I2]]]
// CHECK-NOT: air.channel
  air.channel @channel [1, 1]

// CHECK: [[A:%.*]] = memref.alloc() : memref<1xi32>
  %a = memref.alloc() : memref<1xi32>

  %t = air.execute {
    air.execute_terminator
  }
  %t2 = air.execute {
    air.execute_terminator
  }

// CHECK-DAG: async.execute
// CHECK-DAG: [[PUT_CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[PUT_CST1:%.*]] = arith.constant 1 : index
// CHECK: [[PUTSEM:%.*]] = memref.load [[SEM_ARR]][[[PUT_CST0]], [[PUT_CST0]]]
// CHECK: verif.semaphore.wait [[PUTSEM]], [[PUT_CST0]]
// CHECK: [[PUTBUFFER:%.*]] = memref.load [[BUF_ARR]][[[PUT_CST0]], [[PUT_CST0]]]
// CHECK: [[PBUF:%.*]] = {{.*}}cast [[PUTBUFFER]]
// CHECK: memref.copy [[A]], [[PBUF]]
// CHECK: verif.semaphore.set [[PUTSEM]], [[PUT_CST1]]
// CHECK-NOT: air.channel.put
  %p = air.channel.put async [%t, %t2] @channel[] (%a[] [] []) : (memref<1xi32>)

// CHECK-DAG: async.execute
// CHECK-DAG: [[GET_CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[GET_CST1:%.*]] = arith.constant 1 : index
// CHECK: [[GETSEM:%.*]] = memref.load [[SEM_ARR]][[[GET_CST0]], [[GET_CST0]]]
// CHECK: verif.semaphore.wait [[GETSEM]], [[GET_CST1]]
// CHECK: [[GETBUFFER:%.*]] = memref.load [[BUF_ARR]][[[GET_CST0]], [[GET_CST0]]]
// CHECK: [[GBUF:%.*]] = {{.*}}cast [[GETBUFFER]]
// CHECK: memref.copy [[GBUF]], [[A]]
// CHECK: verif.semaphore.set [[GETSEM]], [[GET_CST0]]
// CHECK-NOT: air.channel.get
  %g = air.channel.get async [%p] @channel[] (%a[] [] []) : (memref<1xi32>)

  air.execute [%g] {
    air.execute_terminator
  }
}

