export const square = (n: number): BigInt => {
  if (n < 1 || n > 64) throw new Error('Argument must be between 1 and 64.')

  return BigInt(2 ** (n - 1))
}

export const total = () => {
  return BigInt(2 ** 64) - BigInt(1)
}
