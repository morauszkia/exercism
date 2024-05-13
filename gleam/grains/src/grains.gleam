import gleam/int
import gleam/bool

pub type Error {
  InvalidSquare
}

pub fn square(square: Int) -> Result(Int, Error) {
  use <- bool.guard(
    square < 1 || square > 64,
    Error(InvalidSquare)
  )
  int.bitwise_shift_left(1, square - 1)
  |> Ok
}

pub fn total() -> Int {
  int.bitwise_shift_left(1, 64) - 1
}
