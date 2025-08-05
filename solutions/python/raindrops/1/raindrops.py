def convert(number):
    DROPS = [
        (3, "Pling"),
        (5, "Plang"),
        (7, "Plong")
    ]

    return "".join([sound for num, sound in DROPS if not number % num]) or str(number)