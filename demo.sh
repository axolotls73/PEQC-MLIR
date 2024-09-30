#!/bin/bash

# $1, $2: mlir files
# $3: liveout vars
# $4: "main" function file

PAST_DIR=/root/data-host-share/pocc-devel/ir/past

./build/bin/verif-translate --translate-to-past $1 > demo_1.c
cat $4 >> demo_1.c
./build/bin/verif-translate --translate-to-past $2 > demo_2.c
cat $4 >> demo_2.c

$PAST_DIR/src/pastchecker demo_1.c demo_2.c $3