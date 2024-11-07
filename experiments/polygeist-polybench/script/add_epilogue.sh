#!/bin/bash

infile=$1
epfile=$2
outfile=$3
projectroot=$4

VTDIR=$projectroot/verif-translate
VTDIR=`realpath $VTDIR`
VTDIR=${VTDIR//\//\\/}

cat $infile > $outfile || exit 1
sed -i 's/\#pragma pocc-region-end//g' $outfile || exit 1
sed -i "s/\#pragma pocc-region-start/\#pragma pocc-region-start\n\#include \"$VTDIR\/interp_macros_seq.h\"/g" $outfile || exit 1
# add prologue include before
cat $epfile | sed "0,/{/s//{\n#include \"$VTDIR\/prologue.h\"/" >> $outfile || exit 1
echo -e "\n#pragma pocc-region-end" >> $outfile || exit 1
