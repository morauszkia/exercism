scrabble_score <- function(input){
  characters <- input |>
    toupper()|> 
    strsplit("") |>
    unlist()
  
  scores <- c()
  
  scores[characters %in% c("A", "E", "I", "O", "U", "L", "N", "R", "S", "T")] <- 1
  scores[characters %in% c("D", "G")] <- 2
  scores[characters %in% c("B", "C", "M", "P")] <- 3
  scores[characters %in% c("F", "H", "V", "W", "Y")] <- 4
  scores[characters == "K"] <- 5
  scores[characters %in% c("J", "X")] <- 8
  scores[characters %in% c("Q", "Z")] <- 10
  
  sum(scores)
}
