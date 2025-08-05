number_type <- function(n){
  stopifnot(n > 0) 
  
  factor_vec <- 1:sqrt(n)
  factor_vec <- factor_vec[n %% factor_vec == 0]
  factor_vec <- c(factor_vec, rev(n / factor_vec))

  # There is a duplication in case of square numbers
  factor_vec <- unique(factor_vec)
  # Remove n from factors
  factor_vec <- factor_vec[-length(factor_vec)]
  
  if (sum(factor_vec) == n) "perfect"
  else if (sum(factor_vec) > n) "abundant"
  else "deficient"
}
