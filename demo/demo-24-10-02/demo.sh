#!/bin/bash

# $1, $2: mlir files
# $3: liveout vars
# $4: "main" function file

PAST_DIR=/root/data-host-share/pocc-devel/ir/past

cat $1; read n
echo ""
echo ""

air-opt --convert-linalg-to-affine-loops --lower-affine $1 > demo_after_linalg.mlir
echo "air-opt --convert-linalg-to-affine-loops --lower-affine $1 > demo_after_linalg.mlir"
cat demo_after_linalg.mlir; read n
echo ""
echo ""

./build/bin/verif-translate --translate-to-past demo_after_linalg.mlir > demo_after_translate.c
sed demo_after_translate.c -e 's/\#pragma pocc-region-end//g' > tmp.txt
cp tmp.txt demo_after_translate.c
cat demo_prologue.c >> demo_after_translate.c
echo "" >> demo_after_translate.c
echo \#pragma pocc-region-end >> demo_after_translate.c
cat demo_after_translate.c; read n;
echo ""
echo ""



cat $2; read n
echo ""
echo ""

air-opt --convert-linalg-to-affine-loops --lower-affine $2 > demo_after_linalg2.mlir
echo "air-opt --convert-linalg-to-affine-loops --lower-affine $2 > demo_after_linalg2.mlir"
cat demo_after_linalg2.mlir; read n
echo ""
echo ""

./build/bin/verif-translate --translate-to-past demo_after_linalg2.mlir > demo_after_translate2.c
sed demo_after_translate2.c -e 's/\#pragma pocc-region-end//g' > tmp.txt
cp tmp.txt demo_after_translate2.c
cat demo_prologue.c >> demo_after_translate2.c
echo "" >> demo_after_translate2.c
echo \#pragma pocc-region-end >> demo_after_translate2.c
cat demo_after_translate2.c; read n;
echo ""
echo ""

$PAST_DIR/src/pastchecker --verbose --timing-mode --enable-subtrees demo_after_translate.c demo_after_translate2.c "func_arg_ret_2"
# cat $4 >> demo_1.c
# ./build/bin/verif-translate --translate-to-past $2 > demo_2.c
# sed -i demo_2.c 's/#pragma pocc-region-end//'
# cat $4 >> demo_2.c
