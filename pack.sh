#!/bin/sh

PACKS="packs/"
PACKDIR="short-arms_`gitversion -showvariable MajorMinorPatch`"
ZIPFILE="$PACKDIR.zip"
FACTORIO_MODS_DIR="/c/Users/eregr/AppData/Roaming/Factorio/mods"

if [ -e $PACKS/$PACKDIR ]; then
	echo "Deleting old $PACKDIR"
	rm -rf $PACKS/$PACKDIR
fi

if [ -e $PACKS/$ZIPFILE ]; then
	echo "Deleting old zipfile"
	rm $PACKS/$ZIPFILE
fi

mkdir -p $PACKS/$PACKDIR
echo "Copying file to $PACKDIR"
cp -r graphics $PACKS/$PACKDIR
cp -r prototypes $PACKS/$PACKDIR
cp data.lua $PACKS/$PACKDIR
cp control.lua $PACKS/$PACKDIR
sh info.sh > $PACKS/$PACKDIR/info.json

echo "Zipping $PACKDIR"
cd $PACKS
7z a -tZip $ZIPFILE $PACKDIR

echo "Publishing $ZIPFILE to $FACTORIO_MODS_DIR"
cp $ZIPFILE $FACTORIO_MODS_DIR

echo "Done"