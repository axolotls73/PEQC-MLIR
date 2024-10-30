#!/bin/bash

repohome=`realpath ../../../..`

# assuming aie.py has already regenerated all the files

for file in air_input air_tiled air_sync; do
    air-opt --convert-linalg-to-affine-loops --lower-affine $file.mlir > ${file}_lowered.mlir || continue
    verif-opt --verif-air-to-scf-par --verif-dma-to-memref --verif-scf-parallel-to-async \
        --verif-air-execute-to-async ${file}_lowered.mlir > ${file}_converted.mlir || continue
    verif-translate --translate-to-past ${file}_converted.mlir > ${file}_translated.c || continue
    $repohome/test/add_epilogue.sh ${file}_translated.c epilogue.c ${file}_translated_main.c $repohome
    sed -i "s/${repohome//\//\\/}\/verif-translate\///" ${file}_translated_main.c
done
