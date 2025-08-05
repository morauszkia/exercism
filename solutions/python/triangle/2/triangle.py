def equilateral(sides):
    a, b, c = sorted(sides)
    return 0 < a == c

def isosceles(sides):
    a, b, c = sorted(sides)
    return 0 < a and a + b > c and b in (a, c)


def scalene(sides):
    a, b, c = sorted(sides)
    return 0 < a < b < c < a + b
