import gleam/regex
import gleam/result
import gleam/list
import gleam/string

pub fn is_valid_line(line: String) -> Bool {
  let assert Ok(re) = regex.from_string("^\\[(DEBUG|INFO|WARNING|ERROR)\\]")
  regex.check(re, line)
}

pub fn split_line(line: String) -> List(String) {
  let assert Ok(re) = regex.from_string("<[\\-\\*~=]*>")
  regex.split(re, line)
}

pub fn tag_with_user_name(line: String) -> String {
  let assert Ok(re) = regex.from_string("User")
  case regex.check(re, line) {
    True -> {
      let assert Ok(name_re) = regex.from_string("(?<=User)[\\s\\t]+\\S+")
      let name = line 
      |> regex.scan(name_re, _)
      |> list.first
      |> result.unwrap(regex.Match("", []))
    "[USER] " <> name.content |> string.trim <> " " <> line
  }
    False -> line
  }
}
