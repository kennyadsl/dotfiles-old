#!/bin/sh

CODE_DIR="${HOME}/Code"

PROJ="$1"
PROJ_NAME=`echo $PROJ | cut -d '@' -f 1`
PROJ_DIR="$CODE_DIR/$PROJ_NAME"

cd $PROJ_DIR
