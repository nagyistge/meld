#!/bin/bash

FILES=$*

for x in $FILES; do
   echo meld-compile-file $x code/$(basename $x .meld)
   meld-compile-file $x $PWD/code/$(basename $x .meld)
done
