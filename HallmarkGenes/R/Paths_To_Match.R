
#'Match Hallmark Paths to Core Enrichment Column
#'
#' @param x Matches Genes in the opened gmt object previously created and matches them to genes
#'  found within the core_enrichment table of the enriched signatures table
#' @param y The name of the object containing all of the opened .gmt files
#'
#' @return A dataframe with a new column titled "matched_pathways". Whether the genes in y
#' is present in x, the name of the .gmt file in the y object will be attached in this column.
#' @export
#'
#' @examples Paths_To_Match(df,open_dataset)
Paths_To_Match <- function(x,y)
{
  for(i in 1:length(y))
  {
    x <- x %>%
      mutate(
        matched_pathways = ifelse(str_contains(core_enrichment, y[[i]], ignore.case = FALSE),
                                      names(y[[i]]), "No Pathway Found"))
  }
 return(x)
}

















