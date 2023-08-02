---
layout: default
---

# <span style="color:white">Software</span>
  
## Available software

Below is the list of software that you can choose from, alonside a short description and the most recent version.

- ```ginteff``` &mdash; computes the average and individual-level interaction effects for two- and three-way interactions. The effect of the interacted variables can be computed via either the partial derivate or the first difference. Version: v1.

  - To read about the software's features and capabilities, 
  - Please cite as follows:  
  Radean, Marius. 2023. "ginteff: A generalized command for computing interaction effects." *The Stata Journal*, 23(2): 301-335. DOI: <https://doi.org/10.1177/1536867X231175253">.
  
- ```ginteffplot``` &mdash; graphs the results of the immediately preceding ```ginteff``` command. Version: v1.

  - Please cite as follows:  
  Radean, Marius. 2023. "ginteff: A generalized command for computing interaction effects." *The Stata Journal*, 23(2): 301-335. DOI: <https://doi.org/10.1177/1536867X231175253">.
  
- ```sdii``` &mdash; computes significance of differences intervals to indicate whether two points estimates (typically the mean of distributions or of samples from the study population) are statistically or substantively distinct. Version: v1.

  - Please cite as follows:  
  Radean, Marius. 2023. "The Significance of Differences Interval: Assessing the Statistical and Substantive Difference between Two Quantities of Interest." *The Journal of Politics*, 85(3): 969-983. DOI: <https://doi.org/10.1086/723999">.

<br/>

## Direct instalation in ```Stata```

If this is the first time you are installing user-written programs from internet, you may find it useful to read the official ```Stata``` <a href="https://www.stata.com/manuals/rnet.pdf">documentation</a>. There you can find details about the commands used below as well as information about the directories where the downloaded packages should be installed.

To open the content page telling you about the available software packages on my website, type the following in ```Stata```'s command window 

```stata
. net from https://mariusradean.org
```

To open the package-description page detailing one of the listed packages and how to install the associated component files, type ```net describe``` followed by the package name. _pkgname_ may be any of the available software packages, ie, ```ginteff.pkg```, ```ginteffplot.pkg```, or ```sdii.pkg```.

<pre>
. net describe <i>pkgname</i>
</pre>

If you decide that one of the packages might prove useful, you can install the official files (the ado-file and help file) by typing ```net install``` followed by the package name.

<pre>
. net install <i>pkgname</i>
</pre>

To get the ancillary file (the user's manual in PDF format), type ```net get``` followed by the package name.

<pre>
. net get <i>pkgname</i>
</pre>

Instead of typing ```net describe```, ```net install```, or ```net get``` command lines, you can alternatively click on the links provided on the content and package-description pages.

<br/>

## Download a copy of the zip package

If you do not wish to install the software now and prefer to download a copy on your computer, you can do so by clicking on the respective link below. Each ZIP folder contains three files: 1) an ado-file (the program file), 2) the associated ```Stata``` help file, and 3) the user's manual in PDF format.

* [ginteff ZIP][1]
* [ginteffplot ZIP][2]
* [sdii ZIP][3]

[1]:{{ site.url }}/ginteff_program.zip
[2]:./downloads/ginteff.zip
[3]:https://mradean.github.io/new/ginteff_program.zip

<br/>

[back](./)
