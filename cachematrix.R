## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this function gets and sets the matrices and generates the inverse of a matrix using the solve function

makeCacheMatrix <- function(x = matrix()) {

       m <- x
        set <- function(y= matrix()) {
                x <<- y
                m <<- x
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve(x)
        getinverse <- function() solve(m)
        list(set = set, get = get,
             setinverse  = setinverse ,
             getinverse = getinverse )

}

## Write a short comment describing this function

## This function gets the cashed inveresd matrix if the matrix did not change otherwise computes and returns the inverse


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$getinverse(m)
        m
}
