//
// This is only a SKELETON file for the 'Allergies' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Allergies {
  ALLERGENS = [
    'eggs',
    'peanuts',
    'shellfish',
    'strawberries',
    'tomatoes',
    'chocolate',
    'pollen',
    'cats',
  ];

  constructor(score) {
    this.allergies = this.ALLERGENS.filter((_, index) => score & (1 << index));
  }

  list() {
    return this.allergies;
  }

  allergicTo(allergen) {
    return this.allergies.includes(allergen);
  }
}
