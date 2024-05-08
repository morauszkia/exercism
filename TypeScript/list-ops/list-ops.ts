export class List<T> {
  private constructor(readonly values: T[]) {}
  public static create<T>(...values: T[]): List<T> {
    return new List(values);
  }
  public forEach<X>(callback: (el: T) => X) {
    for (let element of this.values) {
      callback(element);
    }
  }
  public append(list: List<T>): List<T> {
    return List.create(...this.values, ...list.values);
  }
  public concat(list: List<List<T>>): List<T> {
    const [next, ...rest] = list.values;
    if (!next) return this;
    return this.append(next).concat(List.create(...rest));
  }
  public foldl<U, T>(fn: (acc: U, next: T) => U, accumulator: U): U {
    const [head, ...tail] = this.values;
    if (!head) return accumulator;
    else return List.create(...tail).foldl(fn, fn(accumulator, head as T));
  }
  public filter<T>(fn: (el: T) => boolean): List<T> {
    const filtered = this.foldl<T[], T>(
      (acc, next) => (fn(next) ? [...acc, next] : acc),
      []
    );
    return List.create(...filtered);
  }
  public length(): number {
    return this.foldl((acc, _) => acc + 1, 0);
  }
  public map<M extends T>(fn: (el: T) => M) {
    const mapped = this.foldl<M[], M>((acc, next) => [...acc, fn(next)], []);
    return List.create(...mapped);
  }
  public reverse() {
    return List.create(
      ...this.foldl((acc: T[], next: T) => [next, ...acc], [])
    );
  }
  public foldr<U, T>(fn: (acc: U, next: T) => U, accumulator: U): U {
    return this.reverse().foldl(fn, accumulator);
  }
}
