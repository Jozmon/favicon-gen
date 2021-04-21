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

## Demonstration

First we place the source file and the script in the same folder.

```shell
dred@debian:~/fg$ ls -lh
total 8.0K
-rwxr-xr-x 1 dred dred 1.9K Apr 20 18:43 faviconGen.sh
-rw-r--r-- 1 dred dred 3.1K Apr 20 18:43 favicon.svg
```

Then we give the script execute permissions.

```shell
dred@debian:~/fg$ ls -l faviconGen.sh
-rw-r--r-- 1 dred dred 1866 Apr 20 18:43 faviconGen.sh
dred@debian:~/fg$ chmod +x faviconGen.sh
dred@debian:~/fg$ ls -l faviconGen.sh
-rwxr-xr-x 1 dred dred 1866 Apr 20 18:43 faviconGen.sh
```

Finally we run the script.

```shell
dred@debian:~/fg$ ./faviconGen.sh
Name for the html file (without the .html extension):
skull
Route to use in the href attribute (ie.: /images/):
/assets/img/
Writing the HTML tags...
Generating the favicons in the necessary resolutions...
Done!
```

Now we can check the results.

```shell
dred@debian:~/fg$ ls -lh
total 12K
-rwxr-xr-x 1 dred dred 1.9K Apr 20 18:43 faviconGen.sh
-rw-r--r-- 1 dred dred 3.1K Apr 20 18:43 favicon.svg
drwxr-xr-x 2 dred dred 4.0K Apr 20 19:04 skull-favicons
dred@debian:~/fg$ cd skull-favicons
dred@debian:~/fg/skull-favicons$ ls -lh
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
-rw-r--r-- 1 dred dred 1.2K Apr 20 19:04 skull-html-favicons.html
```

```shell
dred@debian:~/fg/skull-favicons$ cat skull-html-favicons.html
<link rel="icon" type="image/png" sizes="16x16" href="/assets/img/favicon-16.png">
<link rel="icon" type="image/png" sizes="32x32" href="/assets/img/favicon-32.png">
<link rel="icon" type="image/png" sizes="57x57" href="/assets/img/favicon-57.png">
<link rel="icon" type="image/png" sizes="76x76" href="/assets/img/favicon-76.png">
<link rel="icon" type="image/png" sizes="96x96" href="/assets/img/favicon-96.png">
<link rel="icon" type="image/png" sizes="128x128" href="/assets/img/favicon-128.png">
<link rel="icon" type="image/png" sizes="167x167" href="/assets/img/favicon-167.png">
<link rel="icon" type="image/png" sizes="192x192" href="/assets/img/favicon-192.png">
<link rel="icon" type="image/png" sizes="228x228" href="/assets/img/favicon-228.png">
<link rel="shortcut icon" type="image/png" sizes="196x196" href="/assets/img/favicon-196.png">
<link rel="apple-touch-icon" type="image/png" sizes="120x120" href="/assets/img/favicon-120.png">
<link rel="apple-touch-icon" type="image/png" sizes="152x152" href="/assets/img/favicon-152.png">
<link rel="apple-touch-icon" type="image/png" sizes="180x180" href="/assets/img/favicon-180.png">
```

### About the author

I'm just starting to learn about coding. I made this extremely simple script just to save some time while I'm practicing creating different websites.

Probably I'll add some validations and an option to select specific resolutions.

Thanks!
