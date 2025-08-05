export function isPangram(sentence: string): boolean {
  return [...'abcdefghijklmnopqrstuvwxyz'].every(letter => sentence.toLowerCase().includes(letter))
}
