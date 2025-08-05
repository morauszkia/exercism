pub type Pizza {
  Margherita
  Caprese
  Formaggio
  ExtraSauce(Pizza)
  ExtraToppings(Pizza)
}

pub fn pizza_price(pizza: Pizza) -> Int {
  case pizza {
    Caprese -> 9
    Margherita -> 7
    Formaggio -> 10
    ExtraSauce(p) -> 1 + pizza_price(p)
    ExtraToppings(p) -> 2 + pizza_price(p)
  }
}

pub fn order_price(order: List(Pizza)) -> Int {
  let total = case order {
    [_] -> 3
    [_, _] -> 2
    _ -> 0
  }
  calculate_order_price(order, total)
}

fn calculate_order_price(order: List(Pizza), total: Int) -> Int {
  case order {
    [] -> total
    [p, ..rest] -> {
      let total = total + pizza_price(p)
      calculate_order_price(rest, total)
    }
  }
}
