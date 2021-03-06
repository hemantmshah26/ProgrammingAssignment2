# second programming assignment will require you to write an R function is able 
# to cache potentially time-consuming computations. 
# For example, taking the mean of a numeric vector is typically a fast operation. 
# However, for a very long vector, it may take too long to compute the mean, 
# especially if it has to be computed repeatedly (e.g. in a loop). If the contents 
# of a vector are not changing, it may make sense to cache the value of the mean 
# so that when we need it again, it can be looked up in the cache rather than 
# recomputed. In this Programming Assignment will take advantage of the scoping 
# rules of the R language and how they can be manipulated to preserve state inside 
# of an R object.
# functions do

# Cache mean of the following vector 

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


# Write a short comment describing this function

cacheSolve <- function(x, ...) {
# Return a matrix that is the inverse of 'x'
  
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get ()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
  
}

