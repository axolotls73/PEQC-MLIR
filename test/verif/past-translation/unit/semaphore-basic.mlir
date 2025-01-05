// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: int [[C0:.*]] = 0
// CHECK: int [[C1:.*]] = 1
// CHECK: PAST_NEW_SEMAPHORE([[SEM:.*]])
  %0 = arith.constant 0 : index
  %1 = arith.constant 1 : index
  %sem = verif.semaphore

// CHECK: PAST_WAIT_SEMAPHORE([[SEM]], [[C0]])
  verif.semaphore.wait %sem, %0

// CHECK: PAST_SET_SEMAPHORE([[SEM]], [[C1]])
  verif.semaphore.set %sem, %1
}