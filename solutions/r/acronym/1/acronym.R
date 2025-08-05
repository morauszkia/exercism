acronym <- function(input) {
  stringr::str_replace_all(input, "[_\']", "") |>
  stringr::str_extract_all("\\b[A-Za-z]") |>
    magrittr::extract2(1) |>
    paste(collapse="") |>
    toupper()
}
