export function age(planet: string, seconds: number): number {
  if (!(planet.toLowerCase() in orbitalPeriods)) throw new Error('Planet not found!')

  const planetYearSec = EARTH_YEAR_SEC * orbitalPeriods[planet.toLowerCase()];
  
  return Math.round(100 * seconds / planetYearSec) / 100;
}

const EARTH_YEAR_SEC = 31557600;

const orbitalPeriods: {
  [index: string]: number
} = {
  'mercury': 0.2408467,
  'venus': 0.61519726,
  'earth': 1,
  'mars': 1.8808158,
  'jupiter': 11.862615,
  'saturn': 29.447498,
  'uranus': 84.016846,
  'neptune': 164.79132
}