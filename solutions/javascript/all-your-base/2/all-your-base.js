export const convert = (digits, inputBase, outputBase) => {
  checkBase(inputBase, outputBase);
  checkDigits(digits, inputBase);
  
  let num = digits
    .map((digit, i) => digit * inputBase ** (digits.length - i - 1))
    .reduce((sum, next) => sum + next, 0);

  let result = [];
  do {
    result = [num % outputBase, ...result];
    num = Math.floor(num / outputBase);
  } while (num > 0)

  return result;
};

const checkBase = (inputBase, outputBase) => {
  if (inputBase < 2) throw new Error("Wrong input base");
  if (outputBase < 2) throw new Error("Wrong output base");
}

const checkDigits = (digits, inputBase) => {
  if (
    digits.length == 0 ||
    (digits.length > 1 && digits[0] === 0) ||
    digits.some((d) => d < 0) ||
    digits.some((d) => d >= inputBase)
  )
    throw new Error("Input has wrong format");
}
