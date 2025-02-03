// REQUIRES: air
// RUN: verif-opt --verif-convert-aie %s | FileCheck %s

module {
  %tile14 = aie.tile(1, 4)
  aie.core(%tile14) {

  // CHECK: [[LOCK:%.*]] = verif.semaphore
    %lock14_6 = aie.lock(%tile14, 7)

  // CHECK: [[CST0:%.*]] = arith.constant 0
  // CHECK: verif.semaphore.wait [[LOCK]], [[CST0]]
    aie.use_lock(%lock14_6, "Acquire", 0)

  // CHECK: [[CST1:%.*]] = arith.constant 1
  // CHECK: verif.semaphore.set [[LOCK]], [[CST1]]
    aie.use_lock(%lock14_6, "Release", 1)

    aie.end
  }
}

