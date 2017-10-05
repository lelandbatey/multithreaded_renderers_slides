#!/bin/bash

files="$@"
echo "$files"

for f in $files; do
	newname="${f%.svg}".png
	echo "inkscape -z --export-background-opacity=255 --file $f --export-background=white --export-area-drawing --export-dpi=600 ---export-png $newname"
	inkscape -z --export-background-opacity=255 --file "$f" --export-background=white --export-area-drawing --export-dpi=600 --export-png "$newname"

done;
