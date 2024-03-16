library(dplyr)

tournament <- function(input) {
  team <- c()
  points <- c()
  
  for (game in strsplit(input, ";")) {
    if (length(game) != 3) next
    if (!game[3] %in% c("win", "loss", "draw")) next
    
    team <- c(team, game[1:2])
    points <- c(points, switch(game[3], "win"=c(3, 0), "loss"=c(0, 3), "draw"=c(1, 1)))
  }
  
  data.frame(Team = team, points = points) %>% 
    group_by(Team) %>% 
    summarise(MP=n(), W=sum(points==3), D=sum(points==1), L=sum(points==0), P=sum(points)) %>% 
    arrange(desc(P), Team) %>% 
    as.data.frame()
}
