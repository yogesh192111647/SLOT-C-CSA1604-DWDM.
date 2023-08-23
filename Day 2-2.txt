# Given dataset
data <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30)

# (i) Equal-frequency partitioning with bin count of 3
bin_count <- 3
partitioned_data <- cut(data, breaks = bin_count, labels = FALSE)

# (ii) Data smoothing using bin means and bin boundaries
bin_means <- tapply(data, partitioned_data, mean)
bin_boundaries <- unique(c(min(data), max(data)))
smoothed_data_means <- bin_means[partitioned_data]

bin_boundaries <- unique(c(min(data), max(data)))
smoothed_data_boundaries <- bin_boundaries[partitioned_data]

# (iii) Plot Histogram
hist(data, breaks = bin_boundaries, main = "Histogram of Data", xlab = "Values")
