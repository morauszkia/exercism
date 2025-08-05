def to_rna(dna_strand):
    return "".join([dna_to_rna[d] for d in dna_strand])


dna_to_rna = {
    "C": "G",
    "G": "C",
    "T": "A",
    "A": "U"
}
