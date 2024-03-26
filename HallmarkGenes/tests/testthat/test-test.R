#Loading Enriched Signatures Table
df <- read.delim("TRUE_TET2_Mutated_EIF2AK3_Enrich_Sig_Table_0vs1 copy.tsv", header = TRUE)

#Creating object with all file names of .gmt files within this folder
meta_genesets <- meta_genesets("TEST_50_HALLMARK_PATHWAYS")

#Reading all of the .gmt files within this folder and assigning the reads to an object named
#open_genesets
open_genesets <- open_genesets(meta_genesets)

#Subsetting to Hallmark Pathways using the ID column of the enriched signatures table
df1 <- Subset_To_Hallmarkpaths(df)

#Attaching Pathway names to rows of the enriched signatures table using the Core Enrichment column
#as labeling criteria
df1 <- Paths_To_Match(df, open_genesets)





















