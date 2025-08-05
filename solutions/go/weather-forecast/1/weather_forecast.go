// Package weather provides tools to forecast
// weather conditions for cities in Goblinocus.
package weather

// CurrentCondition: The current weather conditions.
var CurrentCondition string
// CurrentLocation: The current city.
var CurrentLocation string

// Forecast: Returns current weather condition for a city.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
