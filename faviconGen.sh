#! /bin/bash
# Date: Apr 20, 2020
# Author: Dred Strauss
# Email: dred@dredstrauss.com
# Github page: https://github.com/dredstrauss/favicon-gen
# Description: simple script to generate different favicon png's in different resolutions (just to save some time!)

###

# This prompts set the NAME and RUTE variables, for the folder that will store the output files and for the route to use in the HTML tags

echo 'Name for the html file (without the .html extension): '
read NAME
echo 'Route to use in the href attribute (ie.: /images/): '
read RUTE

# This command creates the folder according to the name given by the user
 
mkdir $NAME-favicons

# Now a FOR loop writes all the necessary html tags using the route given by the user before

echo 'Writing the HTML tags...'

for RES in 16 32 128 152 167 180 192 196
    do
        echo '<link rel="icon" type="image/png" sizes="'$RES'x'$RES'" href="'$RUTE'favicon-'$RES'.png">' \
        >> ./$NAME-favicons/$NAME-html-favicons.html
    done

# And finally, the favicons are generated using Inkscape CLI functions

echo 'Generating the favicons in the necessary resolutions...'

for RES in 16 32 128 152 167 180 192 196
    do
        inkscape --export-area-drawing \
        --export-png=./$NAME-favicons/favicon-$RES.png \
        --export-width=$RES \
        --export-height=$RES favicon.svg 2> /dev/null
    done

echo 'Done!'
