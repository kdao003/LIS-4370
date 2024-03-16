

#' Subset To Hallmark Pathways
#'
#' @param x Subset Enriched Signatures Table to only Hallmark Paths
#'
#' @return A new dataframe of the same name that will return the Hallmark Paths
#' @export
#'
#' @examples Subset_To_Hallmarkpaths(x)
Subset_To_Hallmarkpaths <- function(x)
{
  x <- x %>%
    filter(str_detect(ID,"HALLMARK.*$"))
}
















