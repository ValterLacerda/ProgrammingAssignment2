## This is the solution for Coursera Programming Assingment 2 - Lexical Scoping

## this function creates an object that caches the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
        get <- function() x
        setmatrix <- function(solve) 
        m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
                setmatrix = setmatrix,
                getmatrix = getmatrix)
}

##this function calculates the inverse matrix 
##based on the return of makeChaceMatrix
cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
        if(!is.null(m)){
        return(m)
        }
  
        matrix <-x $get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        return(m) ## Return a matrix that is the inverse of 'x'
}
