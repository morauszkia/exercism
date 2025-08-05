export const steps = (number) => {
  if (number <= 0) throw new Error('Only positive numbers are allowed');

  if (number == 1) return 0;

  return 1 + steps(number % 2 ? 3 * number + 1 : number / 2)
};
