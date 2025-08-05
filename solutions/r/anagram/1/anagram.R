anagram <- function(subject, candidates) {
  filter <- vector("logical", length(candidates))
  for (i in seq_along(candidates)) {
    filter[i] <- is_anagram(subject, candidates[i])
  }
  if (length(candidates[filter]) == 0) {
    NULL
  } else {
    candidates[filter]
  }
}

is_anagram <- function(word1, word2) {
  tolower(word1) != tolower(word2) & sorted_letters(word1) == sorted_letters(word2)
}

sorted_letters <- function(word) {
  word |>
  tolower() |>
  strsplit("") |>
  unlist() |>
  sort() |>
  paste(collapse="")
}
