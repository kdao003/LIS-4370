#1.
#a.
A <- matrix(c(2,0,1,3), ncol=2) 
B <- matrix(c(5,2,4,-1), ncol=2)

#b.
A+B
A-B

#2.
diag(c(4,1,2,3))

#3.
matrix <- diag(3,5,5)

matrix[-2:-5,-1] <- 1
matrix[-1,-2:-5] <-2
     
matrix
