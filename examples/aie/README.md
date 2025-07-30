From mlir-aie at commit 9f977440, mlir-aie/programming_examples/basic/matrix_multiplication/single_core and mlir-aie/programming_examples/basic/matrix_multiplication/whole_array

single_core:
```
# with mlir-air/aie environment variables etc
python3 single_core.py > single_core.mlir
```

single_core_small:

```
# with mlir-air/aie environment variables etc
python3 single_core.py -M 16 -N 16 -K 16 -m 8 -k 8 -n 4 > single_core_small.mlir

aie-opt --convert-linalg-to-loops single_core_small_modified.mlir > input-lowered.mlir
verif-opt --verif-aie-convert-objfifo input-lowered.mlir > objfifoconv.mlir
verif-opt --verif-convert-aie --lower-affine objfifoconv.mlir > conversion.mlir
verif-translate --translate-to-past conversion.mlir > result.c
../../script/add_epilogue.py result.c translation.c

pastchecker --enable-preprocessor --timing-mode --verbose --enable-subtrees --happens-before translation.c matmul_compare_small.c arg2
```

whole_array:

```
# with mlir-air/aie environment variables etc
python3 whole_array.py > whole_array.mlir
```

whole_array_small:

```
# with mlir-air/aie environment variables etc
python3 whole_array.py -M 32 -N 32 -K 32 -m 8 -k 8 -n 4 > whole_array_small.mlir
```
