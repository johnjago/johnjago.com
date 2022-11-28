#!/bin/bash

FILE='style.css'
# md5sum outputs the hash followed by the filename.
# Only the hash part is needed, so wrap the result in an array
# and index the first element in the array by the name.
# e.g. HASH and HASH[0] refer to the start of the array.
HASH=($(md5 -q $FILE))
FILE_WITH_HASH=style.$HASH.css
cp $FILE $FILE_WITH_HASH
sed -i'.bak' -e "s/style[.0-9a-z]*.css/$FILE_WITH_HASH/g" index.html
rm index.html.bak
