export const isIsogram = (word) => {
  return !word.match(/([a-z]).*\1/i);
};
