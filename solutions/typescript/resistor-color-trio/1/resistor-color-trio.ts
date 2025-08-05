export function decodedResistorValue([color1, color2, color3]: string[]): string {
  const decoded1 = COLORS.findIndex(c => c === color1)
  const decoded2 = COLORS.findIndex(c => c === color2)
  const decoded3 = COLORS.findIndex(c => c === color3)
  
  const numericRaw = (decoded1*10 + decoded2) * Math.pow(10, decoded3)

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
]