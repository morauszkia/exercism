export class InvalidInputError extends Error {
  constructor(message) {
    super();
    this.message = message || "Invalid Input";
  }
}

const directions = ["north", "east", "south", "west"];

export class Robot {
  constructor() {
    this._bearing = "north";
    this._coordinates = [0, 0];
  }

  get bearing() {
    return this._bearing;
  }

  get coordinates() {
    return this._coordinates;
  }

  place({ x, y, direction }) {
    this._coordinates = [x, y];

    if (!directions.includes(direction)) {
      throw new InvalidInputError();
    }

    this._bearing = direction;
  }

  turn(direction) {
    const [x, y] = this.coordinates;
    const oldBearing = directions.indexOf(this.bearing);
    const newBearing =
      directions[(oldBearing + (direction === "R" ? 1 : -1) + 4) % 4];

    this.place({ x: x, y: y, direction: newBearing });
  }

  advance() {
    const [x, y] = this.coordinates;
    const change = this.bearing === "north" || this.bearing === "east" ? 1 : -1;
    if (this.bearing === "north" || this.bearing === "south") {
      this.place({ x: x, y: y + change, direction: this.bearing });
    } else {
      this.place({ x: x + change, y: y, direction: this.bearing });
    }
  }

  evaluate(instructions) {
    [...instructions].forEach((instructionCode) => {
      if (instructionCode === "A") {
        this.advance();
      } else {
        this.turn(instructionCode);
      }
    });
  }
}
