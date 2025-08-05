export const isIsogram = (word) => {
  const dehyphenated = word.toLowerCase().replaceAll(/[^a-z]/g, "");
  for (let i = 1; i < dehyphenated.length; i++) {
    if (dehyphenated.slice(0, i).includes(dehyphenated[i])) return false;
  }
  return true;
};
