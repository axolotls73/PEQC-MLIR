module @tutorial_1 {

    // Declare tile object of the AIE class located at position col 1, row 4
    %tile14 = aie.tile(1, 4)
    // %tile13 = aie.tile(1, 2)

    // Declare buffer for tile(1, 4) with symbolic name "a14" and
    // size 256 deep x int32 wide. By default, the address of
    // this buffer begins after the stack (1024 Bytes offset) and
    // all subsequent buffers are allocated one after another in memory.
    %buf = aie.buffer(%tile14) { sym_name = "a14" } : memref<8192xi32>
    // %buf2 = aie.buffer(%tile14) { sym_name = "a15" } : memref<8192xi32>
    // %buf2 = aie.buffer(%tile13) { sym_name = "a13" } : memref<256xi32>

    // Define the algorithm for the core of tile(1, 4)
    // buf[3] = 14
    %core14 = aie.core(%tile14) {
		%val = arith.constant 14 : i32 // declare a constant (int32)
		%idx = arith.constant 3 : index // declare a constant (index)
		memref.store %val, %buf[%idx] : memref<8192xi32> // store val in buf[3]
		// memref.store %val, %buf2[%idx] : memref<256xi32> // doesn't compile!
        aie.end
    }

}