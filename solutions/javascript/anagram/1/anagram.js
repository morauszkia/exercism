export const findAnagrams = (subject, potentialAnagrams) => {
  return potentialAnagrams.filter((candidate) => isAnagram(candidate, subject));
};

const isAnagram = (word1, word2) => {
  const lowerCaseWord1 = word1.toLowerCase()
  const lowercaseWord2 = word2.toLowerCase()
  return (
    lowerCaseWord1 !== lowercaseWord2 &&
    sortedLetters(lowerCaseWord1) === sortedLetters(lowercaseWord2)
  );
};

const sortedLetters = (word) => {
  return [...word].sort().join();
};
