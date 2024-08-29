#!/bin/sh
echo "First arg: $1"
echo "Second arg: $2"

FILENAME=$3
FILESIZE=$(stat -f %b "$FILENAME")
echo "Size of $FILENAME = $FILESIZE bytes."
