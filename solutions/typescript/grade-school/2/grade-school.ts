interface NameList {
  [name: string]: number
}

interface Roster {
  [grade: number]: string[]
}

export class GradeSchool {
  private _nameList: NameList = {};
  
  roster(): Roster  {
    const roster: Roster = {};
    for (const [name, grade] of Object.entries(this._nameList)) {
      roster[grade] = roster[grade] ? [...roster[grade], name] : [name]
    };

    for (const grade in roster) {
      roster[grade].sort();
    }
    return roster;
  }

  add(name: string, grade: number): void {
    this._nameList[name] = grade;
  }

  grade(grade: number): string[] {
    return this.roster()[grade] || [];
  }
}
