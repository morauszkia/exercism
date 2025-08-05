def is_triangle(sides):
    a, b, c = sides
    return (a + b > c) and (a + c > b) and (b + c > a) and (not 0 in sides)

def equilateral(sides):
    a, b, c = sides
    return a == b and b == c and is_triangle(sides)

def isosceles(sides):
    a, b, c = sides
    return is_triangle(sides) and (a == b or a == c or b == c)


def scalene(sides):
    a, b, c = sides
    return is_triangle(sides) and a != b and a != c and b != c
