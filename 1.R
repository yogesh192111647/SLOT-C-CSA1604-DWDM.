intervals <- c(1, 5, 15, 20, 50, 80, 110)
frequencies <- c(200, 450, 300, 1500, 700, 44)

cumulative_freq <- cumsum(frequencies)


median_index <- which(cumulative_freq >= sum(frequencies) / 2)[1]

lower_bound <- intervals[median_index]
upper_bound <- intervals[median_index + 1]


midpoint <- lower_bound + (upper_bound - lower_bound) * (0.5 - cumulative_freq[median_index - 1]) / frequencies[median_index]

cat("Approximate median value:", midpoint, "\n")
