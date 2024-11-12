#  DAta Types....
## Numeric Data

x<- 3500
class(x)
y<-20
class(y)
notas <- c(3,4,6,8,9,5)
class(notas)
str(notas)

name <- "Marco Antonio"
class(name)

validate = FALSE
pss <- "Pass"
if pss == "Pass" :   # conditional status...
  validate <- TRUE
else:
  break

class(validate)

# Date data Types...for a date calculation 
## born <- 1972-07-30 ...not validate format...
born <- as.Date("1972-07-30")
class(born)

# Factor Data Types...
gen <- factor("Hombre")   # using for a variables classification in a vector
class(gen)


# Type Data validations Functions:
is.numeric(x)
is.character(x)
xc<-as.character(x) ###  revisar,....
is.character(xc)
xc
class(xc)
is.factor(gen)
is.data.frame(br)

# getwd and setwd Functions...
getwd()   # look for an actual Working Directory
setwd("C:/Users/oguar/OneDrive/Documentos/Programs Data/RStudio")
library(utils)
require(utils)

choose.dir(getwd(), "Choose a suitable folder")
#...possible solution:
library(tcltk)
setwd('~')
getwd()
# [1] "C:/Users/Root/Documents"
dir <- tclvalue(tkchooseDirectory())  # opens a dialog window in 'My Documents'
choose.dir()
setwd(choose.dir())
choose.files()  # select the path to the file that i needing...

# another statements...
if (interactive() && .Platform$OS.type == "windows")
  choose.dir(getwd(), "Choose a suitable folder")
# ----------------------------------------------------
## Example:
#  C:\Users\oguar\PycharmProjects\pythonProject file location..

library(readr)
diab_df <- read_csv(choose.files())   ##choice the csv file that you want to read

# List the Directories and files of Working path :
list.dirs()
list.files()

# ---------------------------------------------------------------------------
## Exer3:  Install R Tools...
## go to R Project and install the program...
## probe with the Sys.which("make") command..

install.packages("jsonlite", type="source")
library(jsonlite)

# Data Structures

## Vector
x <- c(1,3,5,7,9,11,15,17,21,33)
print(x)

### Data Frames
colors <- data.frame(x=1:5, y=c("rojo", "azul", "verde", "violeta", "café"))
colors

## Reading tables from a html files...URL:
library(XML)
require(XML)...
url <- 'https://github.com/mdn/css-examples/blob/main/learn/tasks/tables/table-download.html'
tbl <- readHTMLTable(url)

tbl <- readHTMLTable(url, which=3)  # define the table that we needing...

## Data Matrix
?matrix
##Example:
mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2"),
                               c("C1", "C2", "C3")))
mdat
# Ex- moviesm.R  in the BootCamp Mentor File Directory


## ------------------------------------------------------------------
### Reading complex structures with readlines

# Format :: lines <- readLines("input.txt")  # read a R Script or arragement...

## Example1:
singnum_df <- scan("Singles_numbers.txt", what=numeric(0))
singnum_df

# Example2:
triple_df <- scan("triplex.txt", what=list(character(0),numeric(0),numeric(0)))
triple_df

# -----------------------------------------------------------------------------
###  Reading from MySQL Database:
## it´s necessary to install the RMySQL Package...
"""
1. Install the RMySQL package on your computer.
2. Open a database connection using the dbConnect function.
3. Use dbGetQuery to initiate a SELECT and return the result sets.
4. Use dbDisconnect to terminate the database connection when you are done."""

## Packages activated requirements...
require(RMySQL)

conn <- dbConnect(MySQL(), user="root", password="MiSQL$9xMnT&",
                 host="localhost", client.flag=CLIENT_MULTI_RESULTS)
sql1 <- "USE dbtienda"
dbact <- dbGetQuery(conn, sql1)
sql2 <- "SELECT * from dbTienda.productos"
products <- dbGetQuery(conn, sql2)

sql3 <- " SELECT sku_prod, nom_prod, precio FROM dbtienda.productos WHERE precio < 100.0"
products2 <- dbGetQuery(con, sql3)

sql_prod1 <- dbGetQuery(conn, "SELECT sku_prod, nom_prod, precio FROM dbtienda.productos WHERE precio < 100")

# Lista de Productos con precio del Fabricante Asus:
sql_prod2 <- dbGetQuery(conn, "SELECT sku_prod, nom_prod, precio FROM dbtienda.productos, dbtienda.fabricantes WHERE nom_fab = 'Asus'
                        && precio >= 100")

mean(sql_prod2$precio)
library(readr)
library(tcltk)
#library(utils)
choose.files()
sql2 <- read_csv(choose.files())  # read the sql2_prod file from Workbench....
list.files()

median(sql2$precio)

print(sql_prod2)
x<- sql2$sku_prod
y<- sql2$precio
plot(x,y)


##  SQLite connections:
## DBI and RSQLite Packages needing...
library(DBI)
library(RSQLite)
library(sqliteutils)
choose.files()
sqlite_con <- dbConnect(SQLite(), dbname= "C:\\Users\\oguar\\dBase\\TDC_DataBase.db")
sql3 <- "SELECT * FROM Statistics2024"
statistics_df <- dbGetQuery(sqlite_con, sql3)
statistics_df
str(statistics_df)
summary(statistics_df)

statistics_df$Abr
stat_TDC <- statistics_df[4, ]
str(stat_TDC)
stat_TDC <- as.numeric(stat_TDC)

median(stat_TDC, na.rm=TRUE)

stat_TO <- statistics_df[3, ]
str(stat_TO)
summary(stat_TO)
median(stat_TO, na.rm=TRUE)
# La media de la TO en Colombia para Ago es del 58,3%

plot(stat_TO)

sql4 <- "SELECT Concepto, Jul, Ago FROM Statistics2024 WHERE Concepto = 'Poblacion' AND Concepto = 'Tasa de Desocupación'"
statistics_df <- dbGetQuery(sqlite_con, sql4)
dbListTables(sqlite_con)
dbDisconnect(sqlite_con)


##PostgreSQL Connection:
## RPostgreSQL Package is needing...and DBI
library(RPostgreSQL)

postg_con <- dbConnect(PostgreSQL(), user="postgres", password="Ad$45mrt9*", host= "localhost", port= 5432, dbname="Colombinadb")
custom <- dbGetQuery(postg_con, "SELECT * FROM Products")
getwd()


## Saving and Transporting Objects in R:

save(myData, file="myData.RData")

# using load function...
load("myData.RData")

### to save in ASCII format, use this:
dput(myData, file="myData.txt")
dump("myData", file="myData.txt")












  
  