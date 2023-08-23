data <- c(200, 300, 400, 600, 1000)


min_max_normalize <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

min_max_normalized <- min_max_normalize(data)
cat("Min-Max Normalization:")
print(min_max_normalized)


z_score_normalize <- function(x) {
  (x - mean(x)) / sd(x)
}

z_score_normalized <- z_score_normalize(data)
cat("Z-Score Normalization:")
print(z_score_normalized)
