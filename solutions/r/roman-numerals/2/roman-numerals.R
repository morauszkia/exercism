roman <- function(arabic) {
  ROMAN_LETTERS <- c("M" = 1000, "CM" = 900, "D" = 500, "CD" = 400,
                     "C" = 100, "XC" = 90, "L" = 50, "XL" = 40,
                     "X" = 10, "IX" = 9, "V" = 5, "IV" = 4, "I" = 1)
  
  roman <- ""
  remainder <- arabic
  for (letter in names(ROMAN_LETTERS)) {
    divisor <- ROMAN_LETTERS[letter]
    if (remainder >= divisor) {
      roman <- paste0(c(roman, rep(letter, remainder %/% divisor)), collapse="")
      remainder <- remainder %% divisor
    }
  }
  return(roman)
}
