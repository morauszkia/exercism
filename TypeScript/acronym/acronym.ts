export function parse(phrase: string): string {
  return phrase.replaceAll(/\B[a-z']+|[ _,-:]+|\B[A-Z]{2,}/g, '').toUpperCase();
}
