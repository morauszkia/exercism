export const translate = (phrase) =>
  phrase
    .split(" ")
    .map((word) => translateWord(word))
    .join(" ");

const translateWord = (original) => {
  // Starts with vowel or 'xr' or 'yt'
  let match = original.match(/^([aeiou]|xr|yt)/);
  if (match) return original + "ay";

  // Handle 'qu'
  match = original.match(/^(.*qu)(.*)/);
  if (match) return match[2] + match[1] + "ay";

  // Handle 'y'
  match = original.match(/^([^aeiou]+)(y.*)/);
  if (match) return match[2] + match[1] + "ay";

  // Handle rest
  match = original.match(/(^[^aeiou]+)(.*)/);
  if (match) return match[2] + match[1] + "ay";
};
