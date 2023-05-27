# Favicon Gen

Simple linux script to generate favicons in different resolutions and all their necessary HTML tags for a website.

## Requirements

Inkscape installed on the system and the source image for the favicons in SVG format.

Also, you have to give execute permisions to the script:

```
$ chmod +x faviconGen.sh
```

## Usage

Make sure to have the script in the same folder as the source image or install it to /usr/local/bin.
The file must be ".svg" and the image must have a 1:1 ratio.

After running the script, it will ask for a name and a route. The name is only for creating the destination folder and the **html** with the tags, it could be anything valid as a folder name (something like "my-website"). And the route is the one to use as the **href** attribute for the favicons (something like "/img/").

## Usage

After we installed the script or place it in the same directory  
we use it like this:



```
$ ./faviconGen.sh YOUR_FILE_NAME.svg
Favicon Gen  Copyright (C) 2021  Dred Strauss
This program comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to
redistribute it under certain conditions.

Checking if Inskcape is installed in your system...
Inkscape found!

Name for the html file (without the .html extension): myweb    
Route to use in the href attribute (ie.: images/): assets/img/

Writing the HTML tags...

HTML tags for generic favicons created...
HTML tags for Android favicons created...
HTML tags for iOS favicons created...
Done!

Generating the favicons in the necessary resolutions...

16x16 favicon created...
32x32 favicon created...
57x57 favicon created...
76x76 favicon created...
96x96 favicon created...
128x128 favicon created...
152x152 favicon created...
167x167 favicon created...
180x180 favicon created...
192x192 favicon created...
196x196 favicon created...
228x228 favicon created...
Done!

Favicons and the HTML file with all the necessary tags are located in: ./myweb-favicons/

Bye!
```

Now we can check the results

```
$ cd myweb-favicons
$ ls -lh
total 76K
-rw-r--r-- 1 dred dred 3.6K Apr 20 19:04 favicon-128.png
-rw-r--r-- 1 dred dred 4.4K Apr 20 19:04 favicon-152.png
-rw-r--r-- 1 dred dred 4.8K Apr 20 19:04 favicon-167.png
-rw-r--r-- 1 dred dred  544 Apr 20 19:04 favicon-16.png
-rw-r--r-- 1 dred dred 5.1K Apr 20 19:04 favicon-180.png
-rw-r--r-- 1 dred dred 5.5K Apr 20 19:04 favicon-192.png
-rw-r--r-- 1 dred dred 5.6K Apr 20 19:04 favicon-196.png
-rw-r--r-- 1 dred dred 6.4K Apr 20 19:04 favicon-228.png
-rw-r--r-- 1 dred dred  969 Apr 20 19:04 favicon-32.png
-rw-r--r-- 1 dred dred 1.7K Apr 20 19:04 favicon-57.png
-rw-r--r-- 1 dred dred 2.3K Apr 20 19:04 favicon-76.png
-rw-r--r-- 1 dred dred 2.7K Apr 20 19:04 favicon-96.png
-rw-r--r-- 1 dred dred 1.2K Apr 20 19:04 myweb-html-favicons.html
```

Contents of `myweb-html-favicons.html`:

```html
<link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16.png">
<link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32.png">
<link rel="icon" type="image/png" sizes="57x57" href="assets/img/favicon-57.png">
<link rel="icon" type="image/png" sizes="76x76" href="assets/img/favicon-76.png">
<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon-96.png">
<link rel="icon" type="image/png" sizes="128x128" href="assets/img/favicon-128.png">
<link rel="icon" type="image/png" sizes="167x167" href="assets/img/favicon-167.png">
<link rel="icon" type="image/png" sizes="192x192" href="assets/img/favicon-192.png">
<link rel="icon" type="image/png" sizes="228x228" href="assets/img/favicon-228.png">
<link rel="shortcut icon" type="image/png" sizes="196x196" href="assets/img/favicon-196.png">
<link rel="apple-touch-icon" type="image/png" sizes="120x120" href="assets/img/favicon-120.png">
<link rel="apple-touch-icon" type="image/png" sizes="152x152" href="assets/img/favicon-152.png">
<link rel="apple-touch-icon" type="image/png" sizes="180x180" href="assets/img/favicon-180.png">
```

### About the authors

I'm just starting to learn about coding. I made this extremely simple script just to save some time while I'm practicing creating different websites.

Probably I'll add some validations and an option to select specific resolutions.


Thanks!

