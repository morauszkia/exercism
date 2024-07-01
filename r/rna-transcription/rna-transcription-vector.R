to_rna <- function(dna) {
  nucleotides <- dna  |>
    strsplit("")  |> 
    unlist()  
  
  ifelse(test = all(nucleotides %in% names(dna_rna)),
         yes = paste(dna_rna[nucleotides], collapse=""),
         no = stop("Invalid nucleotide"))
}

dna_rna <- c("G" = "C", "C" = "G", "T" = "A", "A" = "U")
