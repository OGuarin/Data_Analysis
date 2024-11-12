#  Input and Output in R :

# read.csv file
# read.table file

# print, cat, format to produce a simple report

# Entering data from de Keyboard:
scores <- c(61, 66, 90, 88, 100)

#-------Revisar :
scores <- data.frame() # Create empty data frame
scores <- edit(scores) # Invoke editor, overwrite with edited data
drop.terms(scores)

# ------------------------------------------
points <- data.frame(                  # Data Frame structured
  label=c("Low", "Mid", "High"),
  lbound=c( 0, 0.67, 1.64),
  ubound=c(0.674, 1.64, 2.33)
  )

# Number of digits in a variable or expression:
pi; r<-10; area<-2*pi*r
print(area)

print(area, digits=4)

# Using cat format:
cat(pi, "\n")
cat(format(pi,digits=4), "\n")

# formatting entire vector:
pnorm(-3:3)                # Normal Distribution of prob vector...
print(pnorm(-3:3), digits=3)

# Formatting for a table:
q <- seq(from=0,to=3,by=0.5)
tbl <- data.frame(Quant=q, Lower=pnorm(-q), Upper=pnorm(q))
tbl                  # Unformatted print

print(tbl,digits=2)  # Formatted print: fewer digits

# using options functions...
pi
options(digits = 4)
pi

# ------------------------------------------------------------------------

# Redirect output to a File:
answer = "right"
cat("The answer is", answer, "\n", file="filename")
color = "Red"
cat("The color is", color, "\n", file="filename", append= TRUE)

# ..redirect all output (cat, print) to a file..
sink("filename")                    # Begin writing output to file
# . . . other session work . . .

sink()                              # Resume writing output to console

#  ..a common use for sink is to capture the output of an R script:
sink("script_output.txt")        # Redirect output to file
source("Diabetes_Exercise1.R")   # Run the script, capturing its output
sink()                           # Resume writing output to console


# List of Files..
list.files()
list.files(recursive=T)
list.files(all.files=TRUE)  #  to see hidden files

# Reading Tabular DataFiles
require(datasets)----optional
dfrm <- read.table("C:/Users/oguar/documents/statisticians.txt")
print(dfrm)

# dfrm <- read.table("filename.txt", sep=":") # Archive separated with :
# NA convertion to . character
dfrm <- read.table("C:/Users/oguar/documents/statisticians.txt", na.strings=".")  

# The header definitions:
dfrm <- read.table("C:/Users/oguar/documents/statisticians.txt", header=TRUE, stringsAsFactor=FALSE)
print(dfrm)

# Reading from CSV files:
tbl <- read.csv("filename")

tbl <- read.csv("filename", header=FALSE)  # without headers....
# Exercise 1:
df = read.csv("C:/Users/oguar/PycharmProjects/pythonProject/diabetes.csv")
print(df)

str(df)  # Define the structure of table object

# Define the laber like a strings and not like a factors...
df = read.csv("C:/Users/oguar/PycharmProjects/pythonProject/diabetes.csv", as.is=TRUE)
str(df)

# ---------------------------------------------------------------------
#  Exer2 : Baloto-revancha Game
br = read.csv("C:/Users/oguar/OneDrive/Documentos/Programs Data/RStudio/baloto_rev.csv", header=TRUE, stringsAsFactor=FALSE)
print(br)
x <- br$b1
print(x)
mean(x,na.rm=TRUE)  # HIGH Probability for number 9????
mean(br$b1)
plot(br$b1)

bdf = read.csv("C:/Users/oguar/OneDrive/Documentos/Programs Data/RStudio/baloto.csv", header=TRUE, stringsAsFactor=FALSE)

sapply(bdf, function(x) mean(x))   # Mean calculus for all dataframe (source apply sapply)
sapply(br, function(x) sd(x))

# define all the statistical values for each parameter....
summary(bdf)  

# Mode calculation for a Variable:
# ...we need the modeest package..
install.packages(modeest)
library(modeest)
mfv(br$b4, na.rm=TRUE)
mfv(br$b3)

print(x)

### Import from an Excel file...
library(readxl)  # we need activate the readxl package
baloto <- read_excel("C:/Users/oguar/OneDrive/Documentos/Programs Data/RStudio/baloto.xls")
print(baloto)
head(baloto, 3)

br <- read_excel("C:/Users/oguar/OneDrive/Documentos/Programs Data/RStudio/baloto_rev.xls")
print(br)
head(br, 10)   ### head of the first 10 registers...

## Loading a wide Dataset (world earning rancking)
rank_earn<-read.csv("C:/Users/oguar/OneDrive/Documentos/Programs Data/RStudio/Companies_ranked_by_Earnings.csv", header=TRUE, stringsAsFactor=FALSE)
mean(rank_earn$earnings_ttm, na.rm=TRUE)
str(rank_earn)

# we must to change the variable type to numeric format....
rank_earn$earnings_ttm<-as.numeric(rank_earn$earnings_ttm)
mean(rank_earn$earnings_ttm, na.rm=TRUE)

rank_earn$price..GBP.<-as.numeric(rank_earn$price..GBP.)


















