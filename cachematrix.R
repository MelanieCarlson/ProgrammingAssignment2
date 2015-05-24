## Put comments here that give an overall description of what your
## functions do

## Creating Matrix to hold the values to set and get the values of a matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
}

get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
     setmatrix=setmatrix,
     getmatrix=getmatrix)
}
## Solves the inverse of the above matrix after checking the cache to see if a solution is already stored.

cacheSolve <- function(xgit , ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
    }
  
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
