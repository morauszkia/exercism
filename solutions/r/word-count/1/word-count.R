word_count <- function(input) {
  result <- list()
  words <- input |>
    stringr::str_extract_all("[A-Za-z]+'?[A-Za-z]+|[A-Za-z]+|[0-9]+") |>
    unlist() |>
    tolower()
  for (word in words) {
    if (word %in% names(result)) {
      result[[word]] <- result[[word]]+1
    } else {
      result[[word]] <- 1
    }
  }
  result
}
