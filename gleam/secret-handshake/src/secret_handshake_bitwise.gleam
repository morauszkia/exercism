import gleam/list
import gleam/int

pub type Command {
  Wink
  DoubleBlink
  CloseYourEyes
  Jump
}

pub fn commands(encoded_message: Int) -> List(Command) {
  [
    #(0b00000001, list.prepend(_, Wink)),
    #(0b00000010, list.prepend(_, DoubleBlink)),
    #(0b00000100, list.prepend(_, CloseYourEyes)),
    #(0b00001000, list.prepend(_, Jump)),
    #(0b00010000, list.reverse)
  ]
  |> list.fold([], fn(actions, next_action) { 
    let #(bit, action) = next_action
    case int.bitwise_and(encoded_message, bit) {
        0 -> actions
        _ -> action(actions)
    }
   })
   |> list.reverse
}
