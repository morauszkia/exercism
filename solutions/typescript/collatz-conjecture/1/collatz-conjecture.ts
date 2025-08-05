export function steps(count: number): number {
  if (count <= 0 || !Number.isInteger(count)) throw new Error('Only positive integers are allowed');

  let steps = 0;

  while (count > 1) {
    if (count % 2) count = 3 * count + 1;
    else count /= 2;
    steps++;
  }

  return steps;
}
