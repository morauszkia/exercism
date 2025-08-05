import gleam/order.{type Order}
import gleam/list

pub type City {
  City(name: String, temperature: Temperature)
}

pub type Temperature {
  Celsius(Float)
  Fahrenheit(Float)
}

pub fn fahrenheit_to_celsius(f: Float) -> Float {
  { f -. 32.0 } /. 1.8
}

fn get_celsius(temperature: Temperature) -> Temperature {
  case temperature {
    Fahrenheit(t) -> Celsius(fahrenheit_to_celsius(t))
    _ -> temperature
  }
}

pub fn compare_temperature(left: Temperature, right: Temperature) -> Order {
  case get_celsius(left), get_celsius(right) {
    Celsius(l), Celsius(r) if l <. r -> order.Lt
    Celsius(l), Celsius(r) if l >. r -> order.Gt
    _, _ -> order.Eq
  }
}

pub fn sort_cities_by_temperature(cities: List(City)) -> List(City) {
  list.sort(cities, 
    fn(left_city, right_city) {compare_temperature(left_city.temperature, right_city.temperature)})
}
