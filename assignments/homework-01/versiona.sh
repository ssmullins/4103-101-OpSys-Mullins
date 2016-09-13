#!/bin/bash
filetodate=$(date +%d-%b-%Y)
echo $filetodate'_'$1
cp $1 $filetodate'_'$1

