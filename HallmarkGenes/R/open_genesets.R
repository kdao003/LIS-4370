
#This is where we open every file within the object we created in the first function, and then
# create one object with all of the genes from each file in a list format.
open_genesets <- function(x)
{

  gene_sets <- list()

  for (i in seq.int(x)) {
    gene_sets[[i]] <- read.gmt(x[i])
  }

  return(gene_sets)
}
