pub fn append(first first: List(a), second second: List(a)) -> List(a) {
  foldr(first, second, fn(combined, next) { [next, ..combined] })
}

pub fn concat(lists: List(List(a))) -> List(a) {
  foldl(lists, [], fn(combined, next) { append(combined, next) })
}

pub fn filter(list: List(a), function: fn(a) -> Bool) -> List(a) {
  foldr(list, [], fn(filtered, next) { case function(next) {
    True -> [next, ..filtered]
    False -> filtered
  } })
}

pub fn length(list: List(a)) -> Int {
  foldl(list, 0, fn(length, _) { length + 1 })
}

pub fn map(list: List(a), function: fn(a) -> b) -> List(b) {
  foldr(list, [], fn(mapped, next) { [function(next), ..mapped] })
}

pub fn foldl(
  over list: List(a),
  from initial: b,
  with function: fn(b, a) -> b,
) -> b {
  case list {
    [] -> initial
    [head, ..tail] -> foldl(tail, function(initial, head), function)
  }
}

pub fn foldr(
  over list: List(a),
  from initial: b,
  with function: fn(b, a) -> b,
) -> b {
  foldl(reverse(list), initial, function)
}

pub fn reverse(list: List(a)) -> List(a) {
  foldl(list, [], fn(reverse, next) { [next, ..reverse] })
}
