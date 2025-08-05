import gleam/float
import gleam/result

pub fn score(x: Float, y: Float) -> Int {
  let assert Ok(distance) = float.square_root(x *. x +. y *. y)
  
  case distance {
    d if d >. 10.0 -> 0
    d if d >. 5.0 -> 1
    d if d >. 1.0 -> 5
    _ -> 10
  }
}
