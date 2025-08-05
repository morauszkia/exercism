rotate <- function(text, key) {
  key <- key %% 26
  cipher <- letters[c((key+1):26, 1:key)]

  chars <- strsplit(text, "") |> unlist()
  
  for (i in seq_along(chars)) {
    if (grepl("[A-Z]", chars[i])) {
      chars[i] <- toupper(cipher[which(LETTERS==chars[i])])
    } else if (grepl("[a-z]", chars[i])) {
      chars[i] <- cipher[which(letters==chars[i])]
    }
  }
  paste(chars, collapse="")
}