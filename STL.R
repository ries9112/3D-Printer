#To print using a 3d printer need to create an STL object

#chrome-extension://oemmndcbldboiebfnladdacbdfmadadm/https://cran.r-project.org/web/packages/r2stl/r2stl.pdf
library(r2stl)

# Let's do the classic persp() demo 
x <- seq(-10, 10, length= 100)
y <- x
f <- function(x,y) { r <- sqrt(x^2+y^2); 10 * sin(r)/r }
z <- outer(x, y, f)
z[is.na(z)] <- 1
r2stl(x, y, z, filename="firstExample.stl", show.persp=TRUE)
#https://polar3d.com/objects//269232

# Now let's look at R's Volcano data
z <- volcano
x <- 1:dim(volcano)[1]
y <- 1:dim(volcano)[2]
r2stl(x, y, z, filename="volcano.stl", show.persp=TRUE)
