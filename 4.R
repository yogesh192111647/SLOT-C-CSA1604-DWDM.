# Given data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Function to perform bin smoothing using mean
bin_mean_smooth <- function(data, bin_size) {
  smoothed_data <- numeric(length = length(data))
  for (i in seq_len(length(data))) {
    lower <- max(1, i - bin_size + 1)
    upper <- min(length(data), i + bin_size - 1)
    smoothed_data[i] <- mean(data[lower:upper])
  }
  return(smoothed_data)
}

# Function to perform bin smoothing using median
bin_median_smooth <- function(data, bin_size) {
  smoothed_data <- numeric(length = length(data))
  for (i in seq_len(length(data))) {
    lower <- max(1, i - bin_size + 1)
    upper <- min(length(data), i + bin_size - 1)
    smoothed_data[i] <- median(data[lower:upper])
  }
  return(smoothed_data)
}

# Function to perform bin smoothing using boundaries
bin_boundaries_smooth <- function(data, bin_size) {
  smoothed_data <- numeric(length = length(data))
  for (i in seq_len(length(data))) {
    lower <- max(1, i - bin_size + 1)
    upper <- min(length(data), i + bin_size - 1)
    smoothed_data[i] <- (data[lower] + data[upper]) / 2
  }
  return(smoothed_data)
}

# Bin size for smoothing
bin_size <- 3

# Perform smoothing using different methods
smoothed_mean <- bin_mean_smooth(data, bin_size)
smoothed_median <- bin_median_smooth(data, bin_size)
smoothed_boundaries <- bin_boundaries_smooth(data, bin_size)

# Print the smoothed data
cat("Smoothing by bin mean:\n")
print(smoothed_mean)

cat("Smoothing by bin median:\n")
print(smoothed_median)

cat("Smoothing by bin boundaries:\n")
print(smoothed_boundaries)
