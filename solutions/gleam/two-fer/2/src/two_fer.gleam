import gleam/option.{type Option, Some, None}

pub fn two_fer(name: Option(String)) -> String {
  "One for " <> option.unwrap(name, "you") <> ", one for me."
}
