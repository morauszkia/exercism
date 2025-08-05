export const convert = (digits, inputBase, outputBase) => {
  if (inputBase < 2) throw new Error("Wrong input base");
  if (outputBase < 2) throw new Error("Wrong output base");
  if (
    digits.length == 0 ||
    (digits.length > 1 && digits[0] === 0) ||
    digits.some((d) => d < 0) ||
    digits.some((d) => d >= inputBase)
  )
    throw new Error("Input has wrong format");

  let num = digits
    .map((digit, i) => digit * inputBase ** (digits.length - i - 1))
    .reduce((sum, next) => sum + next, 0);

  if (num == 0) return digits;

  let result = [];
  while (num > 0) {
    result = [num % outputBase, ...result];
    num = Math.floor(num / outputBase);
  }

  return result;
};
