// RUN: split-file %s %t

// RUN: not verif-opt --verif-air-convert-channel %t/size_not_2.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/size_not_2b.mlir


//--- size_not_2.mlir

module {
  air.channel @channel_7 [1]
}

//--- size_not_2b.mlir

module {
  air.channel @channel_7 [1, 2, 3]
}

