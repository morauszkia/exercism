from math import sqrt, ceil


def primes(limit):
    potential = [i for i in range(2, limit + 1)]

    for i in range(2, ceil(sqrt(limit))):
        potential = list(filter(lambda x: x == i or x % i != 0, potential))

    print(potential)


primes(10)
