# Determine whether the number is valid.
is_valid <- function(input) {

  cleaned_input <- gsub("\\s", "", input)

  if (!grepl("^\\d\\d+$", cleaned_input)) return(FALSE)
  
  # reverse, multiply, correct, sum
  suppressWarnings({reversed <- cleaned_input |>
    strsplit("") |>
    unlist() |>
    rev() |>
    as.numeric() |>
    magrittr::multiply_by(c(1, 2))})
  
  reversed[reversed > 9] <- reversed[reversed > 9] - 9
  sum(reversed) %% 10 == 0
}

