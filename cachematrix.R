## Put comments here that give an overall description of what your
## functions do

## This function allows caching or obtain a matrix stored in cache

makeCacheMatrix <- function(x = matrix()) {

}
    ##inverse property
    I<- NULL
    set<- function(y) {
          x<<-y
          I<<- NULL
    }

    ##get the matrix x
    get<- function () x

    ##inverse x
    setinverse<- function(inverse) I <<-inverse

    ##set inverse x
    getinverse<- function () I
      list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)


## Calculates the inverse of a given matrix. If the matrix has been
## already calculated, it's retrived from the cached valued

cacheSolve <- function(x, ...) {
    I<-x$getinverse()
    if(!is.null(I)) {
        message("Getting data from cache")
        return(I)
    }
    data<-x$get()
    I<-solve(data,...)
    x$setinverse(I)
    I
}
