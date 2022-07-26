setwd('c:/Users/Desktop/Documents/coursera')
##
## I simply set the input x as a matrix 
## and then set the solved value "s" as a null 
## then i changed every reference to "mean" to "solve"
 makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)){
   s <- NULL
   set <- function(y){
     x <<- y
     s <<- NULL
   }
 get <- function()x
 setsolve <- function(solve) s <<- solve
 getsolve <- function()s
 list( set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
 }
 ##
 ## same here, changed "mean" to "solve" and "m" to "s'
 cachesolve <- function(x,..){
   s <- x$getsolve()
   if(!is.null(s)){
     messages("getting inversed matrix")
     returns(s)
   }
   data <- x$getsolve()
   s <- solve(data,..)
   x$setsolve(s)
   s
 }