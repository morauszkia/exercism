export const commands = number => {
  const possibleActions = [
    'wink',
    'double blink',
    'close your eyes',
    'jump'
  ]
  
  const actions = possibleActions.filter((_, idx) => number & 2 ** idx)
  
  return number & 16 ? actions.reverse() : actions;
};
