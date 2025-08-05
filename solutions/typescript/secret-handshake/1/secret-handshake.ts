export function commands(n: number): string[] {
  const binary = n.toString(2);
  const binaryArr = binary.split('').reverse();

  const actions = [];

  if (binaryArr[0] === '1') actions.push('wink');
  if (binaryArr[1] === '1') actions.push('double blink');
  if (binaryArr[2] === '1') actions.push('close your eyes');
  if (binaryArr[3] === '1') actions.push('jump')
  if (binaryArr[4] === '1') actions.reverse();
  
  return actions;
}
