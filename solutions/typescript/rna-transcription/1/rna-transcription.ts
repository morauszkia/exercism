export function toRna(dna: string): string {
  const dnaNucleotides = dna.split('');

  if (dnaNucleotides.some(nucleotide => !dnaToRnaDict.hasOwnProperty(nucleotide))) {
    throw new Error('Invalid input DNA.');
  }

  const rnaNucleotides = dnaNucleotides.map((nuc) => dnaToRnaDict[nuc]);

  return rnaNucleotides.join('');
}

const dnaToRnaDict: {
  [index: string]: string
} = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U'
}
