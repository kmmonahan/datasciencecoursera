## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The below function, makeCacheMatrix, creates a matrix which will be able to cache its inverse while storing its own content

makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL
  
  setvar <- function(y) {
      x <<- y
      inv <<- NULL
}

  get <- function()x
  setinv <- function(inverse) invmatrix <<- inverse
  getinv <- function()invmatrix
  list(setmatrix = setmatrix, get = get, setinv = setinv, getinv = getinv)
  
}
## Write a short comment describing this function
## This function serves to get the inverse of the matrix created through the makeCacheMatrix forumla. The cashe will always retrieve the inverse from the current cashe

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  inv <- x$getinverse()
  if(!is.null(inv)){
  message("Getting Cashed Matrix")  
  return(inv)
  }
  datamatrix <- x$get()
  inv <- solve(datamatrix, ...)
  x$setinverse(inv)
  return(inv)
}  
