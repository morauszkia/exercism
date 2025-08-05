LETTERS = "abcdefghijklmnopqrstuvwxyz"

def is_pangram(sentence):
    for letter in LETTERS:
        if not letter in sentence.lower():
            return False
    return True
