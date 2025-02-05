//https://github.com/Xilinx/mlir-aie/blob/main/test/objectFifo-stateful-transform/matmul_test.mlir


module @matmul {
  aie.device(xcve2302) {

    %t00 = aie.tile(0, 0)
    %t02 = aie.tile(0, 2)

    aie.objectfifo @inA  (%t00, { %t02 }, 2 : i32) : !aie.objectfifo<memref<16x8xi16>>
    aie.objectfifo @inB  (%t00, { %t02 }, 2 : i32) : !aie.objectfifo<memref<8x16xi16>>
    aie.objectfifo @outC (%t02, { %t00 }, 2 : i32) : !aie.objectfifo<memref<16x16xi16>>

    func.func @zero_scalar_i16(%elem0 : memref<16x16xi16>) -> () { return }
    func.func @matmul_scalar_i16_i16(%elem0 : memref<16x8xi16>, %elem1 : memref<8x16xi16>, %elem2 : memref<16x16xi16>) -> () { return }

    aie.core(%t02) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c4 = arith.constant 4 : index
      %intmax = arith.constant 0xFFFFFFFF : index

      scf.for %reps = %c0 to %intmax step %c1 {

        scf.for %arg2 = %c0 to %c4 step %c1 {
          %subview2 = aie.objectfifo.acquire @outC (Produce, 1) : !aie.objectfifosubview<memref<16x16xi16>>
          %elem2 = aie.objectfifo.subview.access %subview2[0] : !aie.objectfifosubview<memref<16x16xi16>> -> memref<16x16xi16>
          func.call @zero_scalar_i16(%elem2) : (memref<16x16xi16>) -> ()

          scf.for %arg3 = %c0 to %c4 step %c1 {
            %subview0 = aie.objectfifo.acquire @inA (Consume, 1) : !aie.objectfifosubview<memref<16x8xi16>>
            %elem0 = aie.objectfifo.subview.access %subview0[0] : !aie.objectfifosubview<memref<16x8xi16>> -> memref<16x8xi16>
            %subview1 = aie.objectfifo.acquire @inB (Consume, 1) : !aie.objectfifosubview<memref<8x16xi16>>
            %elem1 = aie.objectfifo.subview.access %subview1[0] : !aie.objectfifosubview<memref<8x16xi16>> -> memref<8x16xi16>

            func.call @matmul_scalar_i16_i16(%elem0, %elem1, %elem2) : (memref<16x8xi16>, memref<8x16xi16>, memref<16x16xi16>) -> ()

            aie.objectfifo.release @inA (Consume, 1)
            aie.objectfifo.release @inB (Consume, 1)
          }
          aie.objectfifo.release @outC (Produce, 1)
        }
      }
      aie.end
    }
  }
}