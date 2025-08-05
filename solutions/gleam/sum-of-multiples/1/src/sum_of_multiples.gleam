import gleam/list

pub fn sum(factors factors: List(Int), limit limit: Int) -> Int {
  factors
  |> list.map(fn(factor) { get_multiples(factor, limit - 1, []) })
  |> list.concat()
  |> list.unique()
  |> get_sum(0)
}

fn get_multiples(base: Int, limit: Int, multiples: List(Int)) -> List(Int) {
  case limit / base {
    0 -> multiples
    f -> get_multiples(base, base * f - 1, [base * f, ..multiples])
  }
}

fn get_max_factor(base: Int, limit: Int) {
  case limit % base {
    0 -> limit / base - 1
    _ -> limit / base
  }
}

fn get_sum(list: List(Int), sum) -> Int {
  case list {
    [] -> sum
    [h, ..t] -> get_sum(t, sum + h)
  }
}
