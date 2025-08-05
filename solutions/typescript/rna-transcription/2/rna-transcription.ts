export function toRna(dna: string): string {
  return [...dna].reduce((rna, nuc) => {
    if (!(nuc in dnaToRnaDict)) throw new Error('Invalid input DNA.');
    return rna + dnaToRnaDict[nuc]
  }, '');
}

const dnaToRnaDict: {
  [index: string]: string
} = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U'
}
