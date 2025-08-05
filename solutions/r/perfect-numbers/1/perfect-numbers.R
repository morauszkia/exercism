number_type <- function(n){
  # Edge cases
  if (n <= 0) stop("Please enter a natural number!")
  if (n <= 2) return("deficient")
  
  factor_vec <- 1
  # Starting from 2 so that the list does not contain n
  # Alternative: deleting n afterwards
  for (i in 2:floor(sqrt(n))) {
      if (n %% i == 0) {
        factor_vec <- c(factor_vec, i, n / i)
    }
  }
  
  factor_vec <- unique(factor_vec)
  
  if (sum(factor_vec) == n) "perfect"
  else if (sum(factor_vec) > n) "abundant"
  else "deficient"
}
