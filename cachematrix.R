## To cache the inverse of a given matrx, we will have to assign the function call to makeCacheMatrix 
##into a Variable. Example myInverse<-makeCacheMatrix(myMatrix)

## makeCacheMatrix function will take a matrix as its argument and will return a list of four functions.
##This matrix will store the value for inverse of a matrix in a seperate environment 
##and this cached value will be available via getInverse function.

makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        get<-function() x
        
        set<-function(y){
                x<<-y
                inv<-NULL
        }
        
        getInverse<-function()inv
        
        setInverse<-function(inverse){
                inv<<-inverse
        }
        
        list(get=get,set=set,getInverse=getInverse,setInverse=setInverse)
}


## cacheSolve function takes makeCacheMatrix() as its argument.
##This function will calculate the inverse of the given Matrix if it is invertible
##else it will return an error "Please provide a non singular Matrix"
##If we provide a new Matrix it will calculate the inverse else it will get the value from Cache.

cacheSolve <- function(x, ...) {
        
        inv<-x$getInverse()
        if(!is.null(inv)){
                message("getting data from cache")
                inv
        }
        data<-x$get()
        if((class(try(solve(data),silent=T)))!="matrix"){
                stop("Please provide a non singular Matrix")
        }
        inv<-solve(data)
        x$setInverse(inv)
        inv
        
        ## Return a matrix that is the inverse of 'x'
}
