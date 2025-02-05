module @tutorial_3 {

    // 2 tiles in row 4 (col 1 and col 2)
    // even rows have local memory to its left
    %tile14 = aie.tile(1, 4)
    %tile24 = aie.tile(2, 4)

    // Declare local memory of tile(2,4) which is shared with tile(1,4)
    %buf = aie.buffer(%tile24) { sym_name = "a24" } : memref<256xi32>

    // Declare shared lock (belonging to tile(2,4), lock ID=1)
    %lock24_1 = aie.lock(%tile24, 1) { sym_name = "lock_a24_1" }

    // This lock will be used to gate when our 2nd core is done
    %lock24_2 = aie.lock(%tile24, 2) { sym_name = "lock_a24_2" }

    // Define core algorithm for tile(1,4)
    // buf[3] = 14
    %core14 = aie.core(%tile14) {
        // Locks init value is Release 0, so this will always succeed first
        aie.use_lock(%lock24_1, "Acquire", 0)

		%val = arith.constant 14 : i32
		%idx = arith.constant 3 : index
		memref.store %val, %buf[%idx] : memref<256xi32>

        aie.use_lock(%lock24_1, "Release", 1)
        aie.end
    }

    // Define core algorithm for tile(2,4) which reads value set by tile(1,4)
    // buf[5] = buf[3] + 100
    %core24 = aie.core(%tile24) {
        // This acquire succeeds when the core is enabled
        aie.use_lock(%lock24_2, "Acquire", 0)
        // This acquire will stall since locks are initialized to Release, 0
        aie.use_lock(%lock24_1, "Acquire", 1)

		%idx1 = arith.constant 3 : index
		%d1   = memref.load %buf[%idx1] : memref<256xi32>
		%c1   = arith.constant 100 : i32
		%d2   = arith.addi %d1, %c1 : i32
		%idx2 = arith.constant 5 : index
		memref.store %d2, %buf[%idx2] : memref<256xi32>

        // This release means our 2nd core is done
        aie.use_lock(%lock24_2, "Release", 1)
        aie.end
    }

}