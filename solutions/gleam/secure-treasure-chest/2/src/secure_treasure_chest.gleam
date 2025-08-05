import gleam/string

pub opaque type TreasureChest(treasure) {
  TreasureChest(password: String, treasure: treasure)
}

pub fn create(
  password: String,
  contents: treasure,
) -> Result(TreasureChest(treasure), String) {
  case string.length(password) < 8 {
    True -> Error("Password must be at least 8 characters long")
    False -> Ok(TreasureChest(password, contents))
  }
}

pub fn open(
  chest: TreasureChest(treasure),
  password: String,
) -> Result(treasure, String) {
  case password == chest.password {
    True -> Ok(chest.treasure)
    False -> Error("Incorrect password")
  }
}
