pascals_triangle <- function(n) {
  stopifnot(n >= 0)
  
  if (n == 0) { 
      list()
  } else {
    lapply(0:(n-1), function(x) choose(x, 0:x))
  }
}
