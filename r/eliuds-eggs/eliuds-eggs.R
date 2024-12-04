egg_count <- function(display_value) {
  eggs <- 0
  while (display_value > 0) {
    eggs <- eggs + (display_value %% 2)
    display_value <- display_value %/% 2
  }
  eggs
}
