image-resizer-thunar
====================
This is a simple script that allows you to resize multiple images in Thunar.

How to you it?
--------------
    1. You need to install dependencies, particulary:
        zenity, convert
    2. **NOP** - Install the script by writing as a superuser
        # make install
    3. Open Thunar and click on Edit/Configure custom actions
    4. Create a new item with
        - Name is "Image resizer"
        - Desctiption leave empty
        - Command is "/home/tosco/.thunar_scripts/resize.sh %F"
        - in appearence and conditions, let only Image Files checked
    5. Confirm changes in setting and test it with choosing some image,
        click right button on your mouse and you should see a option
        "Image resizer". Click on this option and fill the percentage ratio.
        After that, a new file according to the filled ration should be
        created.

FILE: resize.sh
---------------
```
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
```

Others
------
If you find any bug, feel free to report it to dohnto (at) gmail.com

Licence
-------
WTFPL
