image-resizer-thunar
====================
This is a simple script that allows you to resize multiple images in Thunar.

How to you it?
--------------
    1. You need to install dependencies, particulary:
        zenity, convert
    2. Install the script by writing as a superuser
        # make install
    3. Open Thunar and click on Edit/Configure custom actions
    4. Create a new item with
        - Name is "Image resizer"
        - Desctiption leave empty
        - Command is "/usr/bin/image-resizer-thunar.sh %F"
        - in appearence and conditions, let only Image Files checked
    5. Confirm changes in setting and test it with choosing some image,
        click right button on your mouse and you should see a option
        "Image resizer". Click on this option and fill the percentage ratio.
        After that, a new file according to the filled ration should be
        created.

Others
------
If you find any bug, feel free to report it to dohnto (at) gmail.com

Licence
-------
WTFPL
