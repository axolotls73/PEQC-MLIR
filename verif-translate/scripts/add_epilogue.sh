#!/bin/bash

infile=$1
epfile=$2
outfile=$3

scriptdir="$( dirname -- "${BASH_SOURCE[0]}"; )"
scriptdir="$( realpath -e -- "$scriptdir"; )"
scriptdir=${scriptdir//\//\\/}

cat $infile > $outfile || exit 1
sed -i 's/\#pragma pocc-region-end//g' $outfile || exit 1
sed -i "s/\#pragma pocc-region-start/\#pragma pocc-region-start\n\#include \"$scriptdir\/interp_macros.h\"/g" $outfile || exit 1
# add prologue include before
cat $epfile | sed "0,/{/s//{\n#include \"$scriptdir\/prologue.h\"/" >> $outfile || exit 1
echo -e "\n#pragma pocc-region-end" >> $outfile || exit 1
