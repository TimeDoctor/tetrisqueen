#!/bin/sh

echo "Converting files to QNX format..."

echo "# generated by fixqnx.sh" > makefile
echo "MAKEFILE_INC = makefile.qnx" >> makefile
echo "include makefile.all" >> makefile

find . -type f "(" \
   -name "*.c" -o -name "*.h" -o -name "*.arg" -o -name "*.txt" -o -name "makefile.*" \
   ")" \
   -exec textto -l {}

echo "Done!"