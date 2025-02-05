module {

    %lock24_1 = verif.semaphore
    %lock24_2 = verif.semaphore

    %buf = memref.alloc() : memref<256xi32>

    async.execute {
        // aie.use_lock(%lock24_1, "Acquire", 0)
        verif.wait_semaphore %lock24_1, 0

		%val = arith.constant 14 : i32
		%idx = arith.constant 3 : index
		memref.store %val, %buf[%idx] : memref<256xi32>

        // aie.use_lock(%lock24_1, "Release", 1)
        verif.set_semaphore %lock24_1, 1
    }

    async.execute {

        // aie.use_lock(%lock24_2, "Acquire", 0)
        verif.wait_semaphore %lock24_2, 0
        // aie.use_lock(%lock24_1, "Acquire", 1)
        verif.wait_semaphore %lock24_1, 1

		%idx1 = arith.constant 3 : index
		%d1   = memref.load %buf[%idx1] : memref<256xi32>
		%c1   = arith.constant 100 : i32
		%d2   = arith.addi %d1, %c1 : i32
		%idx2 = arith.constant 5 : index
		memref.store %d2, %buf[%idx2] : memref<256xi32>

        // aie.use_lock(%lock24_2, "Release", 1)
        verif.set_semaphore %lock24_2, 1
    }
}
