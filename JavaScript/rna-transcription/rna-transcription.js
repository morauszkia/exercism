export const toRna = (dna) => {
  return [...dna].reduce(
    (rna, nucleotide) => rna + dnaToRnaDict[nucleotide],
    ""
  );
};

const dnaToRnaDict = {
  G: "C",
  C: "G",
  T: "A",
  A: "U",
};
