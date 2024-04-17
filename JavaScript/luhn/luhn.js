export const valid = (number) => {
  let sum = 0;
  let odd = true;
  let digitCount = 0;
  for (let i = number.length - 1; i >= 0; i--) {
    const currentChar = number[i];
    if (currentChar === ' ') continue;
    if (+currentChar === NaN) return false;

    sum += odd
      ? +currentChar
      : +currentChar < 5
      ? +currentChar * 2
      : +currentChar * 2 - 9;

    odd = !odd;
    digitCount++;
  }

  if (digitCount < 2) return false;

  return sum % 10 === 0;
};
