import gleam/int

pub fn convert(number: Int) -> String {
  let sound = raindrop(number, 3, "Pling") <>
              raindrop(number, 5, "Plang") <>
              raindrop(number, 7, "Plong")

  case sound {
    "" -> int.to_string(number)
    _ -> sound
  }
}

fn raindrop(number: Int, factor: Int, sound: String) -> String {
  case number % factor {
    0 -> sound
    _ -> ""
  }
}