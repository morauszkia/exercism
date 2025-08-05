import gleam/option.{type Option, Some, None}

pub fn two_fer(name: Option(String)) -> String {
  "One for " <> case name {
    None -> "you"
    Some(n) -> n
  } <> ", one for me."
}
