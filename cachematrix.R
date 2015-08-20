## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    c<-NULL
    list(mat=x, cache=c)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

  # check the cache for the inverse.
  if (!is.na(x$cache))
  {
    res<-x$cachen
  }
  else
  {
    res<-solve(x$mat, ...)
    x$cache = res
  }
    # if it is cahced, use it,
  
  #if not..
          ## Return a matrix that is the inverse of 'x'

  res
  
  }
