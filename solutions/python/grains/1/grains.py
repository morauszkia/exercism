def square(number):
    if not 1 <= number <= 64:
        raise ValueError("square must be between 1 and 64")
    
    return 2 ** (number - 1)


def total():
    sum = 0
    for i in range(1, 65):
        sum += square(i)
    return sum
