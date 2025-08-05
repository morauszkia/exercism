export function isIsogram(word: String): boolean {
  return !word.match(/([a-z]).*\1/i);
}
