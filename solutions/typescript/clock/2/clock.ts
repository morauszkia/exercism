const MINUTES_IN_DAY = 24 * 60;

export class Clock {
  private _minutes: number;

  private _formatNumber(number: number): string {
    return number.toString().padStart(2, "0")
  }

  private _normalize(number: number) {
    return (number % MINUTES_IN_DAY + MINUTES_IN_DAY) % MINUTES_IN_DAY;
  }

  constructor(hour: number, minute?: number) {
    this._minutes = this._normalize(hour * 60 + (minute || 0));
  }

  public toString(): string {
    const hours = Math.trunc(this._minutes / 60);
    const minutes = this._minutes % 60;
    
    return `${this._formatNumber(hours)}:${this._formatNumber(minutes)}`
  }

  public plus(minutes: number): Clock {
    return new Clock(0, this._minutes + minutes);
  }

  public minus(minutes: number): Clock {
    return new Clock(0, this._minutes - minutes)  
  }

  public equals(other: Clock): boolean {
    return this.toString() === other.toString()
  }
}
