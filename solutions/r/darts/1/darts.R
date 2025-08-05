score <- function(x, y) {
  distance = sqrt(x^2 + y^2)
  if (distance > 10) { 0 }
  else if (distance > 5) { 1 }
  else if (distance > 1) { 5 }
  else { 10 }
}
