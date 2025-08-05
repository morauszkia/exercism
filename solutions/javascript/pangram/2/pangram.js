export const isPangram = (sentence) => new Set(sentence.toLowerCase().match(/[a-z]/g)).size === 26;
