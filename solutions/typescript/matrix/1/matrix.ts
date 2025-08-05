export class Matrix {
  private _rows: number[][]
  private _cols: number[][]
  
  constructor(matrixStr: string) {
    this._rows = matrixStr.split('\n').map(row => row.split(' ').map(numStr => +numStr));
    this._cols = this._rows[0].map((_, i) => this._rows.map(row => row[i]))
  }

  get rows() {
    return this._rows
  }

  get columns() {
    return this._cols
  }
}
