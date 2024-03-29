#execute this only if you are on your local computer and want to 
#check whether you miss libraries for local running
#load libraries
# check.packages function: install and load multiple R packages.
# Check to see if packages are installed. Install them if they are not, then load them into the R session.
check.packages <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
# Usage example
packages<-c("tidyverse", "readxl","knitr","kableExtra","stringr","ggforce")
check.packages(packages)
