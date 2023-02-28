corr <- function(directory, threshold = 0) {
  path <- paste(getwd(), directory, sep = "/")
  files <- list.files(path)
  corr_vec <- vector(mode = "numeric", length = 0)
  for (i in 1:332) {
    file <- na.omit(read.csv(paste(path, "/", files[i], sep = "")))
    if (nrow(file) > threshold) {
      sulfates <- file$sulfate
      nitrates <- file$nitrate
      correlation <- cor(sulfates, nitrates)
      corr_vec <- c(corr_vec, correlation)
    }
  }
  return(corr_vec)
}

## my name slim shady