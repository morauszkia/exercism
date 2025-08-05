is_isogram <- function(word) {
  chars <- word |> 
    tolower() |> 
    gsub("[^a-z]", "", x=_) |>
    strsplit("") |> 
    unlist()
  
  return(length(chars) == length(unique(chars))) 
}