

module {

    %lock14_6 = verif.semaphore
    %lock34_7 = verif.semaphore
    %lock34_8 = verif.semaphore

    %buf14 = memref.alloc() : memref<256xi32>
    %buf34 = memref.alloc() : memref<256xi32>

    //these are indexes into the DMA arrays below
    %tile14dmachannels : memref<?xindex>
    %tile14dmachannels_isdst : memref<?xindex>
    %tile34dmachannels : memref<?xindex>
    %tile34dmachannels_isdst : memref<?xindex>

    %dmabuffers = memref.alloc() : something

    // aie.flow(%tile14, DMA: 0, %tile34, DMA:1)
    // each flow op gets unique index, this one = 0
    %flow_index = 0
    %tile14dmachannels[0] = %flow_index
    %tile14dmachannels_isdst[0] = 0
    %tile34dmachannels[1] = %flow_index
    %tile34dmachannels_isdst[0] = 1


    func.func @execute_dma(%tile_id: index, %channel_id: index, %buffer: [any memref?]) {
        %dmabuffer = %dmabuffers[%tilewhateverdmachannels[]]
        if ()
    }

// tile 1,4: aie.core
    async.execute {
        // aie.use_lock(%lock24_1, "Acquire", 0)
        verif.semaphore.wait %lock24_1, 0

		%val = arith.constant 14 : i32
		%idx = arith.constant 3 : index
		memref.store %val, %buf[%idx] : memref<256xi32>

        // aie.use_lock(%lock24_1, "Release", 1)
        verif.semaphore.set %lock24_1, 1
    }

// tile 1,4: aie.mem
    async.execute {
        // aie.dma_start("MM2S", 0, ^bd0, ^end)
        async.execute {
            cf.br ^end
        }
        cf.br ^bd0
        ^bd0:
            // aie.use_lock(%lock14_6, Acquire, 1)
            verif.semaphore.wait %lock14_6, 1

            // aie.dma_bd(%buf14 : memref<256xi32>, 0, 256)
            func.call @execute_dma %tile14, 0, %buf14

            // aie.use_lock(%lock14_6, Release, 0)
            verif.semaphore.set %lock14_6, 0
            // aie.next_bd ^end
            cf.br ^end
        ^end:
            async.execute_terminator
    }

// tile 3,4: aie.core
    async.execute {

        // aie.use_lock(%lock24_2, "Acquire", 0)
        verif.semaphore.wait %lock24_2, 0
        // aie.use_lock(%lock24_1, "Acquire", 1)
        verif.semaphore.wait %lock24_1, 1

		%idx1 = arith.constant 3 : index
		%d1   = memref.load %buf[%idx1] : memref<256xi32>
		%c1   = arith.constant 100 : i32
		%d2   = arith.addi %d1, %c1 : i32
		%idx2 = arith.constant 5 : index
		memref.store %d2, %buf[%idx2] : memref<256xi32>

        // aie.use_lock(%lock24_2, "Release", 1)
        verif.semaphore.set %lock24_2, 1
    }
}
