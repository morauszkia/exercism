export function convert(number: number): string {
  const DROPS: [number, string][] = [[3, "Pling"], [5, "Plang"], [7, "Plong"]]

  const result = DROPS.reduce((result: string, [num, drop] : [number, string]) => number % num ? result : result += drop, "")

  return result || number.toString();
}
