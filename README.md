classic.models
==============

This package introduces includes datasets from the Classic Models database for the Analytics Designer from OpenText. The goal of this package is to provide a dataset for learning to integrate R scripts with the BIRT report design. These design files are used by the OpenText Information Hub (iHub) server. 

This package is a work in progress which includes:

* examples of grabbing tables of data from the iHub 
* examples of sending data to the iHub
* datasets from the Classic Models data

Future plans include adding:

* more R examples
* move examples from demos to vignettes
* more error checking

### Installation 
Install the package from the zip or the tar.gz file. For example:

```
install.packages("C:/Users/yourname/Downloads/classic.models_0.1.0.zip",repos = NULL) 
```

then, to use the package in your R workspace use the following command:

```
library(classic.models)
```

When you are ready to remove it, use the following command:

```
remove.packages("classic.models")
```

You can also install it directly from GitHub.
```
install.packages("devtools")
library("devtools")
install_github("shawngiese/classic.models")
```

If you receive any errors about loading the curl package, install that package manually. Then restart the installation of classic.models.
```
install.packages("curl")
```


### Notes
Building the package used some of the following resources:

* http://thecoatlessprofessor.com/programming/creating-an-r-data-package/
* https://cran.r-project.org/doc/manuals/R-exts.html#Data-in-packages
* https://github.com/search?p=5&q=user%3Acran+.onLoad+data&type=Code&utf8=✓
* http://tinyheero.github.io/jekyll/update/2015/07/26/making-your-first-R-package.html
* http://r-pkgs.had.co.nz/data.html
* https://cran.r-project.org/web/packages/roxygen2/vignettes/rd.html
* http://kbroman.org/pkg_primer/pages/docs.html

Don't forget devtools::build_vignettes()
