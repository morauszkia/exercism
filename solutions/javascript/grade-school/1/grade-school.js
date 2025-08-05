export class GradeSchool {
  constructor() {
    this._names = {};
  }

  roster() {
    const roster = {};
    for (const [name, grade] of Object.entries(this._names)) {
      roster[grade] = roster[grade] ? [...roster[grade], name] : [name];
    }

    for (const grade in roster) {
      roster[grade].sort();
    }

    return roster;
  }

  add(name, grade) {
    this._names[name] = grade;
  }

  grade(grade) {
    return this.roster()[grade] || [];
  }
}
