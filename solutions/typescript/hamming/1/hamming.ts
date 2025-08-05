export function compute(left: string, right: string): number | void {
  if (left.length !== right.length)
    throw new Error('DNA strands must be of equal length.');

  return [...left].reduce(
    (distance, nucleotide, i) => distance + (nucleotide === right[i] ? 0 : 1),
    0
  );
}
