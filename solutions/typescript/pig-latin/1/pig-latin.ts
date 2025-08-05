export function translate(sentence: string): string {
  return sentence.split(" ").map(translateWord).join(" ");
}

function translateWord(word: string): string | undefined {
  if (/^([aeiou]|xr|yt)/.test(word)) return word + "ay";

  // Handle 'qu'
  let parts = word.match(/^(.*qu)(.*)/);
  if (parts) return parts[2] + parts[1] + "ay";

  // Handle 'y'
  parts = word.match(/^([^aeiou]+)(y.*)/);
  if (parts) return parts[2] + parts[1] + "ay";

  // Handle words starting witch consonants and contiuning with vowel
  parts = word.match(/^([^aeiou]+)(.*)/);
  if (parts) return parts[2] + parts[1] + "ay";
}
