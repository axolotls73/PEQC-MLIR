// RUN: verif-opt --verif-air-execute-to-async %s | FileCheck %s

module {
// CHECK: [[TOKEN:%.*]] = async.execute
  %t = air.execute {
  }

// CHECK: [[WAIT_TOKEN:%.*]] = async.execute [[[TOKEN]]]
// CHECK: [[GROUP:%.*]] = async.create_group
// CHECK: async.add_to_group [[WAIT_TOKEN]], [[GROUP]]
// CHECK: async.await_all [[GROUP]]
// CHECK-NOT: air
  air.wait_all [%t]
}