# Sociol 8802: Proseminar for GISD

This repository contains materials for introducing you to R with an emphasis on [markdown](https://rmarkdown.rstudio.com/lesson-1.html) 
and [dynamic documents](https://rmarkdown.rstudio.com/lesson-9.html).



# Getting Started with &nbsp;  <img src="https://www.r-project.org/logo/Rlogo.png" width="48"> &nbsp;&nbsp; (Sept 1<sup>st</sup>)

  * [R](https://cran.r-project.org/) & [R Studio](https://www.rstudio.com/)
  * [R markdown](https://rmarkdown.rstudio.com/gallery.html)
  * Basic syntax & data structures

# More &nbsp;  <img src="https://www.r-project.org/logo/Rlogo.png" width="48"> &nbsp;&nbsp; (Sept 8<sum>th</sup>)

  * Wrestling with data sets
  * Regression
  * Making tables & figures
  

<br/><br/>

## Instructions for installing R markdown
  
* Mac users will want to install the **X Quartz** program from [https://www.xquartz.org/](https://www.xquartz.org/)
  + (Mac uses this program to show plots)
  
* to install R markdown and LaTeX, run the following command in the R Studio (or R) console
  
  ```r
  install.packages(c("rmarkdown", "tinytex", "rprojroot", "Rcpp"),
                     repos = "http://cran.r-project.org")
  ```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Windows users may see a warning about needing to install the Rtools program, and 2 warnings complaining about missing files  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; associated with `luatex.dll`, but these can all be ignored.
  
* one more command to actually install LaTex:
      
  ```r
  tinytex::install_tinytex()
  ```
  
* To test your `tinytex` installation: close R Studio, re-open it, and run the following command in the console
    
  ```r
  tinytex:::is_tinytex() ## should return TRUE
  ```

* Reference for R markdown syntax

    + [cheat sheet](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf) (pdf)
    + [https://stats.oarc.ucla.edu/stat/data/rmarkdown/rmarkdown_seminar_flat.html#spacing-and-paragraphs](https://stats.oarc.ucla.edu/stat/data/rmarkdown/rmarkdown_seminar_flat.html#spacing-and-paragraphs) (html)
    
