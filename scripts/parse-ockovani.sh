#!/bin/bash

PROG_NAME=$(basename $0)
DIR_NAME=$(dirname $0)

: ${M2_HOME:=/var/data/m2}

JAVA_PROG=$JRE8/bin/java
C19_JAR=$M2_HOME/cz/metaliza/c19/utils/1.0.0-SNAPSHOT/utils-1.0.0-SNAPSHOT.jar
LIBS=$M2_HOME/org/apache/logging/log4j/log4j-api/2.13.1/log4j-api-2.13.1.jar
LIBS=$LIBS:$M2_HOME/org/apache/logging/log4j/log4j-core/2.13.1/log4j-core-2.13.1.jar
LIBS=$LIBS:$C19_JAR
LOG4J_CFG=$DIR_NAME/log4j.xml
SRC_FILE=/tmp/ockovani-profese.csv
DEST_DIR=/tmp/ockovani-output

# ====== Functions decls & common initializations  ======

# . $DIR_NAME/functions.rc

# ====== main block of code ======

$JAVA_PROG -cp $LIBS -Dlog4j2.configurationFile=$LOG4J_CFG cz.metaliza.c19.processor.VaxProcessor $SRC_FILE $DEST_DIR
