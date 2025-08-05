defmodule RomanNumerals do
  defp get_roman_numerals(base, five, ten, times) do
    case times do
      9 -> base <> ten
      times when times >= 5 -> five <> String.duplicate(base, times - 5)
      4 -> base <> five
      _ -> String.duplicate(base, times)
    end
  end

  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    case number do
      number when number > 1000 -> get_roman_numerals("M", "", "", div(number, 1000)) <> numeral(rem(number, 1000))
      number when number > 100 -> get_roman_numerals("C", "D", "M", div(number, 100)) <> numeral(rem(number, 100))
      number when number > 10 -> get_roman_numerals("X", "L", "C", div(number, 10)) <> numeral(rem(number, 10))
      _ -> get_roman_numerals("I", "V", "X", number)
    end
  end
end
