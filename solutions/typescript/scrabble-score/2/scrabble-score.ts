const LETTER_SCORES: { [key: string]: number } = {};

const LETTER_GROUPS: [string, number][] = [
  ['AEIOULNRST', 1],
  ['DG', 2],
  ['BCMP', 3],
  ['FHVWY', 4],
  ['K', 5],
  ['JX', 8],
  ['QZ', 10],
];

LETTER_GROUPS.forEach(([group, score]: [string, number]): void =>
  [...group].forEach((letter: string) => (LETTER_SCORES[letter] = score))
);

export function score(word: string | undefined): number {
  if (!word) return 0;
  return [...word.toUpperCase()].reduce(
    (total: number, letter: string) => total + LETTER_SCORES[letter],
    0
  );
}
