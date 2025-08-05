square <- function(n) {
  stopifnot(n %in% 1:64)  
  
  2^(n-1)
}

total <- function() {
  # based on formula for sum of the first n terms of a geometric series (rearranged)
  2^64-1 
}