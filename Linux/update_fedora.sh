#!/bin/bash

DIFF_FILE=de.diff
LAYOUT_FILE=/usr/share/X11/xkb/symbols/de
BACKUP_FILE=$LAYOUT_FILE.orig

if ! [ -f $BACKUP_FILE ] ; then
	echo "Sichere $LAYOUT_FILE"
	cp -av $LAYOUT_FILE $BACKUP_FILE 
fi 

patch -p0 $LAYOUT_FILE < $DIFF_FILE
