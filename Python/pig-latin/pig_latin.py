import re


def translate(text):
    return " ".join([translate_word(word) for word in text.split()])


def translate_word(word):
    starts_with_vowel = re.compile(r"^([aeiou]|xr|yt)")
    if starts_with_vowel.search(word):
        print(starts_with_vowel.match(word))
        return glue_parts(word)

    has_qu = re.compile(r"^(?P<start>.*qu)(?P<end>.*)")
    has_y_within = re.compile(r"^(?P<start>[^aeiou]+)(?P<end>y.*)")
    starts_with_consonants = re.compile(r"^(?P<start>[^aeiou]+)(?P<end>.*)")

    for check in [has_qu, has_y_within, starts_with_consonants]:
        parts = check.match(word)
        if parts:
            return glue_parts(parts.group('end'), parts.group('start'))


def glue_parts(part1, part2=''):
    return part1 + part2 + 'ay'
