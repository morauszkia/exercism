export const commands = number => {
  const possibleActions = [
    'wink',
    'double blink',
    'close your eyes',
    'jump'
  ]
  
  const actions = [];
  
  for (let i = 0; i < 4; i++) {
    if (number & 2 ** i) actions.push(possibleActions[i])
  }
  
  return number & 16 ? actions.reverse() : actions;
};
