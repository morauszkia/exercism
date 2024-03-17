number_type <- function(n){
  stopifnot(n > 0) 
  
  factor_vec <- 1:sqrt(n)
  factor_vec <- factor_vec[n %% factor_vec == 0]
  factor_vec <- c(factor_vec, n / factor_vec)
  factor_vec <- unique(factor_vec)
  factor_vec <- factor_vec[factor_vec != n]
  
  if (sum(factor_vec) == n) "perfect"
  else if (sum(factor_vec) > n) "abundant"
  else "deficient"
}

number_type(4)
