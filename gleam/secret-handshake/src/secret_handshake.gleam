import gleam/list

pub type Command {
  Wink
  DoubleBlink
  CloseYourEyes
  Jump
}

pub fn commands(encoded_message: Int) -> List(Command) {
  case encoded_message >= 16 {
    True -> decode(encoded_message - 16, []) |> list.reverse
    False -> decode(encoded_message, [])
  }
}

fn decode(encoded: Int, decoded: List(Command)) -> List(Command) {
  case encoded {
    e if e >= 8 -> decode(encoded - 8, [Jump, ..decoded])
    e if e >= 4 -> decode(encoded - 4, [CloseYourEyes, ..decoded])
    e if e >= 2 -> decode(encoded - 2, [DoubleBlink, ..decoded])
    1 -> decode(encoded - 1, [Wink, ..decoded])
    _ -> decoded
  }
}
