acronym <- function(input) {
  stringr::str_replace_all(input, "[_\']", "") |>
  stringr::str_extract_all("\\b[A-Za-z]") |>
    unlist() |>
    paste(collapse="") |>
    toupper()
}
