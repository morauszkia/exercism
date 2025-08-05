fizz_buzz <- function(n) {
  result = c()
  for (i in 1:n) {
    string = c()
    if (i %% 3 == 0) {
      string <- c(string, "Fizz")
    }
    if (i %% 5 == 0) {
      string <- c(string, "Buzz")
    }
    string <- paste(string, collapse=" ")
    if (string == "") {
      string <- as.character(i)
    } 
    result <- c(result, string)
  }
  result  
}
