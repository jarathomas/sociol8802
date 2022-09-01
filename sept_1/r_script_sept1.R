#-----------------------------------------------------------------------------#
# r_script_sept1.R -- this file introduces useful commands for getting        #
# with R.                                                                     #
#                                                                             #
# Prosem for GSID                                                             #
# Created: 2022/09/01 -jt                                                     #
# Last Modified: 2022/09/01 - jt                                              #
#                                                                             #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# 0: BASIC COMMANDS
#-----------------------------------------------------------------------------#

# 0.1: Set up Working Directory
date()              ## print the current date and time at the Console
getwd()             ## print the current working directory at the Console
dir()               ## print the names of files/folders in the current directory
dir("../")          ## print the contents in the folder "above" the current one
setwd("/Users/thomas.3912/School/IPR/Workshops/introR/soc8802_2022_08")       ## set the working directory to the folder "above" the current one
## alternatively, from the window menus: "Session" -> "Set Working Directory" -> "Choose Directory..."
dir()

# 0.2: Creating Objects
ls()                   ## what objects are in R's memory?

x <- 3                 ## create a new object called "x" that holds the value 3
x                      ## print the content(s) / value(s) by evaluating the object's name
y <- c(5, -2, 0.2)     ## create another object by concatenating 3 numbers
y
z <- c("red", "green") ## we can use characters (or strings) as well
z
ls()

## What does this do?
new_z <- c("red", "green", 3)

## finally, if you wanted to remove an object, say z, 
rm(z)
ls()
## you can remove everything in memory with: rm(list=ls()) 

# 0.3: Check Libraries and Access Help Files
library()                 ## list the libraries (or packages) that are installed on your computer
install.packages("haven") ## install the haven package (only need to do this once)
## install.packages(c("dplyr", "ggplot2"))  ## install multiple mpackages
help(package = "haven")
library(haven)
?read_dta

help.search("weighted mean")  ## can also use: ?? "weighted mean"
help("weighted.mean")         ## can also use: ?weighted.mean


# 0.4: Working with data
data(mtcars)      ## load the mtcars data set that is installed with R
names(mtcars)     ## column names and more information
str(mtcars)

## working with Stata data files
write_dta(mtcars, path = "mtcars_data.dta", version = 15)
dir(".")
new_data <- read_dta("mtcars_data.dta")
names(new_data)
head(new_data)

## working with CSV data files
write.csv(new_data, file = "mtcars_data.csv", row.names = FALSE)
dir(".")
more_data <- read.csv("mtcars_data.csv")
str(more_data)
save(more_data, file = "more_data.RData")
rm(more_data)
ls()
load("more_data.RData")
ls()
names(more_data)

## Note: the foreign & readxl packages are also useful for reading in data


# 0.5 Exercises

## [1] Create a new object/vector, called X, that holds the numbers for 1 to 10.

## [2] Create a new vector, called X_log, that is equal to the log of X.

## [3] Create 4 new vectors that hold letters a, b, c, and d,  Call the new vectors: 
##     (1) _new_vector, (2) 4timesX, (3) new_vector, and (4) new.vector

## [4] Describe what happens with the following commands (without running them)
n <- 3:6
n
n <- n + n
n
3 + N

## [Bonus] write an if statement that only creates the folder Chewbacca
##         if it does not already exist.


#-----------------------------------------------------------------------------#
# Brief break to learn about data types and data structures                   # 
#-----------------------------------------------------------------------------#
## useful functions: length(), summary(), rep(), sort(), order()
x <- 1:10
x
length(x)
summary(x)
rep(x, 2)    ## same as rep(x, times = 2)
rep(x, each = 3)
sort(x)  
order(x)     ## hmm...not very interesting
x <- 10:1
x
sort(x)
order(x)     ## how do we get the order from largest to smallest?

## seq() can also be helpful

## basic indexing, missing data, and ugh!
x[2]
x[2] <- NA  ## we will change the second number to NA (R's way of indicating missing data/values)
sum(x)      ## uh-oh, can you figure out how to fix this so we get an actual number?


## Now let's learn about other types of data structures (back to the slides)

#---------------------------------------------------------------------#
# 99: ALL DONE
#---------------------------------------------------------------------#
save.image("r_script_sept1.RData")
