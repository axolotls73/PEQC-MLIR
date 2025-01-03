// RUN: verif-opt --verif-air-convert-channel %s | FileCheck %s

module {
// CHECK-DAG: [[BUF_ARR:%.*]] = memref.alloc() : memref<1x1xmemref<?xi32>>
// CHECK-DAG: [[SEM_ARR:%.*]] = memref.alloc() : memref<1x1x!verif.semaphore>
  air.channel @channel [1, 1]

  %2 = arith.constant 2 : index
// CHECK: air.launch {{.*}} args([[L_BUF_ARR:%.*]]=[[BUF_ARR]], [[L_SEM_ARR:%.*]]=[[SEM_ARR]])
  air.launch @launch_0 (%arg3, %arg4) in (%arg5=%2, %arg6=%2) {
// CHECK: air.segment {{.*}} args([[S_BUF_ARR:%.*]]=[[L_BUF_ARR]], [[S_SEM_ARR:%.*]]=[[L_SEM_ARR]])
    air.segment @segment_0 {
      %22 = arith.constant 2 : index
// CHECK: air.herd {{.*}} args([[H_BUF_ARR:%.*]]=[[S_BUF_ARR]], [[H_SEM_ARR:%.*]]=[[S_SEM_ARR]])
      air.herd @herd_0 tile (%arg12, %arg13) in (%arg14=%22, %arg15=%22) {
        %a = memref.alloc() : memref<1xi32>
// CHECK-DAG memref.load [[H_BUF_ARR]]
// CHECK-DAG memref.load [[H_SEM_ARR]]
        air.channel.put @channel[] (%a[] [] []) : (memref<1xi32>)
      }
    }
  }
}

