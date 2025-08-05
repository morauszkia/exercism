const LETTERS = "abcdefghijklmnopqrstuvwxyz"

export const isPangram = (sentence) => [...LETTERS].every(l => sentence.toLowerCase().includes(l));
