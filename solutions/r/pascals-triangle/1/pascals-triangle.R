pascals_triangle <- function(n) {
  stopifnot(n >= 0)
  
  output <- list()
  
  if (n == 0) { return(output) }
  
  for (i in 1:n) {
    if (i == 1) {
      current <- 1
    }
    else {
      previous <- c(0, output[[i - 1]], 0)
      current <- c()
      for (j in 2:length(previous)) {
        current <- append(current, previous[j-1] + previous[j])
      }
    }
    output[[i]] <- current
  }
  
  return(output)
}
