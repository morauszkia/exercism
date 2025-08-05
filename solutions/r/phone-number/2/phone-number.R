parse_phone_number <- function(number_string) {
  numbers <- stringr::str_extract_all(number_string, "\\d+") |>
    unlist() |>
    paste(collapse="")

  if (substr(numbers, 1, 1) == "1") {
    numbers <- substr(numbers, 2, nchar(numbers))
  }

  if (stringr::str_detect(numbers, "^[2-9]\\d{2}[2-9]\\d{6}$")) numbers
}
