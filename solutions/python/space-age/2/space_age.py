class SpaceAge:

    PLANET_YEARS = {
        "mercury": 0.2408467,
        "venus": 0.61519726,
        "earth": 1,
        "mars": 1.8808158,
        "jupiter": 11.862615,
        "saturn": 29.447498,
        "uranus": 84.016846,
        "neptune": 164.79132
    }
    
    def __init__(self, seconds):
        self.earth_years = seconds / 31557600
        for planet in self.PLANET_YEARS:
            setattr(self, f"on_{planet}", self.on_planet(planet))

    def on_planet(self, planet):
        return lambda planet = planet: round(self.earth_years / self.PLANET_YEARS[planet], 2)
