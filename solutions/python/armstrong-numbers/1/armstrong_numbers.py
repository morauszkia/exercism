def is_armstrong_number(number):
    num_string = str(number)
    digits_raised_to_power = [int(char) ** len(num_string) for char in num_string]
    return sum(digits_raised_to_power) == number
    