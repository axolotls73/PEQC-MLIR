// RUN: verif-opt --verif-air-convert-channel %s | FileCheck %s

// CHECK: module
module {
// CHECK-DAG: [[BUF_ARR:%.*]] = memref.alloc() : memref<1x1xmemref<?xi64>>
// CHECK-DAG: [[SEM_ARR:%.*]] = memref.alloc() : memref<1x1x!verif.semaphore>
// CHECK-DAG: [[CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[CST1:%.*]] = arith.constant 1 : index
// CHECK: [[SIZE1:%.*]] = arith.constant 1 : index
// CHECK: scf.for [[I1:%.*]] = [[CST0]] to [[SIZE1]] step [[CST1]]
// CHECK: [[SIZE2:%.*]] = arith.constant 1 : index
// CHECK: scf.for [[I2:%.*]] = [[CST0]] to [[SIZE2]] step [[CST1]]
// CHECK: [[SEMINIT:%.*]] = verif.semaphore init [[CST0]]
// CHECK: memref.store [[SEMINIT]], [[SEM_ARR]][[[I1]], [[I2]]]
  air.channel @channel [1, 1]

// CHECK: [[A:%.*]] = memref.alloc() : memref<1xi64>
  %a = memref.alloc() : memref<1xi64>

// CHECK-DAG: [[PUT_CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[PUT_CST1:%.*]] = arith.constant 1 : index
// CHECK: [[PUTSEM:%.*]] = memref.load [[SEM_ARR]][[[PUT_CST0]], [[PUT_CST0]]]
// CHECK: verif.semaphore.wait [[PUTSEM]], [[PUT_CST0]]
// CHECK: [[BUFFER:%.*]] = memref.load [[BUF_ARR]][[[PUT_CST0]], [[PUT_CST0]]]
// CHECK: memref.copy [[A]], [[BUFFER]]
// CHECK: verif.semaphore.set [[PUTSEM]], [[PUT_CST1]]
  air.channel.put @channel[] (%a[] [] []) : (memref<1xi64>)

  air.channel.get @channel[] (%a[] [] []) : (memref<1xi64>)
}

