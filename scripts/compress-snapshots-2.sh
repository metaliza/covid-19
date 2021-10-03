#!/bin/bash

PROG_NAME=$(basename $0)
DIR_NAME=$(dirname $0)

USAGE_STR="Usage: $PROG_NAME target prefix

Performs 3 things:
  Sequentially compresses 2 (-0 and -1) snaphots dirs (creates separate archive for each one) identified by 'prefix' to the 'target' dir.
  
Arguments:
  target - target for archives
  prefix - prefix of snaphots dirs to be packed

Exit codes:
  0 everything went OK
  1 one of required params is missing
  2 'target' dir doesn't exist

"

# ====== Functions decls & common initializations  ======

. $DIR_NAME/functions.rc
. $DIR_NAME/compress-common.rc

# ====== main block of code ======

if [ -d "$target" ]; then
  if [ -d "${prefix}0" ]; then
    tar -cf - ${prefix}0 | xz -9 > $target/${prefix}0.tar.xz
  fi
  if [ -d "${prefix}0" ]; then
    tar -cf - ${prefix}1 | xz -9 > $target/${prefix}1.tar.xz
  fi
  
else
  errTarget
fi
