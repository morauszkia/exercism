is_isogram <- function(word) {
  chars <- word |> 
    tolower() |> 
    gsub("[^a-z]", "", x=_) |>
    strsplit("") |> 
    unlist()
  
  if (length(chars) < 2) { return(TRUE) }
  
  for (i in 2:length(chars)) {
    if (chars[i] %in% chars[1 : (i - 1)]) { return(FALSE) }
  }
  return(TRUE)
}
