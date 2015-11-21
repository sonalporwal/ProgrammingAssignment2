## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 I<-NULL
    set<-function(z){
        y<<-z
        I<<-NULL
        }
        get<-function() y
    setInverse<-function(inverse) I<<-inverse
    getInverse<<-function() I
    list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    I<-y$getInverse()
    if(!is.null(I)){
        message("get cached Inverse")
        return(I)
    }
    data<-y$get()
    I<-solve(data)
    y$setInverse(I)
}

Matrix<-makeCacheMatrix(matrix(c(2,3,1,4),2,2))
Matrix
Matrix$getInverse()
cacheSolve(Matrix)
Matrix$getInverse()
