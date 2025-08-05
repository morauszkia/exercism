export class Robot {
  _name: string;
  public static robotNames: string[] = [];
  
  constructor() {
    this._name = '';
    this.resetName();
  }

  public get name(): string {
    return this._name;
  }

  public resetName(): void {
    do {
      this._name = String.fromCharCode(
      Math.floor(Math.random() * (90 - 65 + 1) + 65),
      Math.floor(Math.random() * (90 - 65 + 1) + 65),
      Math.floor(Math.random() * (57 - 48 + 1) + 48),
      Math.floor(Math.random() * (57 - 48 + 1) + 48),
      Math.floor(Math.random() * (57 - 48 + 1) + 48),
      )   
    } while (Robot.robotNames.includes(this._name))
    Robot.robotNames.push(this.name)
  }

  public static releaseNames(): void {
    Robot.robotNames = [];
  }
}
