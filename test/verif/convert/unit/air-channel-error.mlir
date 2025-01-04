// RUN: split-file %s %t

// RUN: not verif-opt --verif-air-convert-channel %t/size-not2.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/size-not2-2.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/type-mismatch.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/indices-mismatch-put.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/indices-mismatch-get.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/indices-mismatch-get-2.mlir


//--- size-not2.mlir

module {
  air.channel @channel_7 [1]
}

//--- size-not2-2.mlir

module {
  air.channel @channel_7 [1, 2, 3]
}

//--- type-mismatch.mlir

module {
  air.channel @channel_7 [1, 1]

  %a = memref.alloc() : memref<1xi64>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi64>)
  %b = memref.alloc() : memref<1xi32>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi32>)
}

//--- size-stride-offset-mismatch-put.mlir

module {
  air.channel @channel_7 [1, 1]

  %a = memref.alloc() : memref<1xi64>
  %i = arith.constant 0 : index
  air.channel.put @channel_7[] (%a[%i] [] []) : (memref<1xi64>)
}

//--- size-stride-offset-mismatch-get.mlir

module {
  air.channel @channel_7 [1, 1]

  %a = memref.alloc() : memref<1xi64>
  %i = arith.constant 0 : index
  air.channel.put @channel_7[] (%a[] [%i] []) : (memref<1xi64>)
}

//--- indices-mismatch-put.mlir

module {
  air.channel @channel_7 [1, 2]

  %a = memref.alloc() : memref<1xi64>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi64>)
}

//--- indices-mismatch-get.mlir

module {
  air.channel @channel_7 [1, 2]

  %a = memref.alloc() : memref<1xi64>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi64>)
}

//--- indices-mismatch-get-2.mlir

module {
  air.channel @channel_7 [1, 1] {broadcast_shape = [1, 2]}

  %a = memref.alloc() : memref<1xi64>
  air.channel.get @channel_7[] (%a[] [] []) : (memref<1xi64>)
}

