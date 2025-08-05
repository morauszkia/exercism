export function decodedResistorValue([color1, color2, color3]: Color[]): string {
  const decoded1 = COLORS.indexOf(color1)
  const decoded2 = COLORS.indexOf(color2)
  const decoded3 = COLORS.indexOf(color3)
  
  const numericRaw = (decoded1*10 + decoded2) * 10 ** decoded3

  let prefix: string;
  let result: number;

  if (numericRaw === 0) return '0 ohms';
  
  if (numericRaw % 10**9 === 0) {
    prefix = 'giga';
    result = numericRaw / 10**9;
  } else if (numericRaw % 10**6 === 0) {
    prefix = 'mega';
    result = numericRaw / 10**6;
  } else if (numericRaw % 10**3 === 0) {
    prefix = 'kilo';
    result = numericRaw / 10**3;
  } else {
    prefix = '';
    result = numericRaw;
  }

  return `${result} ${prefix}ohms`
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