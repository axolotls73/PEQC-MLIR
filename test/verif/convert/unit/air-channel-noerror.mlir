// RUN: split-file %s %t

// RUN: verif-opt --verif-air-convert-channel %t/put-allow-no-indices-broadcast.mlir


//--- put-allow-no-indices-broadcast.mlir

module {
  air.channel @channel_7 [1, 1] {broadcast_shape = [1, 2]}

  %a = memref.alloc() : memref<1xi64>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi64>)
}

