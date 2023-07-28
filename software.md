---
layout: default
---

# <span style="color:white">Software</span>

## List of available software

* Item sdii current version: v1

## Direct instalation in ```Stata```

If it is the first time you are installing user-written programs from internet, you may find it useful to read the official ```Stata``` documentation. There you can find details about the commands used below as well as information about the directories where the downloaded packages should be installed (https://www.stata.com/manuals/rnet.pdf).

The command line below To open a content page telling you about the available software packages on my website, you should type the following in ```Stata```'s command window 

```stata
. net from https://mariusradean.org
```

To open the package-description page detailing the package and how to install the component files, type ``net describe``` followed by the package name. _pkgname_ may be any of the available software packages, ie, ```ginteff.pkg```, ```ginteffplot.pkg```, or ```sdii.pkg```.

<pre>
. net describe <i>pkgname</i>
</pre>

To install the official files (the ado- and help-file), type ``net install``` followed by the package name.

<pre>
. net install <i>pkgname</i>
</pre>

To get the ancillary file (the user's manual in PDF format), type ```net get``` followed by the package name.

<pre>
. net install <i>pkgname</i>
</pre>

Instead of typing the ```net describe```, ```net install```, or ```net get``` command lines, you can alternatively click on the links provided on the content and package-description pages.

## Download a zip folder on your computer

If you do not wish to install the software now and prefer to download a zip package on your computer, you can do that by clicking on the respective link below.

* [ginteff zip package][1]
* [ginteffplot zip package][2]
* [sdii zip package][3]

[1]:https://mradean.github.io/minimal//ginteff_program.zip
[2]:https://mradean.github.io/minimal//ginteffplot_program.zip
[3]:https://mradean.github.io/minimal/sdii_program.zip

[back](./)
