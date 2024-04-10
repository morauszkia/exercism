export function primes(limit: number): number[] {
  if (limit < 2) return [];

  let potentialPrimes = Array.from({ length: limit - 1 }, (_, i) => i + 2);

  for (let i = 2; i <= Math.sqrt(limit); i++) {
    potentialPrimes = potentialPrimes.filter(
      (num) => num === i || num % i !== 0
    );
  }

  return potentialPrimes;
}
