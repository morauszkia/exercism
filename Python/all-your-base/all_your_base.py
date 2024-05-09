def rebase(input_base, digits, output_base):
    if input_base < 2:
        raise ValueError("input base must be >= 2")

    if output_base < 2:
        raise ValueError("output base must be >= 2")

    if any([d < 0 or d >= input_base for d in digits]):
        raise ValueError("all digits must satisfy 0 <= d < input base")

    base_ten = sum([d * (input_base ** i) for i, d in enumerate(digits[::-1])])

    print(base_ten)

    out_digits = []
    while base_ten > 0:
        out_digits = [base_ten % output_base] + out_digits
        base_ten //= output_base

    return out_digits or [0]
