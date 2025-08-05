import std/strutils
  
proc reverse*(s: string): string =
  for c in s:
    result = c & result