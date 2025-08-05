import gleam/int

pub type Error {
  InvalidSquare
}

pub fn square(square: Int) -> Result(Int, Error) {
  case square {
    s if s < 1 || s > 64 -> Error(InvalidSquare)
    s -> Ok(int.bitwise_shift_left(1, s - 1))
  }
}

pub fn total() -> Int {
  int.bitwise_shift_left(1, 64) - 1
}
