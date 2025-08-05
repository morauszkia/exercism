sieve <- function(limit) {
  if (limit < 2) return(c())
  
  is_prime <- rep(TRUE, limit)
  is_prime[1] <- FALSE
  
  for (num in 2:sqrt(limit)) {
    # Another optimalization: first multiple that needs to be checked is num^2 
    # Learned from ErikSchierboom
    # Second check gets rid of the issue with limit=2
    if (is_prime[num] && num^2 < limit) {
      is_prime[seq(num^2, limit, num)] <- FALSE
    }
  }

  which(is_prime)
}