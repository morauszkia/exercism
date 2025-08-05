export function primes(limit: number): number[] {
   if (limit < 2) return [];

  const isPrime = new Array(limit + 1).fill(true);
  isPrime.splice(0, 2, false, false);

  for (let i = 2; i <= Math.sqrt(limit); i++) {
    if (isPrime[i]) {
      for (let j = i ** 2; j <= limit; j += i) {
        isPrime[j] = false;
      }
    }
  }

  return isPrime.reduce(
    (primesList, current, idx) => (current ? [...primesList, idx] : primesList),
    []
  );
};
