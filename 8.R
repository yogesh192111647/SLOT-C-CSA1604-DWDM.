# Given data
x_values <- c(4, 1, 5, 7, 10, 2, 50, 25, 90, 36)
y_values <- c(12, 5, 13, 19, 31, 7, 153, 72, 275, 110)

# Load the necessary library for plotting
library(ggplot2)

# Create a data frame from the data
data_df <- data.frame(x = x_values, y = y_values)

# Create a scatter plot
ggplot(data_df, aes(x, y)) +
  geom_point(color = "blue") +
  labs(title = "Scatter Plot of Mobile Phones Sold",
       x = "Number of Mobile Phones Sold",
       y = "Money") +
  theme_minimal()
