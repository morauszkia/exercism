const DEFAULT_STUDENTS = [
  "Alice",
  "Bob",
  "Charlie",
  "David",
  "Eve",
  "Fred",
  "Ginny",
  "Harriet",
  "Ileana",
  "Joseph",
  "Kincaid",
  "Larry",
];

const PLANT_CODES = {
  G: "grass",
  V: "violets",
  R: "radishes",
  C: "clover",
};

export class Garden {
  constructor(diagram, students = DEFAULT_STUDENTS) {
    this.students = students.sort();
    this.rows = diagram.split("\n");
  }

  plants(student) {
    const plantIndex = 2 * this.students.indexOf(student);
    const plants = this.rows
      .flatMap((row) => row.slice(plantIndex, plantIndex + 2).split(""))
      .map((code) => PLANT_CODES[code]);

    return plants;
  }
}
