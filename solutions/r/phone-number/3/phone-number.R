parse_phone_number <- function(number_string) {
  numbers <- sub("^1", "", gsub("\\D", "", number_string))
  ifelse(grepl("^[2-9]\\d{2}[2-9]\\d{6}$", numbers), numbers, return(NULL))
}
