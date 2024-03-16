square <- function(n) {
  if (!n %in% 1:64) stop("Invalid value: please choose between 1 and 64")
  
  2^(n-1)
}

total <- function() {
  -(1-2^64)
}
