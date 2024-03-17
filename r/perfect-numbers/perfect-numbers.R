number_type <- function(n){
  stopifnot(n > 0)
  
  factor_vec <- c()
  for (i in 1:floor(sqrt(n))) {
      if (n %% i == 0) {
        factor_vec <- c(factor_vec, i, n / i)
    }
  }

  factor_vec <- unique(factor_vec)
  factor_vec <- factor_vec[factor_vec != n]

  if (sum(factor_vec) == n) "perfect"
  else if (sum(factor_vec) > n) "abundant"
  else "deficient"
}

