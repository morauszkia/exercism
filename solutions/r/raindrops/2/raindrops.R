raindrops <- function(number) {
  sounds <- c("Pling" = 3, "Plang" = 5, "Plong" = 7)
  
  result <- paste0(names(sounds[number %% sounds == 0]), collapse = "")
  if (nchar(result)) result else as.character(number)
}
