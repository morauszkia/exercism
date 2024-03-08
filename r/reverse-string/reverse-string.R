reverse <- function(text) {
  strsplit(text, split="") |>
  lapply(rev) |>
  sapply(paste, collapse="")
}
