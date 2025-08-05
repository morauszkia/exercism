export function reverse(original: string): string {
  const [head, ...tail] = [...original];
  return head ? reverse(tail.join("")) + head : "";
}
