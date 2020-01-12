## These two functions cache (store) the inverse of a matrix as well as the matrix itself
## The first function creates an object (a matrix) that can be used later on to cache the inverse

makeCacheMatrix <- function(x = matrix()) {
        j <- NULL
        set <- function(y){
                x <<- y
                j <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse) j <<- inverse
        getInverse <- function() j 
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}



## This function finds the inverse of the matrix that the first function got

cacheSolve <- function(x, ...) {
        j <- x$getinverse()
        if (!is.null(j)) {
                message("getting cached data")
                return(j)
        }
        data <- x$get()
        j <- solve(data, ...)
        x$setinverse(j)
        m
}