is_pangram <- function(input) {
  all(letters %in% tolower(unlist(stringr::str_extract_all(input, "[:alpha:]"))))
}
