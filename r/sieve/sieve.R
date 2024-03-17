sieve <- function(limit) {
  if (limit < 2) return(c())
  
  is_prime <- rep(TRUE, limit)
  is_prime[1] <- FALSE
  
  for (num in 2:sqrt(limit)) {
    if (is_prime[num] && num^2 < limit) {
      is_prime[seq(num^2, limit, num)] <- FALSE
    }
  }
  which(is_prime)
}