# Relying on vectorized operations in R

translate <- function(bases) {
  if (bases == "") { return(NULL) }
  
  protein_codons <- c("AUG", "UUU", "UUC", "UUA", "UUG", "UCU", "UCC", "UCA", "UCG", 
                      "UAU", "UAC", "UGU", "UGC", "UGG")
  protein_names <- c("Methionine", rep("Phenylalanine", 2), rep("Leucine", 2), 
                     rep("Serine", 4), rep("Tyrosine", 2), rep("Cysteine", 2), 
                     "Tryptophan")
  
  stops <- c("UAA", "UAG", "UGA")
  
  codons <- substring(bases, seq(1, nchar(bases), 3), seq(3, nchar(bases), 3))
  
  if (any(stops %in% codons)) {
    stop = which.max(codons %in% c("UAA", "UAG", "UGA"))
    if (stop == 1) { return(c()) }
    codons <- codons[seq(1, stop - 1)]
  }
  
  if (any(!codons %in% protein_codons)) { stop("Invalid codon") }
  
  protein_names[match(codons, protein_codons)]
}
