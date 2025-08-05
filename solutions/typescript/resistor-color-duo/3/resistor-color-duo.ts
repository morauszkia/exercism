export function decodedValue([color1, color2]: Color[]): number {
  return COLORS.indexOf(color1)*10 + COLORS.indexOf(color2)
}

const COLORS = [
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white'
] as const;

// To be able to do this above array has to be marked with 'as const' to make it read-only
type Color = typeof COLORS[number];