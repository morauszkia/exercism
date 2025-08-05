handshake <- function(n) {
  filter <- intToBits(n)[1:5] |>
    as.logical()
  
  actions <- c("wink", "double blink", "close your eyes", "jump")
  
  if (all(!filter[1:4])) NULL
  else if (filter[5]) rev(actions[filter[1:4]]) 
  else actions[filter[1:4]]
}