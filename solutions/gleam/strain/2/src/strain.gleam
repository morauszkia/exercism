import gleam/list

pub fn keep(list: List(t), predicate: fn(t) -> Bool) -> List(t) {
  filter(list, predicate, [])
}

pub fn discard(list: List(t), predicate: fn(t) -> Bool) -> List(t) {
  keep(list, fn(x) { !predicate(x) })
}

fn filter(list: List(t), predicate: fn(t) -> Bool, outlist: List(t)) -> List(t) {
  case list {
    [] -> list.reverse(outlist)
    [head, ..tail] -> case predicate(head) {
      True -> filter(tail, predicate, [head, ..outlist])
      False -> filter(tail, predicate, outlist)
    }
  }
}
