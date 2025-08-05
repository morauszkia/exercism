export function decodedValue([color1, color2]: string[]): number {
  return COLORS.findIndex(c => c === color1)*10 + COLORS.findIndex(c => c === color2)
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
]