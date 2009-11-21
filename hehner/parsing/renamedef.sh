#!/bin/bash
export file="$1"
export prefix="$2"
export target="$3"
export postfix=''
export first="$4"
export last="$5"
export usage='renamedef.sh file prefix target first last'

./rename.sh