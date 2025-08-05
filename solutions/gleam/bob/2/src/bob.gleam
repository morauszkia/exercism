import gleam/string
import gleam/result
import gleam/regex

pub fn hey(remark: String) -> String {
  let trimmed_remark = remark |> string.trim
  case  string.is_empty(trimmed_remark),
        string.ends_with(trimmed_remark, "?"), 
        is_yelling(trimmed_remark) {
    True, _, _ -> "Fine. Be that way!"
    _, True, True -> "Calm down, I know what I'm doing!"
    _, False, True -> "Whoa, chill out!"
    _, True, _ -> "Sure."
    _, _, _ -> "Whatever."
  }
}

fn is_yelling(remark: String) -> Bool {
  has_letters(remark) && remark == string.uppercase(remark)
}

fn has_letters(remark: String) -> Bool {
  let assert Ok(re) = regex.from_string("[a-zA-Z]")
  regex.check(with: re, content: remark)
}

