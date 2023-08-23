# Given data
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

# Number of bins for partitioning
num_bins_ef <- 3
num_bins_ew <- 3

# (a) Equal-Frequency (Equi-Depth) Partitioning
marks_ef_bins <- cut(marks, breaks = num_bins_ef, labels = FALSE)

# (b) Equal-Width Partitioning
marks_ew_bins <- cut(marks, breaks = num_bins_ew, labels = FALSE)

# Load the necessary library for plotting
library(ggplot2)

# Create a data frame for the histograms
data_ef <- data.frame(Marks = marks, Bins = factor(marks_ef_bins))
data_ew <- data.frame(Marks = marks, Bins = factor(marks_ew_bins))

# Plot histograms for both methods
histogram_ef <- ggplot(data_ef, aes(x = Marks, fill = Bins)) +
  geom_histogram(binwidth = 10, position = "identity") +
  labs(title = "Histogram (Equal-Frequency Partitioning)",
       x = "Marks",
       y = "Frequency") +
  theme_minimal()

histogram_ew <- ggplot(data_ew, aes(x = Marks, fill = Bins)) +
  geom_histogram(binwidth = 10, position = "identity") +
  labs(title = "Histogram (Equal-Width Partitioning)",
       x = "Marks",
       y = "Frequency") +
  theme_minimal()

# Display histograms
print(histogram_ef)
print(histogram_ew)
