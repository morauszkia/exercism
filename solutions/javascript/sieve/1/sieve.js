export const primes = (limit) => {
  if (limit < 2) return [];

  const isPrime = new Array(limit + 1).fill(true);
  isPrime.splice(0, 2, false, false);
  let primesList = [];

  for (let i = 2; i <= limit; i++) {
    if (isPrime[i]) {
      primesList.push(i);
      for (let j = i ** 2; j <= limit; j += i) {
        isPrime[j] = false;
      }
    }
  }

  console.log(isPrime);
  return primesList;
};
