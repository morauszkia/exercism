pub type Approval {
  Yes
  No
  Maybe
}

pub type Cuisine {
  Korean
  Turkish
}

pub type Genre {
  Crime
  Horror
  Romance
  Thriller
}

pub type Activity {
  BoardGame
  Chill
  Movie(Genre)
  Restaurant(Cuisine)
  Walk(Int)
}

pub fn rate_activity(activity: Activity) -> Approval {
  case activity {
    Movie(Romance) | Restaurant(Korean) -> Yes
    Walk(dist) if dist > 11 -> Yes
    Restaurant(Turkish) -> Maybe
    Walk(dist) if dist > 6 -> Maybe
    _ -> No
  }
}
