### Programming assignment 2:  Caching the Inverse of a Matrix

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` will retrieve the inverse from the cache. This function will also return an error if the input matrix is     non invertible.

