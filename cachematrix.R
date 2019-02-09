<<<<<<< HEAD
## Purpose is to create a set of functions which calculates the inverse of a matrix
## and to cache the results allowing fast retrieval 

## This function creates an R object that stores a matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) { ## x initialised as an empty matrix object to prevent later errors.
        m <- NULL               ##  initialising as an object to be used later
        set <- function(y) {
                x <<- y         ## assigns the input matrix to the object x in the parent environment.
                m <<- NULL      ## clears any cached value of m, inverse will be recalculated when x is reset ensuring 
                                ## no incorrect cached inverses are retrieved.
         }
        get <- function() x     ## defines the getter for x, retrieves x from the parent environment.
        setinverse <- function(inverse) m <<- inverse #defines the setter for the inverse m, assigns the input argument 
                                ## to m in the parent environment
        getinverse <- function() m ## defines the getter for the inverse m, retrieves from parent environment.
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) ## assigns each of the four getter/setter
                                ## functions as an element within a list, and returns it to the parent environment.
}

## This function retrieves the inverse from the cached value stored in the makeCacheMatrix environment.

cacheSolve <- function(x, ...) {
        m <- x$getinverse()                    ## retrieve the inverse from m in parent environment.
        if(!is.null(m)) {                      ## check to see if m is NULL
                message("getting cached data") ## if is NULL, retrieves inverse from the cache.
                return(m)
        }
        data <- x$get()                        ##if not NULL, retrieves matrix from input object
        m <- solve(data) %*% data              ##calculates the inverse
        x$setinverse(m)                        ## sets the inverse in the input object
        m                                      ##returns value of inverse to the parent enironment.
}

=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
