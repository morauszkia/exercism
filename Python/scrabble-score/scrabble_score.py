def score(word):
    LETTERS = list("AEIOULNRSTDGBCMPFHVWYKJXQZ")
    VALUES = [int(digit) + 1 for digit in "00000000001122223333347799"]
    LETTER_SCORES = {k: v for k, v in zip(LETTERS, VALUES)}

    return sum([LETTER_SCORES[char] for char in word.upper()])
