## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function creates a matrix object and caches the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
        set <- function(y) {
                x <<- y
                a <<- NULL
        }
        get <- function() x
        setMatInv <- function(solve) a <<- solve
        getMatInv <- function() a
        list(set = set,
             get = get,
             setMatInv = setMatInv,
             getMatInv = getMatInv)
}

## Write a short comment describing this function
## The function is invoked to calculate the inverse of the matrix created earlier.
## If the reverse has already been calculated, it retrieves the value from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		a <- x$getMatInv()
        if (!is.null(a)) {
                message("getting cached data")
                return(a)
        }
        mat <- x$get()
        a <- solve(mat, ...)
        x$setMatInv(a)
        a
}
