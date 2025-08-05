collatz_step_counter <- function(num) {
  if (length(num) > 1) {
    sapply(num, collatz_step_counter)
  } else {
    if (num <= 0) stop("Number should be a natural number.")

    steps <- 0
    while (num != 1) {
      if (num %% 2 == 1) num <- 3 * num + 1
      else num <- num / 2
      steps <- steps + 1
    }
  steps  
  }
}
