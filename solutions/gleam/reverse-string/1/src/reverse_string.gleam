import gleam/string

pub fn reverse(value: String) -> String {
  case string.pop_grapheme(value) {
    Error(Nil) -> ""
    Ok(#(head, tail)) -> reverse(tail) <> head
  }
}
