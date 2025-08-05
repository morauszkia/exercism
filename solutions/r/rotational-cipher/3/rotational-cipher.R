rotate <- function(text, key) {
  key <- key %% 26
  
  chars <- strsplit(text, "") |> unlist()
  # (key - 1) %% 26 + 1 to avoid having 0s
  # Alternative: change 0s to 26s
  indices <- (match(tolower(chars), letters) + key - 1) %% 26 + 1
  uppercase_indices <- sapply(chars, \(x) grepl("[A-Z]", x))
  non_letter_indices <- is.na(indices)
  
  ciphered <- letters[indices]
  ciphered[uppercase_indices] <- toupper(ciphered[uppercase_indices])
  ciphered[non_letter_indices] <- chars[non_letter_indices]
  
  paste(ciphered, collapse="")
}