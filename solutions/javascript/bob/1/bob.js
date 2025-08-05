export const hey = (message) => {
  const isYelling = /[A-Z]/.test(message) && message === message.toUpperCase();
  const isQuestion = message.trim().endsWith('?');
  const isSilence = message.trim() === '';
  
  if (isSilence) return 'Fine. Be that way!';
  if (isQuestion && isYelling) return 'Calm down, I know what I\'m doing!';
  if (isQuestion) return 'Sure.';
  if (isYelling) return 'Whoa, chill out!';
  return 'Whatever.'
}