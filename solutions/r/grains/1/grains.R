square <- function(n) {
  if (!n %in% 1:64) stop("Invalid value: please choose between 1 and 64")
  
  2^(n-1)
}

total <- function() {
  # based on formula for sum of the first n terms of a geometric series (rearranged)
  -(1-2^64) 
}