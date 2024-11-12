### More complicated Data Structures in R

# Vectors names...
v <- c(10, 20, 30)
names(v) <- c("Moe", "Larry", "Curly")
print(v)
## Select the element by name..
v["Larry"]

## Operations with Vectors...
library(lenght)
v<-c(v, 50)     ## not recommendend for append because bad use of memory...
v[lenght(v)+1] <- 60

v <- c(1,2,3)
v <- c(v,4) # Append a single value to v
v
#..if you need more items...
w <- c(5,6,7,8)
v <- c(v,w) # Append an entire vector to v
v

## if you need in a literal position in the Vector :
v <- c(1,2,3) # Create a vector of three elements
v[10] <- 10   # Assign to the 10th element
v             # R extends the vector automatically

## inserting data in a vector...
#  append(vec, newvalues, after=n)

append(1:10, 99, after=5)

append(1:10, 99, after=0)

### Operations with vectors with different lenghts..
r<- c(1:10)
t<- c(2:5)
result <- r + t   # the reciclyn rule...

#...with vectors too..
cbind(1:10)
cbind(1:5)

cbind(1:10, 1:5)  # recicle the first 5 elements of 2d vector

w <- (1:6) + 10

# --------------------------------------------------------------------
#  Factor : ...looks like as a vector but it has special properties..

# There are two key uses for factors:
## - Categorical variables
## - Grouping

## Creating a Factor (Categorical Variable)
v <- c(3,1,1,2,5); v
f <- factor(v)
f
plot(f)

#...we introduce the levels or Categories of a days...

f <- factor(v, c(1:5))
f
plot(f)


## Example :  Factores.R file...

## Matrices :
A <- 1:6
dim(A)
print(A)

# and we give some dimensions with "dim" attribute:
dim(A) <- c(2,3)
print(A)

B <- list(1,2,3,4,5,6)
dim(B)
# but...
dim(B) <- c(2,3)
print(B)

## Arrays in R : n-dimmensional elements...
D <- 1:12
dim(D) <- c(2,3,2)
print(D)

# in a list we can mix heterogeneous data..
C <- list(1, 2, 3, "X", "Y", "Z")
dim(C) <- c(2,3)
print(C)


#---------------------------------------------------------------------
##  Lists in R :
lst <- list(3.14, "Moe", c(1,1,2,3), mean)
lst
# we can see the values per position...
lst[[1]]
lst[[2]]
lst[[3]]

## Selecting elements from a list :
## lst[[n]]

years <- list(1960, 1964, 1976, 1994)
years

years[[1]]; class(years[[1]])
years[c(1,2)]; class(years[1])

##...we can see this using an editor....cat:
cat(years[[1]], "\n")

cat(years[1], "\n")

### Selecting list elements by name...
## lst$name
#  lst[c(name1, name2, ..., namek)]

years <- list(Kennedy=1960, Johnson=1964, Carter=1976, Clinton=1994)
years
years[["Kennedy"]]
years$Kennedy
years[c("Kennedy","Johnson")]

## value association lists...
lst <- list(mid=0.5, right=0.841, far.right=0.977)
lst

lst <- list()
lst$far.left <- 0.023
lst$left <- 0.159
lst$mid <- 0.500
lst$right <- 0.841
lst$far.right <- 0.977

#...another way :
values <- pnorm(-2:2)
names <- c("far.left", "left", "mid", "right", "far.right")

lst[names] <- values
lst

# ----------------------------------------------------------------
d <- as.Date("2010-03-15")
mode(d)
class(d)
lenght(d)

pi
lenght(pi)















