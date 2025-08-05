import gleam/string

pub fn to_rna(dna: String) -> Result(String, Nil) {
  transcribe_to_rna("", dna)
}

fn transcribe_to_rna(transcribed: String, sequence: String) -> Result(String, Nil) {
  case string.pop_grapheme(sequence) {
    Error(Nil) -> Ok(transcribed)
    Ok(#("G", rest)) -> transcribe_to_rna(transcribed <> "C", rest) 
    Ok(#("C", rest)) -> transcribe_to_rna(transcribed <> "G", rest)
    Ok(#("T", rest)) -> transcribe_to_rna(transcribed <> "A", rest)
    Ok(#("A", rest)) -> transcribe_to_rna(transcribed <> "U", rest)
    Ok(_) -> Error(Nil)
  }
}