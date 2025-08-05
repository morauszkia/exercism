reverse <- function(text) {
    paste(rev(strsplit(text, split="")[[1]]), collapse="")
}