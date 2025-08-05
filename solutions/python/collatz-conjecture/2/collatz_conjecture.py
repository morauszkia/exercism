def steps(number):
    if number < 1:
        raise ValueError("Only positive integers are allowed")
    else:
        step = 0
        while number > 1:
            number = number / 2 if number % 2 == 0 else 3 * number + 1
            step += 1

        return step
