/**
 * You can use the bigint type and BigInt global object to support numbers below
 * Number.MIN_SAFE_INTEGER and above NUMBER.MAX_SAFE_INTEGER.
 *
 * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/BigInt
 */

export const square = (n) => {
  if (n < 1 || n > 64) throw new Error("square must be between 1 and 64");

  return BigInt(2 ** (n - 1));
};

export const total = () => {
  return BigInt(2 ** 64) - BigInt(1);
};
