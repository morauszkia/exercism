export function translate(strand: string): string[] {
  const proteins: Record<string, string> = {
    AUG: "Methionine",
    UUU: "Phenylalanine",
    UUC: "Phenylalanine",
    UUA: "Leucine",
    UUG: "Leucine",
    UCU: "Serine",
    UCC: "Serine",
    UCA: "Serine",
    UCG: "Serine",
    UAU: "Tyrosine",
    UAC: "Tyrosine",
    UGU: "Cysteine",
    UGC: "Cysteine",
    UGG: "Tryptophan",
    UAA: "STOP",
    UAG: "STOP",
    UGA: "STOP",
  }

  if (!strand) return [];
  const protein = proteins[strand.slice(0, 3)]
  
  if (protein === "STOP") return [];
  if (!protein) throw new Error("Invalid codon")
  
  return [protein].concat(translate(strand.slice(3, strand.length)))
}
