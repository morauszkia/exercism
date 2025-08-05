import gleam/set.{type Set}
import gleam/list
import gleam/string

pub fn new_collection(card: String) -> Set(String) {
  set.new() |> set.insert(card)
}

pub fn add_card(collection: Set(String), card: String) -> #(Bool, Set(String)) {
  #(set.contains(collection, card), set.insert(collection, card))
}

pub fn trade_card(
  my_card: String,
  their_card: String,
  collection: Set(String),
) -> #(Bool, Set(String)) {
  case set.contains(collection, my_card), set.contains(collection, their_card) {
    False, False -> #(False, set.insert(collection, their_card))
    False, True -> #(False, collection)
    True, False -> #(True, collection |> set.delete(my_card) |> set.insert(their_card))
    True, True -> #(False, set.delete(collection, my_card))
  }
}

pub fn boring_cards(collections: List(Set(String))) -> List(String) {
  case collections {
    [] -> []
    [first, ..rest] -> 
      rest 
      |> list.fold(first, fn(isect, next) { set.intersection(isect, next) }) 
      |> set.to_list
  }
}


pub fn total_cards(collections: List(Set(String))) -> Int {
  case collections {
    [] -> 0
    [first, ..rest] -> 
      rest |>
      list.fold(first, fn(u, next) { set.union(u, next) })
      |> set.size
  }
}

pub fn shiny_cards(collection: Set(String)) -> Set(String) {
  collection |>
  set.filter(fn(name) { string.starts_with(name, "Shiny ") })
}
