#!/bin/bash
date=$(date +%d-%b-%Y)
name="${1%%.*}"
ext="${1#*.}"
cp $1 $name'_'$date'.'$ext
