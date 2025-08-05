import gleam/order.{type Order}
import gleam/float
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

fn get_celsius(temperature: Temperature) -> Float {
  case temperature {
    Fahrenheit(t) -> fahrenheit_to_celsius(t)
    Celsius(t) -> t
  }
}

pub fn compare_temperature(left: Temperature, right: Temperature) -> Order {
  float.compare(get_celsius(left), get_celsius(right))
}

pub fn sort_cities_by_temperature(cities: List(City)) -> List(City) {
  list.sort(cities, fn(cityl, cityr) {
    compare_temperature(cityl.temperature, cityr.temperature)
  })
}
