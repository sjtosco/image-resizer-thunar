#!/bin/bash
# author: Tomas Dohnalek, dohnto (at) gmail.com
# description: This is a simple script that allows you to resize multiple
#              images with the same ration
# usage: bash image-resizer-thunar.sh /path/to/image1 /path/to/image2/ ...
# licence: WTFPL

images=$@

size=`zenity --entry --text="Percentage size ratio of new images"`
if [ "$size" -gt 0 -a "$size" -lt 100 ]; then
    for image in $images; do
        dn=`dirname  $image`
        bn=`basename $image`
        name=`echo $bn | awk -F. '{print $1}'`
        extension=`echo $bn | awk -F. '{print $2}'`
        convert $image -resize ${size}% ${dn}/${name}_${size}.${extension}
    done
fi
