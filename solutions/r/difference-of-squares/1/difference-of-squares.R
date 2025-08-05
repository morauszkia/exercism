difference_of_squares <- function(n) {
  sum_of_squares = (n*(n+1)*(2*n+1)/6)
  square_of_sums = (n*(n+1)/2)^2
  
  square_of_sums - sum_of_squares
}