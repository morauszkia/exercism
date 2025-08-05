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
  rule1(game)
  |> result.map(rule2)  
  |> result.try(rule3) 
  |> result.try(rule4) 
  |> result.map(switch_player) 
  |> result.map_error(change_error(game, _)) 
  |> result.unwrap_both
}

fn change_error(game: Game, msg: String) -> Game {
  Game(..game, error: msg)
}

fn switch_player(game: Game) -> Game {
  let next_player = case game.player {
    White -> Black
    Black -> White
  }
  Game(..game, player: next_player)
}
