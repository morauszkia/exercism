export class Clock {
  private _hour: number;
  private _minute: number;
  
  constructor(hour: number, minute?: number) {
    this._hour = hour;
    this._minute = minute || 0;
  }

  public toString(): string {
    const roll_over_hours = Math.floor(this._minute / 60)
    let hour_final = (this._hour + roll_over_hours) % 24
    if (hour_final < 0) hour_final += 24;

    let minute_final = this._minute % 60;
    if (minute_final < 0) minute_final += 60;
    
    const formattedHour = hour_final.toString().padStart(2, "0")
    const formattedMinutes = minute_final.toString().padStart(2, "0")
    return `${formattedHour}:${formattedMinutes}`
  }

  public plus(minutes: number): Clock {
    this._minute += minutes;
    return this;
  }

  public minus(minutes: number): Clock {
    this._minute -= minutes;
    return this;  
  }

  public equals(other: Clock): boolean {
    return this.toString() === other.toString()
  }
}
