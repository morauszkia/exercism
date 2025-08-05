from math import sqrt, inf

SCORES = {
    1: 10,
    5: 5,
    10: 1,
    inf: 0
}
def score(x, y):
    distance = sqrt(x**2 + y**2)
    for radius, points in SCORES.items():
        if distance <= radius:
            return points
