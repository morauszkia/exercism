export function hey(message: string): string {
  const isYelling = /[A-Z]/.test(message) && [...message].every(character => character === character.toUpperCase());
  const isQuestion = message.trim().endsWith('?');
  const isSilence = message.trim() === '';

  if (isSilence) {
    return 'Fine. Be that way!'
  } else if (isQuestion) {
    if (isYelling) {
      return 'Calm down, I know what I\'m doing!'
    } else {
      return 'Sure.'
    }
  } else if (isYelling) {
    return 'Whoa, chill out!'
  } else {
    return 'Whatever.'
  }
}
