#!/bin/bash

repohome=`realpath ../..`

for dir in `find matmul -maxdepth 1 -mindepth 1 -type d`; do
    echo "generating $dir"
    # cd $dir
    # python3 aie.py
    # cd -
    for file in $dir/air_input $dir/air_tiled $dir/air_sync $dir/aircc_input; do
        lowered=`air-opt --convert-linalg-to-affine-loops --lower-affine $file.mlir` && \
            echo "$lowered" > ${file}_lowered.mlir || continue
        # air-opt --convert-linalg-to-affine-loops --lower-affine $file.mlir > ${file}_lowered.mlir || continue
        converted=`verif-opt --verif-air-convert-channel --verif-air-to-scf-par --verif-air-dma-to-memref --verif-scf-parallel-to-async \
        --verif-air-execute-to-async ${file}_lowered.mlir` && \
            echo "$converted" > ${file}_converted.mlir || continue
        # verif-opt --verif-air-to-scf-par --verif-dma-to-memref --verif-scf-parallel-to-async \
        #     --verif-air-execute-to-async ${file}_lowered.mlir > ${file}_converted.mlir || continue
        translated=`verif-translate --translate-to-past ${file}_converted.mlir` && \
            echo "$translated" > ${file}_translated.c || continue
        # verif-translate --translate-to-past ${file}_converted.mlir > ${file}_translated.c || continue
        $repohome/verif-translate/scripts/add_epilogue.sh ${file}_translated.c $dir/epilogue.c ${file}_translated_main.c
        # sed -i "s/${repohome//\//\\/}\/verif-translate\///" ${file}_translated_main.c
    done
done
