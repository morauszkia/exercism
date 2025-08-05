import gleam/result

pub type Player {
  Black
  White
}

pub type Game {
  Game(
    white_captured_stones: Int,
    black_captured_stones: Int,
    player: Player,
    error: String,
  )
}

pub fn apply_rules(
  game: Game,
  rule1: fn(Game) -> Result(Game, String),
  rule2: fn(Game) -> Game,
  rule3: fn(Game) -> Result(Game, String),
  rule4: fn(Game) -> Result(Game, String),
) -> Game {
  case game
    |> rule1
    |> result.map(rule2)  
    |> result.try(rule3) 
    |> result.try(rule4) {
      Ok(new_game) -> Game(..new_game, player: switch_player(game))
      Error(msg) -> Game(..game, error: msg)
    }
  
}

fn switch_player(game: Game) -> Player {
  case game.player {
    White -> Black
    Black -> White
  }
}
