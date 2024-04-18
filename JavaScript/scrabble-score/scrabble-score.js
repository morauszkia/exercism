const LETTER_SCORES = {};

const addLetterScores = (letterString, score) => {
  letterString.split('').forEach((letter) => (LETTER_SCORES[letter] = score));
};

addLetterScores('AEIOULNRST', 1);
addLetterScores('DG', 2);
addLetterScores('BCMP', 3);
addLetterScores('FHVWY', 4);
addLetterScores('K', 5);
addLetterScores('JX', 8);
addLetterScores('QZ', 10);

export const score = (word) => {
  return [...word.toUpperCase()].reduce(
    (total, letter) => total + LETTER_SCORES[letter],
    0
  );
};
