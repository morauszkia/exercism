COLORS = {
    "black": 0,
    "brown": 1,
    "red": 2,
    "orange": 3,
    "yellow": 4,
    "green": 5,
    "blue": 6,
    "violet": 7,
    "grey": 8,
    "white": 9
}

PREFIXES = {
    10**9: "giga",
    10**6: "mega",
    10**3: "kilo"
}

def label(colors):
    num = (10 * COLORS[colors[0]] + COLORS[colors[1]]) * 10 ** COLORS[colors[2]]
    prefix = ""
    
    for magnitude in PREFIXES:
        if num > magnitude and num % magnitude == 0:
            num //= magnitude
            prefix = PREFIXES[magnitude]
            break
    
    return f"{num} {prefix}ohms"
