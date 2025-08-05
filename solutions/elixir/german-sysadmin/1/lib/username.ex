defmodule Username do
  def sanitize([]), do: ~c""
  def sanitize([head | tail]) do
    cond do
      (head >= 97 and head <= 122) or head == 95 -> [head] ++ sanitize(tail)
      head == 228 -> [97, 101] ++ sanitize(tail) #ä
      head == 252 -> [117, 101] ++ sanitize(tail) #ü
      head == 246 -> [111, 101] ++ sanitize(tail) #ö
      head == 223 -> [115, 115] ++ sanitize(tail) #ß
      true -> [] ++ sanitize(tail)
    end
  end
end
