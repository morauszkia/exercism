pub fn append(first first: List(a), second second: List(a)) -> List(a) {
  do_append(second, reverse(first))
}

fn do_append(second: List(a), combined: List(a)) -> List(a) {
  case second {
    [] -> reverse(combined)
    [head, ..rest] -> do_append(rest, [head, ..combined])
  }
}

pub fn concat(lists: List(List(a))) -> List(a) {
  case lists {
    [] -> []
    [first, ..rest] -> append(first, concat(rest))
  }
}

pub fn filter(list: List(a), function: fn(a) -> Bool) -> List(a) {
  case list {
    [] -> []
    _ -> {
      let assert [head, ..tail] = list
      case function(head) {
        True -> [head, ..filter(tail, function)]
        False -> filter(tail, function)
      }
    }
  }
}

pub fn length(list: List(a)) -> Int {
  case list {
    [] -> 0
    [_, ..tail] -> 1 + length(tail)
  }
}

pub fn map(list: List(a), function: fn(a) -> b) -> List(b) {
  case list {
    [] -> []
    [head, ..tail] -> [function(head), ..map(tail, function)]
  }
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
  do_reverse(list, [])
}

fn do_reverse(list: List(a), reversed: List(a)) -> List(a) {
  case list {
    [] -> reversed
    [first, ..rest] -> do_reverse(rest, [first, ..reversed])
  }
}
