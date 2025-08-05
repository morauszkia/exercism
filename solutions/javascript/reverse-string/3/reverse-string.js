export const reverseString = original => {
  const [head, ...tail] = [...original]
  return head ? reverseString(tail.join("")) + head : "";
}
