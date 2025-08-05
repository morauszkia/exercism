export class List {
  constructor(values = []) {
    this.values = values;
  }

  append(list) {
    return new List([...this.values, ...list.values]);
  }

  concat(list) {
    return list.foldl((concatenated, nextList) => concatenated.append(nextList), new List(this.values));
  }

  filter(fn, values = this.values) {
    return new List(this.foldl((filtered, nextItem) => fn(nextItem) ? 
      [...filtered, nextItem] : 
      [...filtered], []));
  }

  map(fn, values = this.values) {
    return new List(this.foldl((mapped, nextItem) => [...mapped, fn(nextItem)], []));
  }

  length(values = this.values) {
    const [head, ...tail] = values;
    if (!head) return 0;
    return 1 + this.length(tail)
  }

  foldl(fun, start) {
    if (this.length() === 0) return start;
    const [first, ...rest] = this.values;
    const list = new List([...rest])
    return list.foldl(fun, fun(start, first))
  }

  foldr(fun, start) {
    return this.reverse().foldl(fun, start);
  }

  reverse(values = this.values) {
    return new List(this.foldl((reversed, nextItem) => [nextItem, ...reversed], []))
  }
}
