
#' Open Genesets
#'
#' @param x This is where we open every file within the meta-file object we created using the
#' meta_genesets function
#'
#'
#' @return An object with all the genesets corresponding to the hallmark pathways are opened.
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
