interface IDnDCharacter {
  strength: number;
  dexterity: number;
  constitution: number;
  intelligence: number;
  wisdom: number;
  charisma: number;
  hitpoints: number;
}

export class DnDCharacter implements IDnDCharacter {
  public static generateAbilityScore(): number {
    const diceRolls = [...Array(4)].map(_ => Math.ceil(Math.random() * 6))
    const smallestIndex = diceRolls.indexOf(Math.min(...diceRolls));
    diceRolls.splice(smallestIndex, 1);
    return diceRolls.reduce((score, num) => score + num, 0)
  }

  public static getModifierFor(abilityValue: number): number {
    return Math.floor((abilityValue - 10) / 2)
  }

  strength = DnDCharacter.generateAbilityScore();
  dexterity = DnDCharacter.generateAbilityScore();
  constitution = DnDCharacter.generateAbilityScore();
  intelligence = DnDCharacter.generateAbilityScore();
  wisdom = DnDCharacter.generateAbilityScore();
  charisma = DnDCharacter.generateAbilityScore();
  hitpoints = 10 + DnDCharacter.getModifierFor(this.constitution) 
}


