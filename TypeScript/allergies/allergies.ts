const ALLERGENS = [
  'eggs',
  'peanuts',
  'shellfish',
  'strawberries',
  'tomatoes',
  'chocolate',
  'pollen',
  'cats',
] as const;

type Allergen = (typeof ALLERGENS)[number];

export class Allergies {
  allergies: Allergen[];

  constructor(allergenIndex: number) {
    this.allergies = ALLERGENS.filter(
      (_, index) => allergenIndex & (1 << index)
    );
  }

  public list(): Allergen[] {
    return this.allergies;
  }

  public allergicTo(allergen: Allergen): boolean {
    return this.allergies.includes(allergen);
  }
}
