library(stringr)

word_count <- function(input) {
  input |>
    tolower() |>
    str_split(boundary("word")) |>
    table() |>
    as.list()
}