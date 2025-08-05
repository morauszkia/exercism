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
    this.score = score;
  }

  list() {
    return this.ALLERGENS.filter((_, index) => this.score & (1 << index));
  }

  allergicTo(allergen) {
    return this.list().includes(allergen);
  }
}