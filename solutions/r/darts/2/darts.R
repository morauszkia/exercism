CIRCLES = c(1, 5, 10, Inf)

score <- function(x, y) {
  c(10, 5, 1, 0)[which.max(sqrt(x^2+y^2) <= CIRCLES)]
}
