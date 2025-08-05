export function find(haystack: number[], needle: number, start: number = 0, end: number = haystack.length): number | never {
  if (haystack.length === 0 || 
      start > end ||
      needle < haystack[0] || 
      needle > haystack[haystack.length - 1]) throw new Error('Value not in array')
  
  const mid = Math.floor((start + end) / 2)
  
  if (needle === haystack[mid]) return mid;
  
  if (needle < haystack[mid]) {
    return find(haystack, needle, 0, mid - 1)
  } else {
    return find(haystack, needle, mid + 1, end)
  }
}