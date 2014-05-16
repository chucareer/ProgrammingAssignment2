makeCacheMatrix <- function(x = numeric()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(solve) m <<- inverse
    getInverse <- function() m
    list(set = set, get = get,
         setInverse = serInverse,
         getInverse = getInverse)
}
