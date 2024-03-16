tournament <- function(input) {
  results <- strsplit(input, ";")
  results <- results[sapply(results, length) == 3]   # Filter incomplete rows
  results <- do.call(rbind, results)
  results <- results[results[,3] %in% c("win", "loss", "draw"),] # Filter invalid results
  
  results[,3] <- results[,3] |>
    substr(1, 1) |>
    toupper() # So the matrix has the right column names
  
  results <- cbind(results, c("W"="L", "L"="W", "D"="D")[results[,3]])
  
  df <- table(c(results[,1], results[,2]), 
              c(results[,3], results[,4])) |>
    as.data.frame.matrix()
  
  df <- with(df, data.frame(Team=rownames(df), MP=(W+D+L), W, D, L, P=(3*W+D)))
  data.frame(df[order(-df$P, df$Team),], row.names = NULL)
}
