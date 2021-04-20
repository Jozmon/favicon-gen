# Favicon Gen
Simple linux script to generate favicons in different resolutions and all their necessary HTML tags for a website.

## Requirements

Inkscape installed on the system and the source image for the favicons in SVG format.

Also, you have to give execute permisions to the script:

```shell
$ chmod +x faviconGen.sh
```

## Usage
Make sure to have the script in the same folder as the source image.
This file must be named "favicon.svg" and the image must have a 1:1 ratio.

After running the script, it will ask for a name and a route. The name is only for creating the destination folder and the **html** with the tags, it could be anything valid as a folder name (something like "my-website"). And the route is the one to use as the **href** attribute for the favicons (something like "/img/").

### About the author

I'm just starting to learn about coding. I made this extremely simple script just to save some time while I'm practicing creating different websites.

Probably I'll add some validations and an option to select specific resolutions.

Thanks!
