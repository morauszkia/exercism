export const toRoman = (arabic: number): string => {
  const DIVISORS: number[] = [1000, 100, 10, 1];

  const DICTIONARY: {
    [d: number]: { base: string; five: string; next: string };
  } = {
    1000: {
      base: 'M',
      five: '',
      next: '',
    },
    100: {
      base: 'C',
      five: 'D',
      next: 'M',
    },
    10: {
      base: 'X',
      five: 'L',
      next: 'C',
    },
    1: {
      base: 'I',
      five: 'V',
      next: 'X',
    },
  };

  let result: string = '';

  for (const divisor of DIVISORS) {
    if (arabic >= divisor) {
      const times = Math.floor(arabic / divisor);
      const { base, five, next } = DICTIONARY[divisor];
      if (times === 9) result += base + next;
      else if (times >= 5) result += five + base.repeat(times - 5);
      else if (times === 4) result += base + five;
      else result += base.repeat(times);
      arabic %= divisor * times;
    }
  }

  return result;
};
