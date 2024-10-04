#!/bin/bash

infile=$1
epfile=$2
outfile=$3

cat $infile > $outfile || exit 1
sed -i 's/\#pragma pocc-region-end//g' $outfile || exit 1
cat $epfile >> $outfile || exit 1
echo -e "\n#pragma pocc-region-end" >> $outfile || exit 1