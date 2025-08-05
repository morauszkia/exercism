anagram <- function(subject, candidates) {
  anagrams <- candidates[sapply(candidates, function(x) is_anagram(subject, x))]
  if (length(anagrams) == 0) NULL
  else anagrams
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
