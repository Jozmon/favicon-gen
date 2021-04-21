#! /bin/bash
# Date: Apr 20, 2021
# Author: Dred Strauss
# Email: dred@dredstrauss.com
# Github page: https://github.com/dredstrauss/favicon-gen
# Description: simple script to generate different favicon png's in different resolutions (just to save some time!)

# Copyright (C) 2021  Dred Strauss
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

###

# Short notice about the script license

echo 'Favicon Gen  Copyright (C) 2021  Dred Strauss
This program comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to
redistribute it under certain conditions.
'

# Check if Inskcape in installed

echo 'Checking if Inskcape is installed in your system...'

if ! inkscape --version &> /dev/null
  then
    echo -e 'Inkscape was not found in your system.\nPlease install it and try again.\n'
    exit
  else
    echo -e 'Inkscape found!\n'
fi


# This prompts set the NAME and RUTE variables, for the folder that will store the output files and for the route to use in the HTML tags

read -p 'Name for the html file (without the .html extension): ' NAME
read -p 'Route to use in the href attribute (ie.: /images/): ' RUTE

# This command creates the folder according to the name given by the user

mkdir $NAME-favicons

# Now these FOR loop write all the necessary html tags using the route given by the user before

echo -e '\nWriting the HTML tags...\n'

# Generic favicons

for RES in 16 32 57 76 96 128 167 192 228
    do
        echo '<link rel="icon" type="image/png" sizes="'$RES'x'$RES'" href="'$RUTE'favicon-'$RES'.png">' \
        >> ./$NAME-favicons/$NAME-html-favicons.html
    done

echo 'HTML tags for generic favicons created...'

# Android favicons

for RES in 196
    do
        echo '<link rel="shortcut icon" type="image/png" sizes="'$RES'x'$RES'" href="'$RUTE'favicon-'$RES'.png">' \
        >> ./$NAME-favicons/$NAME-html-favicons.html
    done

echo 'HTML tags for Android favicons created...'

# iOS favicons

for RES in 120 152 180
    do
        echo '<link rel="apple-touch-icon" type="image/png" sizes="'$RES'x'$RES'" href="'$RUTE'favicon-'$RES'.png">' \
        >> ./$NAME-favicons/$NAME-html-favicons.html
    done

echo 'HTML tags for iOS favicons created...'
echo -e 'Done!\n'

# And finally, the favicons are generated using Inkscape CLI functions

echo -e 'Generating the favicons in the necessary resolutions...\n'

for RES in 16 32 57 76 96 128 152 167 180 192 196 228
    do
        inkscape --export-area-drawing \
        --export-png=./$NAME-favicons/favicon-$RES.png \
        --export-width=$RES \
        --export-height=$RES favicon.svg 2> /dev/null

        echo $RES'x'$RES 'favicon created...'

    done

echo -e 'Done!\n'
echo -e 'Favicons and the HTML file with all the necessary tags are located in: ./'$NAME'-favicons/\n'
echo -e 'Bye!\n'
