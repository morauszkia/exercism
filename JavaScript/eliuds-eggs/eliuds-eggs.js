export const eggCount = (displayValue) => {
  let eggs = 0;
  while (displayValue > 0) {
    eggs += displayValue % 2;
    displayValue = Math.floor(displayValue / 2);
  }
  return eggs;
};
