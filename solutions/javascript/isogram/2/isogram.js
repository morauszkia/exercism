export const isIsogram = (word) => {
  const dehyphenated = word.toLowerCase().replaceAll(/[^a-z]/g, "");

  return dehyphenated.length === new Set(dehyphenated).size;
};
