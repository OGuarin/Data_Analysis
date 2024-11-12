# Script for Exercise in R

x <- c(0,1,1,2,3,5,8,13,21,34,55) # nolint # nolint: commas_linter.
mean(x)
median(x)
sd(x)    # Desviación Estándar del conjunto de datos

var(x)   # Varianza de x

# Funciones de Correlación y Co-varianza :

x <- c(0,1,1,2,3,5,8,13,21,34) # nolint: commas_linter.
y <- log(x + 1)
cor(x, y)    # Correlación entre los valores de ambas variables
cov(x, y)    # Co-varianza entre las variables de estudio
plot(x, y)

# Dataset with NA values in a serie
x <- c(0, 1, 1, NA, 2, 3, NA)
mean(x)
#  The result is and NA and don´t execute the command well...
sd(x)
sd(x, na.rm = TRUE)  #...we need to call the na.rm TRUE parameter and producte a result... # nolint
mean(x, na.rm = TRUE)

# Creating a sequences...
1:5
seq(from = 1, to = 10, by = 2)
v <- rep(2, times = 10)

0:9
9:0  #  Inverse sequence...

# Vector management...
fib <- c(2, 1, 10, 2, 3, 5, 8, 13, 21, 34)
fib
fib[3]
fib[0:3]

# Comparing vectors :

a <- 3
a == pi # Test for equality

a != pi # Test for inequality
a < pi
a > pi
a <= pi

# Vector asignments...
years <- c(1960, 1964, 1976, 1994)
names(years) <- c("Kennedy", "Johnson", "Carter", "Clinton")
years

# Register searchs..
years["Carter"]
years["Clinton"]
years[c("Carter","Clinton")]

# Functions Implementation
# Function Sintax:
function(param1, ..., paramN) {
  expr1
  .
  .
  .
  exprM
}

cv <- function(x) sd(x)/mean(x)  # Coefficient of Variation
cv(1:10)

# Euclid’s algorithm for computing the greatest common divisor of two integers:
gcd <- function(a,b) {
  if (b == 0) return(a)
  else return(gcd(b, a %% b))
}
gcd(3, 9)

# ------------------------------------------------------
# Vector Operations :

v <- c(11,12,13,14,15) # nolint
w <- c(1,2,3,4,5) # nolint: commas_linter.
v + w
v - w
v * w
v / w
w ^ v    # Exponenciation Operation

w + 2    # Operations with a scalar number....
w * 3
w ^ 3

mean(w)
w - mean(w)
sd(w)
print(w - mean(w))/sd(w)  # Z Core of w vector

r <- sqrt(w)
print(r)
s <- log(w)
t <- log10(w)
u <- sin(w)
print(u)
plot(u)











  


