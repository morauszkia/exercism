import re

def response(hey_bob):
    if hey_bob.strip() == "":
        return "Fine. Be that way!"
    if hey_bob.upper() == hey_bob and re.search(r"[A-Z]", hey_bob):
        if hey_bob.strip().endswith("?"):
            return "Calm down, I know what I'm doing!"
        return "Whoa, chill out!"
    if hey_bob.strip().endswith("?"):
        return "Sure."
    return "Whatever."
