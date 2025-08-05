export function convert(number: number): string {
  const DROPS: Record<number, string> = {
    3: "Pling",
    5: "Plang",
    7: "Plong"
  }

  let result: string = "";
  for (const key in DROPS) {
    if (number % parseInt(key) === 0) result += DROPS[key]
  }

  return result ? result : number.toString();
}
