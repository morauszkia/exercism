import gleam/list

pub type Error {
  InvalidBase(Int)
  InvalidDigit(Int)
}

pub fn rebase(
  digits digits: List(Int),
  input_base input_base: Int,
  output_base output_base: Int,
) -> Result(List(Int), Error) {
   case input_base, output_base, digits {
    i, _, _ if i < 2 -> Error(InvalidBase(i))
    _, o, _ if o < 2 -> Error(InvalidBase(o))
    _, _, [] -> Ok([0])
    _, _, [0, ..rest] -> rebase(rest, input_base, output_base)
    _, _, dlist -> {
      case list.find(dlist, fn(d) { d < 0 || d >= input_base}) {
        Ok(d) -> Error(InvalidDigit(d))
        _ -> digits
          |> convert_to_base10(input_base)
          |> convert_to_outputbase(output_base)
          |> Ok()
      } 
    }
   }
}

fn convert_to_base10(digits: List(Int), input_base: Int) -> Int {
  do_convert_to_base10(digits, input_base, list.length(digits) - 1, 0)
}


fn do_convert_to_base10(digits: List(Int), input_base: Int, exponent: Int, base10: Int) {
  case digits {
    [] -> base10
    [d, ..rest] -> do_convert_to_base10(rest, input_base, exponent - 1, base10 + d * power(input_base, exponent))
  }
}

fn power(base, exponent) {
  case exponent {
    0 -> 1
    e -> base * power(base, e - 1)
  }
}


fn convert_to_outputbase(base10: Int, output_base: Int) -> List(Int) {
  do_convert_to_outputbase(base10, output_base, [])
}

fn do_convert_to_outputbase(base10: Int, output_base: Int, digits: List(Int)) -> List(Int) {
  case base10 {
    0 -> digits
    _ -> do_convert_to_outputbase(
      base10 / output_base,
      output_base,
      [base10 % output_base, ..digits]
    )
  }
}