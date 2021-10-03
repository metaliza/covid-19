#!/bin/bash

PROG_NAME=$(basename $0)
DIR_NAME=$(dirname $0)

USAGE_STR="Usage: $PROG_NAME target prefix

Performs 3 things:
  Sequentially compresses \"month\" snaphots dirs (creates separate archive for each one) identified by 'prefix' to the 'target' dir.
  
Arguments:
  target - target for archives
  prefix - \"month\" prefix of snaphots dirs to be packed

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
  tar -cf - ${prefix}-01 | xz -9 > $target/${prefix}-01.tar.xz
  tar -cf - ${prefix}-02 | xz -9 > $target/${prefix}-02.tar.xz
  tar -cf - ${prefix}-03 | xz -9 > $target/${prefix}-03.tar.xz
  tar -cf - ${prefix}-04 | xz -9 > $target/${prefix}-04.tar.xz
  tar -cf - ${prefix}-05 | xz -9 > $target/${prefix}-05.tar.xz
  tar -cf - ${prefix}-06 | xz -9 > $target/${prefix}-06.tar.xz
  tar -cf - ${prefix}-07 | xz -9 > $target/${prefix}-07.tar.xz
  tar -cf - ${prefix}-08 | xz -9 > $target/${prefix}-08.tar.xz
  tar -cf - ${prefix}-09 | xz -9 > $target/${prefix}-09.tar.xz
  
  tar -cf - ${prefix}-10 | xz -9 > $target/${prefix}-10.tar.xz
  tar -cf - ${prefix}-11 | xz -9 > $target/${prefix}-11.tar.xz
  tar -cf - ${prefix}-12 | xz -9 > $target/${prefix}-12.tar.xz
  tar -cf - ${prefix}-13 | xz -9 > $target/${prefix}-13.tar.xz
  tar -cf - ${prefix}-14 | xz -9 > $target/${prefix}-14.tar.xz
  tar -cf - ${prefix}-15 | xz -9 > $target/${prefix}-15.tar.xz
  tar -cf - ${prefix}-16 | xz -9 > $target/${prefix}-16.tar.xz
  tar -cf - ${prefix}-17 | xz -9 > $target/${prefix}-17.tar.xz
  tar -cf - ${prefix}-18 | xz -9 > $target/${prefix}-18.tar.xz
  tar -cf - ${prefix}-19 | xz -9 > $target/${prefix}-19.tar.xz
  
  tar -cf - ${prefix}-20 | xz -9 > $target/${prefix}-20.tar.xz
  tar -cf - ${prefix}-21 | xz -9 > $target/${prefix}-21.tar.xz
  tar -cf - ${prefix}-22 | xz -9 > $target/${prefix}-22.tar.xz
  tar -cf - ${prefix}-23 | xz -9 > $target/${prefix}-23.tar.xz
  tar -cf - ${prefix}-24 | xz -9 > $target/${prefix}-24.tar.xz
  tar -cf - ${prefix}-25 | xz -9 > $target/${prefix}-25.tar.xz
  tar -cf - ${prefix}-26 | xz -9 > $target/${prefix}-26.tar.xz
  tar -cf - ${prefix}-27 | xz -9 > $target/${prefix}-27.tar.xz
  tar -cf - ${prefix}-28 | xz -9 > $target/${prefix}-28.tar.xz
  if [ -d "${prefix}-29" ]; then
    tar -cf - ${prefix}-29 | xz -9 > $target/${prefix}-29.tar.xz
  fi
  if [ -d "${prefix}-30" ]; then
    tar -cf - ${prefix}-30 | xz -9 > $target/${prefix}-30.tar.xz
  fi
  if [ -d "${prefix}-31" ]; then
    tar -cf - ${prefix}-31 | xz -9 > $target/${prefix}-31.tar.xz
  fi
  
else
  errTarget
fi
