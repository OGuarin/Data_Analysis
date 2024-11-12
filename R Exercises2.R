# Working with the R files and Packages
search()

# Loading Packages into R :
library(blob)
library(ggplot2)
search()

detach(package:blob)
library(ggvis)
search()

# ---------------------------------------------------------
pressure
head(pressure)  # using dataset "Pressure"

data()   # Call the DataSets Library..
data(quakes)

data(Cars93, package="MASS")
summary(Cars93)   # Summary of data involucred
head(Cars93)

data(package="MASS")
data(Melanoma, package = "MASS")

# Describe the Package Installed in R :

library()  # Describe a List of Package
library(RSQLite)

installed.packages()  # Define a detailed list of packages installed
installed.packages()[,c("Package","Version")]

# Install Packages from CRAN
# Format:
install.packages("packagename")
install.packages("colorspace")
library(colorspace)

# Install Packages in a Private Directory
# Make a new Directory (~/libs/R)
# $ mkdir ~/lib
# $ mkdir ~/lib/R
# Set R_LIBS enviorement variable...
# export R_LIBS = ~/lib, bash syntax
# setenv R_LIBS ~/lib, csh syntax

# install.packages("packagename", lib="~/lib/R")

# Default CRAN mirror :
chooseCRANmirror()

options("repos")[[1]][1]
options(repos="URL")

# -----------------------------------------------------------------
# running a Script :
source("Diabetes_Exercise1.R")  # Introduce the path to .R file
source("Diabetes_Exercise1.R", echo = TRUE)

# Getting and setting enviroment variables:
Sys.getenv("SHELL")

#/bin/bash :
Sys.setenv(SHELL="/bin/ksh")

# Sys.putenv(DISPLAY="localhost:10.0")
# Sys.putenv(DISPLAY="zeus:0.0")

# Locating the R Home Directory :
Sys.getenv("R_HOME")

# Customizing R :
require(MASS)
options(prompt="R> ")

# Setting Options :
help(options)
options()

# Default Packages from the R Start init...
# defaultpackages options...
# Script to add package to defaultPackages
pkgs <- getOption("defaultPackages") # Get system list of packages to load
pkgs <- c(pkgs, "package_name")      # Append "zoo" to list
options(defaultPackages = pkgs)      # Update configuration option
rm(pkgs)                             # Clean up our temp variable

# StartUp sequence :
help("Startup")






















