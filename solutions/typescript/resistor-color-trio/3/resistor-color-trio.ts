export function decodedResistorValue([color1, color2, color3]: Color[]): string {
  const firstDigit = COLORS.indexOf(color1)
  const secondDigit = COLORS.indexOf(color2)
  const multiplier = COLORS.indexOf(color3)
  
  const numericRaw = (firstDigit*10 + secondDigit) * 10 ** multiplier

  if (numericRaw === 0) return '0 ohms';
  
  if (numericRaw % 10**9 === 0) {
    return `${numericRaw / 10**9} gigaohms`;
  } else if (numericRaw % 10**6 === 0) {
    return `${numericRaw / 10**6} megaohms`;
  } else if (numericRaw % 10**3 === 0) {
    return `${numericRaw / 10**3} kiloohms`;
  } else {
    return `${numericRaw} ohms`;
  }
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
type Color = typeof COLORS[number];