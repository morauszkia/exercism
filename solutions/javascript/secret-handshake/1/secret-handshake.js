export const commands = number => {
  const possibleActions = [
    'wink',
    'double blink',
    'close your eyes',
    'jump'
  ]
  
  const binaryArr = number.toString(2).split('').reverse();
  const actions = [];
  for (let i = 0; i < 4; i++) {
    if (binaryArr[i] === '1') actions.push(possibleActions[i])
  }
  
  return binaryArr[4] === '1' ? actions.reverse() : actions;
};
