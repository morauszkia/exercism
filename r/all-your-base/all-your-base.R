
rebase <- function(from_base, digits, to_base) {
  stopifnot(
    "input base must be >= 2" = from_base >= 2,
    "output base must be >= 2" = to_base >= 2,
    "all digits must satisfy 0 <= d < input base" = all(digits >= 0) & all(digits < from_base)
  )
  
  if (length(digits) == 0 | all(digits == 0)) { return(0) }
  
  num <- sum(digits * from_base ^ (length(digits):1 - 1))
  
  rebased <- c()
  while (num > 0) {
    rebased <- c(num %% to_base, rebased)
    num <- num %/% to_base
  }
  
  rebased
}
