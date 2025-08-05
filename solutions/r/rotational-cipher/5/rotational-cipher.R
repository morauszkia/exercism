rotate <- function(text, key) {
  chars <- strsplit(text, "") |> unlist()
  # Alternative: adding (key - 1) %% 26 + 1 to avoid having 0s
  indices <- (match(tolower(chars), letters) + key) %% 26
  indices[indices == 0] <- 26
  uppercase_indices <- sapply(chars, \(x) grepl("[A-Z]", x))
  non_letter_indices <- is.na(indices)
  
  ciphered <- letters[indices]
  ciphered[uppercase_indices] <- toupper(ciphered[uppercase_indices])
  ciphered[non_letter_indices] <- chars[non_letter_indices]
  
  paste(ciphered, collapse="")
}