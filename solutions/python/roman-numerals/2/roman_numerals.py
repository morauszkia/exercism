def roman(number):
    DICT = {
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
    for divisor in DICT:
        if number >= divisor:
            times = number // divisor
            if times == 9:
                result += DICT[divisor]["one"] + DICT[divisor]["ten"]
            elif times >= 5:
                result += DICT[divisor]["five"] + DICT[divisor]["one"] * (times - 5)
            elif times == 4:
                result += DICT[divisor]["one"] + DICT[divisor]["five"]
            else:
                result += DICT[divisor]["one"] * times
            number -= times * divisor

    return result
