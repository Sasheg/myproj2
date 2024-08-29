#!/bin/sh
FILENAME=/tmp1
FILESIZE=$(stat -f %b "$FILENAME")
echo "Size of $FILENAME = $FILESIZE bytes."
