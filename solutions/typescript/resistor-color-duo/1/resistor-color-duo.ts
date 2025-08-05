export function decodedValue(colorArray: string[]): number {
  const [color1, color2] = colorArray;
  return parseInt(COLORS[color1] + COLORS[color2])
}

const COLORS: Record<string, string> = {
  'black': '0',
  'brown': '1',
  'red': '2',
  'orange': '3',
  'yellow': '4',
  'green': '5',
  'blue': '6',
  'violet': '7',
  'grey': '8',
  'white': '9'
}