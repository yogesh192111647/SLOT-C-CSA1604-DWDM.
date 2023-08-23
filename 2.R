# Given data
age_data <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# Mean
mean_age <- mean(age_data)
cat("Mean:", mean_age, "\n")

# Median
median_age <- median(age_data)
cat("Median:", median_age, "\n")

# Mode
mode_age <- as.numeric(names(table(age_data)[table(age_data) == max(table(age_data))]))
cat("Mode:", mode_age, "\n")

# Modality
modality <- length(table(age_data))
if (modality == 1) {
  cat("Data is unimodal (one mode)\n")
} else {
  cat("Data is", modality, "modal\n")
}

# Midrange
midrange_age <- (max(age_data) + min(age_data)) / 2
cat("Midrange:", midrange_age, "\n")

# Quartiles
q1 <- quantile(age_data, 0.25)
q3 <- quantile(age_data, 0.75)
cat("First Quartile (Q1):", q1, "\n")
cat("Third Quartile (Q3):", q3, "\n")
