
#' Open Genesets
#'
#' @param x This is where we open every file within the meta-file object we created using the
#' meta_genesets function
#'
#'
#' @return All files within the object created by meta_genesets are read. Each row will not contain the genes associated with
#' the .gmt filenames from each row.
#' Object is in a list format.
#' @export
#'
#' @examples open_genesets <- open_genesets(meta_genesets)
open_genesets <- function(x)
{

  gene_sets <- list()

  for (i in seq.int(x)) {
    gene_sets[[i]] <- read.gmt(x[i])
  }

  return(gene_sets)
}
