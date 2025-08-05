import std/strutils
  
proc reverse*(s: string): string =
  var output = ""
  for i in 0 ..< s.len:
    output = s[i] & output

  return output
