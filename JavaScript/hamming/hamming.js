export const compute = (strandA, strandB) => {
  if (strandA.length !== strandB.length)
    throw new Error('strands must be of equal length');

  let difference = 0;
  for (let i = 0; i < strandA.length; i++) {
    if (strandA.slice(i, i + 1) !== strandB.slice(i, i + 1)) difference++;
  }
  return difference;
};
