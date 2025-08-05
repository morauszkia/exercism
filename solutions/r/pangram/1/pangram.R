is_pangram <- function(input) {
  # check how many letters are NOT among the letters of the input after making it lower case
  sum(!letters %in% tolower(unlist(stringr::str_extract_all(input, "[:alpha:]")))) == 0
}
