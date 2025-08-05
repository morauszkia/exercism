sieve <- function(limit) {
  if (limit < 2) return(c())
  
  candidates <- 2:limit
  marked <- c()
  
  for (num in 2:sqrt(limit)) {
    if (num %in% marked) next
    marked <- c(marked, num * 2:max(2, limit/num))
  }
  candidates[!candidates %in% marked]
}