class Allergies:
    ALLERGENS = [
        "eggs",
        "peanuts",
        "shellfish",
        "strawberries",
        "tomatoes",
        "chocolate",
        "pollen",
        "cats"
    ]

    def __init__(self, score):
        self.allergies = [self.ALLERGENS[i] for i in range(len(self.ALLERGENS)) if score & (1 << i)]

    def allergic_to(self, item):
        return item in self.lst

    @property
    def lst(self):
        return self.allergies
