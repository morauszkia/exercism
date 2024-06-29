import re


e = re.compile(r"^(?P<start>[[aeiou]|xr|yt].*)")


print(e.match("apple").groups())
