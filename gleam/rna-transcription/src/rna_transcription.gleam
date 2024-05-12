import gleam/string
import gleam/list
import gleam/result

pub fn to_rna(dna: String) -> Result(String, Nil) {
  string.to_graphemes(dna)
  |> list.try_map(transcribe_to_rna)
  |> result.map(string.concat)
}

fn transcribe_to_rna(dna: String) -> Result(String, Nil) {
  case dna {
    "G" -> Ok("C") 
    "C" -> Ok("G")
    "T" -> Ok("A")
    "A" -> Ok("U")
    _ -> Error(Nil)
  }
}