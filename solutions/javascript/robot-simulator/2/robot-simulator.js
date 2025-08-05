export class InvalidInputError extends Error {
  constructor(message) {
    super();
    this.message = message || "Invalid Input";
  }
}

const DIRECTIONS = ["north", "east", "south", "west"];

export class Robot {
  #bearing = "north";
  #x = 0;
  #y = 0;

  get bearing() {
    return this.#bearing;
  }

  get coordinates() {
    return [this.#x, this.#y];
  }

  place({ x, y, direction }) {
    if (!DIRECTIONS.includes(direction)) {
      throw new InvalidInputError();
    }
    this.#x = x;
    this.#y = y;
    this.#bearing = direction;
  }

  turn(direction) {
    const oldBearing = DIRECTIONS.indexOf(this.bearing);
    this.#bearing = DIRECTIONS[(oldBearing + (direction === "R" ? 1 : -1) + 4) % 4];
  }

  advance() {
    const change = this.bearing === "north" || this.bearing === "east" ? 1 : -1;
    if (this.bearing === "north" || this.bearing === "south") {
      this.#y += change;
    } else {
      this.#x += change;
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
