import gleam/int
import gleam/float
import gleam/result

pub fn square_of_sum(n: Int) -> Int {
  n * { n+1 } / 2
  |> int.power(2.0)
  |> result.unwrap(0.0)
  |> float.truncate
}

pub fn sum_of_squares(n: Int) -> Int {
  n * { n+1 } * { 2*n+1 } / 6
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
