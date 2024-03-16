difference_of_squares <- function(natural_number) {
  sum_of_squares = (natural_number*(natural_number+1)*(2*natural_number+1)/6)
  square_of_sums = (natural_number*(natural_number+1)/2)^2
  
  square_of_sums - sum_of_squares
}
