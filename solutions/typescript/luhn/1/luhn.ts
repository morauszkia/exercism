export function valid(digitString: String): boolean {
  const string = digitString.replaceAll(/\s/g, '');
  if (/[^\d]/.test(string) || string.length < 2) return false;

  return (
    string
      .split('')
      .reverse()
      .map((el: String, i: number): number => (i % 2 ? processDigit(+el) : +el))
      .reduce((sum: number, digit: number): number => sum + digit, 0) %
      10 ===
    0
  );
}

function processDigit(digit: number): number {
  return digit < 5 ? 2 * digit : 2 * digit - 9;
}
