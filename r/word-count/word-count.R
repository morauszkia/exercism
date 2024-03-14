library(stringr)

word_count <- function(input) {
  result <- list()
  input |>
    tolower() |>
    str_split(boundary("word")) |>
    table() |>
    as.list()
}
