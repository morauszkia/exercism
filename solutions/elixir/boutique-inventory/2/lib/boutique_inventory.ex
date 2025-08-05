defmodule BoutiqueInventory do
  def sort_by_price(inventory), do: Enum.sort_by(inventory, &(&1.price))

  def with_missing_price(inventory), do: Enum.reject(inventory, &(&1.price))

  def update_names(inventory, old_word, new_word) do
    Enum.map(inventory, fn item -> Map.update!(item, :name, &(String.replace(&1, old_word, new_word))) end)
  end

  def increase_quantity(item, count) do
    new_quantities = Map.new(item.quantity_by_size, fn {size, current} -> {size, current + count} end)
    %{item | quantity_by_size: new_quantities}
  end

  def total_quantity(item), do: Enum.reduce(item.quantity_by_size, 0, fn {_, x}, acc -> acc + x end)

end
