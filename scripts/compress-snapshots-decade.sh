#!/bin/bash

PROG_NAME=$(basename $0)
DIR_NAME=$(dirname $0)

USAGE_STR="Usage: $PROG_NAME target prefix

Performs 3 things:
  Sequentially compresses 10 snaphots dirs (creates separate archive for each one) identified by 'prefix' to the 'target' dir.
  
Arguments:
  target - target for archives
  prefix - \"decade\" prefix of snaphots dirs to be packed

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
  if [ -d "${prefix}1" ]; then
    tar -cf - ${prefix}1 | xz -9 > $target/${prefix}1.tar.xz
  fi
  if [ -d "${prefix}2" ]; then
    tar -cf - ${prefix}2 | xz -9 > $target/${prefix}2.tar.xz
  fi
  if [ -d "${prefix}3" ]; then
    tar -cf - ${prefix}3 | xz -9 > $target/${prefix}3.tar.xz
  fi
  if [ -d "${prefix}4" ]; then
    tar -cf - ${prefix}4 | xz -9 > $target/${prefix}4.tar.xz
  fi
  if [ -d "${prefix}5" ]; then
    tar -cf - ${prefix}5 | xz -9 > $target/${prefix}5.tar.xz
  fi
  if [ -d "${prefix}6" ]; then
    tar -cf - ${prefix}6 | xz -9 > $target/${prefix}6.tar.xz
  fi
  if [ -d "${prefix}7" ]; then
    tar -cf - ${prefix}7 | xz -9 > $target/${prefix}7.tar.xz
  fi
  if [ -d "${prefix}8" ]; then
    tar -cf - ${prefix}8 | xz -9 > $target/${prefix}8.tar.xz
  fi
  if [ -d "${prefix}9" ]; then
    tar -cf - ${prefix}9 | xz -9 > $target/${prefix}9.tar.xz
  fi
else
  errTarget
fi
