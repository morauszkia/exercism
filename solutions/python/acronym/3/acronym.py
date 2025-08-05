import re

def abbreviate(words):
    return "".join(re.findall(r"\b[a-zA-Z]", re.sub(r"['_]", "", words))).upper()
