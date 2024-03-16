#data-raw/HallmarkGenes.R
#dataframe containg enriched signatures table

df <- read.delim("TRUE_TET2_Mutated_EIF2AK3_Enrich_Sig_Table_0vs1.tsv", header = TRUE)



usethis::use_data(df, overwrite = TRUE)
