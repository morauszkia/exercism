defmodule NameBadge do
  def print(id, name, department) do
    (if id, do: "[#{id}] - ", else: "") |>
    Kernel.<>("#{name} - ") |>
    Kernel.<>(if department, do: "#{String.upcase(department)}", else: "OWNER")
  end
end
