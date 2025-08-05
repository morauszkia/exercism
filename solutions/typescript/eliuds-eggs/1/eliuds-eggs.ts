export const eggCount = (displayValue: number): number =>  (
  displayValue === 0 ? 0 : displayValue % 2 + eggCount(Math.floor(displayValue / 2))
)
