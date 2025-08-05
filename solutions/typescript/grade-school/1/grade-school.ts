interface Roster {
  [grade: number]: string[]
}

export class GradeSchool {
  private _roster: Roster = {};
  
  roster(): Roster  {
    return JSON.parse(JSON.stringify(this._roster));
  }

  add(name: string, grade: number): void {
    for (const g in this._roster) {
      if (this._roster[g].includes(name)) {
        this._roster[g] = this._roster[g].filter(n => n !== name)
      }
    }
    
    if (this._roster.hasOwnProperty(grade)) {
      this._roster[grade].push(name)
      this._roster[grade] = this._roster[grade].sort();
    } else {
      this._roster[grade] = [name]
    }
  }

  grade(grade: number): string[] {
    if (this._roster.hasOwnProperty(grade)) {
      return this.roster()[grade]
    } else {
      return []
    }
  }
}
