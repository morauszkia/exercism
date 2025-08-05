import gleam/list
import gleam/result

pub type Nucleotide {
  Adenine
  Cytosine
  Guanine
  Thymine
}

pub fn encode_nucleotide(nucleotide: Nucleotide) -> Int {
  case nucleotide {
    Adenine -> 0b00
    Cytosine -> 0b01
    Guanine -> 0b10
    Thymine -> 0b11
  }
}

pub fn decode_nucleotide(nucleotide: Int) -> Result(Nucleotide, Nil) {
  case nucleotide {
    0b00 -> Ok(Adenine)
    0b01 -> Ok(Cytosine)
    0b10 -> Ok(Guanine)
    0b11 -> Ok(Thymine)
    _ -> Error(Nil)
  }
}

pub fn encode(dna: List(Nucleotide)) -> BitArray {
  do_encode(dna, <<>>)
}

fn do_encode(dna: List(Nucleotide), bitarr: BitArray) -> BitArray {
  case dna {
    [] -> bitarr
    [d, ..rest] -> do_encode(rest, <<bitarr:bits, encode_nucleotide(d):2>>)
  }
}

pub fn decode(dna: BitArray) -> Result(List(Nucleotide), Nil) {
  result.all(do_decode(dna, []))
}

fn do_decode(encoded: BitArray, results: List(Result(Nucleotide, Nil))) -> List(Result(Nucleotide, Nil)) {
  case encoded {
    <<>> -> list.reverse(results)
    <<next:2, rest:bits>> -> do_decode(rest, [decode_nucleotide(next), ..results])
    _ -> [Error(Nil)]
    }
}
