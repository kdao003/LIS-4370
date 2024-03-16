


#' Meta Genesets
#'
#' @param x To use this function, all.gmt files downloaded from GSEA would
#' ideally be organized into a single folder.
#'
#' @return All file names within that folder will be assigned to a single object.
#' The open_genesets function will then read all of the files within that singular object
#' @export
#'
#' @examples meta_genesets <- function("/insert/path/to/folder/here")
meta_genesets <- function(x)
{
  files <- list.files(path = x, pattern = "HALLMARK", recursive = TRUE, full.names = TRUE)

return(files)

}




