import gleam/list
import gleam/int

pub fn sum(factors factors: List(Int), limit limit: Int) -> Int {
  list.range(1, limit - 1)
  |> list.filter(fn(num) { list.any(factors, fn(fac) { fac > 0 && num % fac == 0 }) })
  |> int.sum
}
