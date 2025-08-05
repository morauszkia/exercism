const LETTER_SCORES: Record<string, number> = {};

const addLetterScores = (letterString: string, score: number): void => {
  letterString.split('').forEach((letter) => (LETTER_SCORES[letter] = score));
};

addLetterScores('AEIOULNRST', 1);
addLetterScores('DG', 2);
addLetterScores('BCMP', 3);
addLetterScores('FHVWY', 4);
addLetterScores('K', 5);
addLetterScores('JX', 8);
addLetterScores('QZ', 10);

export function score(word: string | undefined): number {
  if (!word) return 0;
  return [...word.toUpperCase()].reduce(
    (total: number, letter: string) => total + LETTER_SCORES[letter],
    0
  );
}
