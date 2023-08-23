# Given value
age_value <- 35

# (i) Min-Max Normalization
min_age <- 0
max_age <- 1

min_max_normalized <- (age_value - min_age) / (max_age - min_age)
cat("Min-Max Normalization:", min_max_normalized, "\n")

# (ii) Z-Score Normalization
mean_age <- 0  # Assuming mean age is 0 for simplicity
std_dev_age <- 12.94

z_score_normalized <- (age_value - mean_age) / std_dev_age
cat("Z-Score Normalization:", z_score_normalized, "\n")

# (iii) Normalization by Decimal Scaling
scale_factor <- 10

decimal_scaled <- age_value / scale_factor
cat("Normalization by Decimal Scaling:", decimal_scaled, "\n")
