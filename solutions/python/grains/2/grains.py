def square(number):
    if not 1 <= number <= 64:
        raise ValueError("square must be between 1 and 64")
    
    return 1 << number - 1  # 1 * 2^(number-1)


def total():
    return (1 << 64) - 1 # 0001 + 0010 + 0100 = 0111 = 1000 - 0001
