import gleam/list

pub type Usd
pub type Eur
pub type Jpy

pub opaque type Money(currency) {
  Money(amount: Int)
}

pub fn dollar(amount: Int) -> Money(Usd) {
  Money(amount)
}

pub fn euro(amount: Int) -> Money(Eur) {
  Money(amount)
}

pub fn yen(amount: Int) -> Money(Jpy) {
  Money(amount)
}

pub fn total(prices: List(Money(currency))) -> Money(currency) {
  let assert Ok(total) = list.reduce(prices, add_amounts)
  total
}

fn add_amounts(total: Money(currency), next: Money(currency)) -> Money(currency) {
  Money(total.amount + next.amount)
}
