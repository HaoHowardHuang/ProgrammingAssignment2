## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inversematrix <- NULL
	setvalueofmatrix <- function(y){
		x<<-y
		inversematrix<<-NULL
		
	} 
	getvalueofmatrix <- function(){x}
	setvalueofinverse <- function(inverse) {inversematrix <<- inverse}
	getvalueofinverse<-function(){inversematrix}
	
	list(setvalueofmatrix=setvalueofmatrix, getvalueofmatrix=getvalueofmatrix,
	setvalueofinverse=setvalueofinverse, getvalueofinverse=getrvalueofinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inversematrix <- x$getvalueofinverse()
        if(is.null(inversematrix)==FALSE){
        return(inversematrix)}
        else{dataofmatrix <- x$getvalueofmatrix()
        	inversematrix <- solve(dataofmatrix)
        	return(inversematrix)
        	}
        
}
