export function score(x: number, y: number): number {
  const distance = Math.sqrt(x**2 + y**2);

  return distance > 10 ? 0 : 
    distance > 5 ? 1 :
    distance > 1 ? 5 : 10
}
