//
// This is only a SKELETON file for the 'List Ops' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class List {
  constructor(values = []) {
    this.values = values;
  }

  append(list2) {
    console.log(list2.values);
    this.values = [...this.values, ...list2.values];
    return this;
  }

  concat(list) {
    const [firstList, ...otherLists] = list.values;
    if (!firstList) return this;
    
    if (otherLists.length === 0) this.append(firstList)
    else this.append(firstList).concat(new List(otherLists));
    
    return this;
  }

  filter(fn, values = this.values) {
    let result = [];
    for (let i = 0; i < values.length; i++) {
      if (fn(values[i])) result.push(values[i])
    }
    this.values = result;
    return this;
  }

  map(fn, values = this.values) {
    let result = [];
    for (let i = 0; i < values.length; i++) {
      result.push(fn(values[i]))
    }
    this.values = result;
    return this;
  }

  length(values = this.values) {
    const [head, ...tail] = values;
    if (!head) return 0;
    return 1 + this.length(tail)
  }

  foldl(fun, start) {
    if (this.values.length === 0) return start;
    const [first, ...rest] = this.values;
    const list = new List([...rest])
    return list.foldl(fun, fun(start, first))
  }

  foldr(fun, start) {
    return this.reverse().foldl(fun, start);
  }

  reverse(values = this.values) {
    let result = []
    for (let i = values.length - 1; i >= 0; i--) {
      result.push(values[i]);
    }
    this.values = result;
    return this;
  }
}
