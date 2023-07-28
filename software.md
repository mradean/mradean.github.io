---
layout: default
---

## List of available software

* Item sdii current version: v1

## Direct instalation in Stata

```stata
// Stata console
. net from https://mariusradean.org
```

This command opens a content page telling you about the available software packages on my website. 

A package-description page describes the package and tells you how to install the component files.

```stata
. net describe __pkgname__
```

You install the official files by typing net install followed by the package name.
```stata
. net install __pkgname__
```

You get the ancillary files—if there are any and if you want them—by typing net get followed by the package name: ```stata
. net install __pkgname__
```

You do not necessarify have to type the 'net describe __pkgname__', 'net install __pkgname__', or 'net get __pkgname__' commands. Alternatively, you can click on the links provided on the content and package-description pages, respectively.

Where packages are installed. Packages should be installed in PLUS or SITE, which are code words that Stata understands and
that correspond to some real directories on your computer. Typing sysdir will tell you where these
are, if you care.


## Download a zip folder on your computer

Click on the respective link to download a particular zip package

* [ginteff zip package][1]
* [ginteffplot zip package][2]
* [sdii zip package][3]

[1]:https://mradean.github.io/minimal//ginteff_program.zip
[2]:https://mradean.github.io/minimal//ginteffplot_program.zip
[3]:https://mradean.github.io/minimal/sdii_program.zip

### Levels

- level 1 item
  - level 2 item

[back](./)
