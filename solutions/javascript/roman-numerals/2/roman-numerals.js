export const toRoman = (arabic) => {
  const NUMERALS = [
    [1000, 'M'],
    [900, 'CM'],
    [500, 'D'],
    [400, 'CD'],
    [100, 'C'],
    [90, 'XC'],
    [50, 'L'],
    [40, 'XL'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [4, 'IV'],
    [1, 'I'],
  ];

  for (const [number, numeral] of NUMERALS) {
    if (arabic >= number) return numeral + toRoman(arabic - number);
  }

  return '';
};
