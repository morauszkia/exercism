fizz_buzz <- function(n) {
  result = c()
  for (i in 1:n) {
    string <- paste(c("Fizz", "Buzz")[i %% c(3, 5) == 0], collapse = " ")
    if (string == "") string <- as.character(i)
    
    result <- c(result, string)
  }
  result  
}
