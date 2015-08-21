# These functions are used to create a special list that will contain a matrix, and its inverse.  Matrices
# will not be inverted until the cacheSolve function is used.  Because inversion can be very expensive for large
# matrices, cahceSolve is used to compute + store the inverse of a matrix so that it doesn't need to be computed again.

# Creates a list suitable for caching a matrix, and its inverse.
# There is no 'set' function as these items should be considered immutable.
makeCacheMatrix <- function(x = matrix()) {

  myVal = x
  c<-NULL
  get<-function() { myVal }
  getCache<-function() { c }
  setCache<-function(val) { c <<- val }
  
  list(value=get, inverse=getCache, setCache=setCache)
}


# Given an appropriate list from 'makeCacheMatrix', this function will return the inverse of its input matrix.
# The cache of the input list will be updated if needed.
cacheSolve <- function(x, ...) {

  # check the cache for the inverse.
  i = x$inverse()
  if (!is.null(i))
  {
    message("Getting cached value!")
    res<-i
  }
  else
  {
    # uncached, compute the inverse and cache it.
    res<-solve(x$value(), ...)
    x$setCache(res)
  }

  res
  
}
