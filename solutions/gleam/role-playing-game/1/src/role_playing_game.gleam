import gleam/option.{type Option, None, Some}

pub type Player {
  Player(name: Option(String), level: Int, health: Int, mana: Option(Int))
}

pub fn introduce(player: Player) -> String {
  let name = option.unwrap(player.name, "Mighty Magician")
  name
}

pub fn revive(player: Player) -> Option(Player) {
  case player {
    Player(health: 0, level: l, ..) if l >= 10 -> Some(Player(..player, health: 100, mana: Some(100)))
    Player(health: 0, ..) -> Some(Player(..player, health: 100))
    _ -> None
  }
}

pub fn cast_spell(player: Player, cost: Int) -> #(Player, Int) {
  case player {
    Player(mana: Some(m), ..) if m > cost -> #(Player(..player, mana: Some(m - cost)), cost * 2)
    Player(mana: None, health: h, ..) if h > cost -> #(Player(..player, health: h - cost), 0)
    Player(mana: None, ..) -> #(Player(..player, health: 0), 0)
    _ -> #(Player(..player), 0)
  }
}
