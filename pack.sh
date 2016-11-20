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
echo ""
echo "--- 7z ---"
cd $PACKS
7z a -tZip $ZIPFILE $PACKDIR

echo "--- 7z ---"
echo ""

find $FACTORIO_MODS_DIR -type f -name 'short-arms_[0-9]\.[0-9]\.[0-9]\.zip' > /dev/null
if [ $? -eq 0 ]; then
	echo "Deleting old zip files"
	find $FACTORIO_MODS_DIR -type f -name 'short-arms_[0-9]\.[0-9]\.[0-9]\.zip' -delete
fi


echo "Publishing $ZIPFILE to $FACTORIO_MODS_DIR"
cp $ZIPFILE $FACTORIO_MODS_DIR

echo "Done"