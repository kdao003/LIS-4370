data("mtcars")
head (mtcars, 6)
list(mtcars, 6)

isS4(mtcars)

typeof(mtcars)

s3 <- list(gene = "TET2 Mutated", Chromosome = "4q24")
s3

setClass("Mutated Gene", slots = list(Gene = "character", Chromosome = "character"))

s4 <- new("Mutated Gene", Gene = "MALAT1", Chromosome = "11q13")
s4