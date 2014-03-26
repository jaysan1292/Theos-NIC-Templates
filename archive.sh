#! /bin/bash

ARCHIVE_FOLDER="Archived Templates"

rm -rf "$ARCHIVE_FOLDER"

mkdir "$ARCHIVE_FOLDER"

cd "$ARCHIVE_FOLDER"

for i in ../*.nic; do
	$THEOS/bin/nicify.pl $i
done

