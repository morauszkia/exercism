defmodule Username do
  def sanitize([]), do: ~c""
  def sanitize([head | tail]) do
    case head do
      head when (head >= ?a and head <= ?z) or head == ?_ -> [head | sanitize(tail)]
      ?ä -> [?a, ?e] ++ sanitize(tail) #ä
      ?ü -> [?u, ?e] ++ sanitize(tail) #ü
      ?ö -> [?o, ?e] ++ sanitize(tail) #ö
      ?ß -> [?s, ?s] ++ sanitize(tail) #ß
      _ -> sanitize(tail)
    end
  end
end
