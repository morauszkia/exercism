def to_rna(dna_strand):
    return dna_strand.translate(dna_to_rna)


dna_to_rna = str.maketrans({
    "C": "G",
    "G": "C",
    "T": "A",
    "A": "U"
})
