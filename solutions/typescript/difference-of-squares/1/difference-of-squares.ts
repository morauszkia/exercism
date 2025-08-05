export class Squares {
  number: number;
  
  constructor(count: number) {
    this.number = count;
  }

  get sumOfSquares(): number {
    return this.number * (this.number + 1) * (2 * this.number + 1) / 6;  
  }

  get squareOfSum(): number {
    return (this.number * (this.number + 1) / 2) ** 2;
  }

  get difference(): number {
    return this.squareOfSum - this.sumOfSquares;
  }
}
