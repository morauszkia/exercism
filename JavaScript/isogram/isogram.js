export const isIsogram = (word) => {
  // Uses capture group to check if any [a-z] character
  // is repeated after 0 or more characters.
  return !word.match(/([a-z]).*\1/i);
};
