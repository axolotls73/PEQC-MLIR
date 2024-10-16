#!/bin/bash

# $1: input mlir file to convert

cat $1; read n

echo -e "\n$ air-opt $1 -air-linalg-codegen='l1-tile-size=32,32,32 l2-tile-size=64,64,64' --convert-linalg-to-affine-loops --lower-affine --air-dependency\n"
air-opt $1 -air-linalg-codegen='l1-tile-size=32,32,32 l2-tile-size=64,64,64' --convert-linalg-to-affine-loops --lower-affine --air-dependency \
    > run_output.mlir
cat run_output.mlir; read n

echo -e "\nmanual replacement of subviews and scf.parallel with tokens\n"
cat manual-parallel-trans.mlir; read n

echo -e "\n$ verif-opt --verif-air-execute-to-async --verif-scf-parallel-to-async\n"
../../build/bin/verif-opt --verif-air-execute-to-async --verif-scf-parallel-to-async manual-parallel-trans.mlir \
    > run_output_conversion.mlir;
cat run_output_conversion.mlir; read n

echo -e "\n$ verif-translate --translate-to-past\n"
../../build/bin/verif-translate --translate-to-past run_output_conversion.mlir > translation.c
cat translation.c; read n


