// REQUIRES: air
// RUN: verif-opt --verif-air-convert-channel %s | FileCheck %s

// CHECK: module
module {
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
// CHECK-NOT: air.channel.put
  %p = air.channel.put async [%t, %t2] @channel[] (%a[] [] []) : (memref<1xi32>)

// CHECK-DAG: async.execute
// CHECK-NOT: air.channel.get
  %g = air.channel.get async [%p] @channel[] (%a[] [] []) : (memref<1xi32>)

  air.execute [%g] {
    air.execute_terminator
  }
}

