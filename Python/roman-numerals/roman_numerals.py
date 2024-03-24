def roman(number):
    divisors = {
        1000: {
            "one": "M",
            "five": "",
            "ten": "",
        },
        100: {
            "one": "C",
            "five": "D",
            "ten": "M",
        },
        10: {
            "one": "X",
            "five": "L",
            "ten": "C",
        },
        1: {
            "one": "I",
            "five": "V",
            "ten": "X"
        },
    }

    result = ""
    for divisor in divisors:
        if number >= divisor:
            times = number // divisor
            if times == 9:
                result += divisors[divisor]["one"] + divisors[divisor]["ten"]
            elif times >= 5:
                result += divisors[divisor]["five"] + divisors[divisor]["one"] * (times - 5)
            elif times == 4:
                result += divisors[divisor]["one"] + divisors[divisor]["five"]
            else:
                result += divisors[divisor]["one"] * times
            number -= times * divisor

    return result
