
empty_matrix <- matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)
#Transpose A and B  given a matrix or data.frame x, t returns the transpose of x.
transpose_A <- t(A)
transpose_B <- t(B)

#create two vectors (a and b)
vector_a <- vector()
vector_b <- vector()

#multiply matrices by vectors
transpose_A <- transpose_A * vector_a
transpose_B <- transpose_B * vector_b

transpose_A
transpose_B

#re-assign the vectors a and b to equal the number of rows of the column for the corresponding matrix
vector_a <- transpose_A
vector_b <- transpose_B

vector_a
vector_b

#Multiply the matrix by a matrix
vector_a <- vector_a * transpose_A
vector_b <- vector_b * transpose_B

vector_a
vector_b

#Inverse a matrix
S=matrix(2:5, nrow=2)

#check det()
det(S)




