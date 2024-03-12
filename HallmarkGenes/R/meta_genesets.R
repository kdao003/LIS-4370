
#All .gmt files downloaded from GSEA would realistically be all organized into a single folder.
#This is where we assign all the file names into 1 object
meta_genesets <- function(x)
{
  files <- list.files(path = x, pattern = "HALLMARK", recursive = TRUE, full.names = TRUE)

return(files)

}




