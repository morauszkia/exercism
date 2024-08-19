export const abilityModifier = (abilityValue) => {
  if (abilityValue < 3) throw new Error("Ability scores must be at least 3");
  if (abilityValue > 18) throw new Error("Ability scores can be at most 18");
  return Math.floor((abilityValue - 10) / 2);
};

export class Character {
  static rollAbility() {
    const diceRolls = Array.from({ length: 4 }).map((_) =>
      Math.ceil(Math.random() * 6)
    );
    return diceRolls.reduce(
      (score, roll) => score + roll,
      -Math.min(...diceRolls)
    );
  }

  constructor() {
    this._strength = Character.rollAbility();
    this._dexterity = Character.rollAbility();
    this._constitution = Character.rollAbility();
    this._intelligence = Character.rollAbility();
    this._wisdom = Character.rollAbility();
    this._charisma = Character.rollAbility();
    this._hitpoints = 10 + abilityModifier(this._constitution);
  }

  get strength() {
    return this._strength;
  }

  get dexterity() {
    return this._dexterity;
  }

  get constitution() {
    return this._constitution;
  }

  get intelligence() {
    return this._intelligence;
  }

  get wisdom() {
    return this._wisdom;
  }

  get charisma() {
    return this._charisma;
  }

  get hitpoints() {
    return this._hitpoints;
  }
}
