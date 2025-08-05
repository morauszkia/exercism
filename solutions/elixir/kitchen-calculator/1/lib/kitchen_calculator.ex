defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, volume} = volume_pair
    volume
  end

  def to_milliliter({:milliliter, volume} = volume_pair), do: volume_pair 
  def to_milliliter({:cup, volume} = volume_pair), do: {:milliliter, volume * 240}
  def to_milliliter({:fluid_ounce, volume} = volume_pair), do: {:milliliter, volume * 30}
  def to_milliliter({:teaspoon, volume} = volume_pair), do: {:milliliter, volume * 5}
  def to_milliliter({:tablespoon, volume} = volume_pair), do: {:milliliter, volume * 15}

  def from_milliliter({:milliliter, volume} = volume_pair, :milliliter = unit), do: volume_pair
  def from_milliliter({:milliliter, volume} = volume_pair, :cup = unit), do: {unit, volume / 240}
  def from_milliliter({:milliliter, volume} = volume_pair, :fluid_ounce = unit), do: {unit, volume / 30}
  def from_milliliter({:milliliter, volume} = volume_pair, :teaspoon = unit), do: {unit, volume / 5}
  def from_milliliter({:milliliter, volume} = volume_pair, :tablespoon = unit), do: {unit, volume / 15}

  def convert(volume_pair, unit), do: from_milliliter(to_milliliter(volume_pair), unit)

end

