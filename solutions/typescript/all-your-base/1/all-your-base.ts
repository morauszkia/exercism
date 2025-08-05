export function convert(
  digits: number[],
  inputBase: number,
  outputBase: number
): number[] {
  checkBase(inputBase, outputBase);
  checkDigits(digits, inputBase);

  let num = digits.reduce(
    (s, d, i) => s + d * inputBase ** (digits.length - i - 1),
    0
  );

  let result: number[] = [];
  do {
    result = [num % outputBase, ...result];
    num = Math.floor(num / outputBase);
  } while (num > 0);

  return result;
}

const checkBase = (inputBase: number, outputBase: number): void => {
  if (inputBase < 2 || !Number.isInteger(inputBase))
    throw new Error("Wrong input base");
  if (outputBase < 2 || !Number.isInteger(outputBase))
    throw new Error("Wrong output base");
};
const checkDigits = (digits: number[], inputBase: number): void => {
  if (
    digits.length == 0 ||
    (digits.length > 1 && digits[0] === 0) ||
    digits.some((d) => d < 0) ||
    digits.some((d) => d >= inputBase)
  )
    throw new Error("Input has wrong format");
};
