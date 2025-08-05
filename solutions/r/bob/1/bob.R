is_yelling <- function(input) {
  grepl("[[:upper:]]", input) & input == toupper(input)
}

is_question <- function(input) {
  grepl("\\?$", input)
}

bob <- function(input) {
  trimmed <- gsub("^\\s+|\\s+$", "", input)
  if (nchar(trimmed) == 0) {
    "Fine. Be that way!"
  } else if (is_question(trimmed)) {
    if (is_yelling(trimmed)) {
      "Calm down, I know what I'm doing!"
    } else {
      "Sure."
    }
  } else if (is_yelling(trimmed)) {
    "Whoa, chill out!"
  } else {
    "Whatever."
  }
}
