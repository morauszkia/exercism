import gleam/string

pub fn score(word: String) -> Int {
  word 
  |> string.uppercase
  |> string.split("")
  |> score_letters(0)
}

fn score_letters(letters: List(String), score: Int) -> Int {
  case letters {
    [] -> score
    [letter, ..rest] -> {
      let value = case letter {
        "A" | "E" | "I" | "O" | "U" | "L" | "N" | "R" | "S" | "T" -> 1
        "D" | "G" -> 2
        "B" | "C" | "M" | "P" -> 3
        "F" | "H" | "V" | "W" | "Y" -> 4
        "K" -> 5
        "J" | "X" -> 8
        "Q" | "Z" -> 10
        _ -> 0
      }
      score_letters(rest, score + value)
    }
  }
}
