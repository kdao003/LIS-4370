

#New
#Old code was evaluating the arguemtns in the for loop. The return statement is a command of itself
# and cannot be evaluated simultaneously as the arguments from the for loop
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
    for (j in 1:ncol(x))
    {
      outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
    }
  outlier.vec <- vector(length=nrow(x))
    for (i in 1:nrow(x))
    { 
      outlier.vec[i] <- all(outliers[i,]) 
    } 
  return(outlier.vec) 
  }


#Old
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) }






