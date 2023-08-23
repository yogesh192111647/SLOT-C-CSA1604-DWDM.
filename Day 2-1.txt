# Creating a matrix with the provided preference data
preferences <- matrix(c(22, 28, 10, 20, 40, 40), ncol = 3, byrow = TRUE)
rownames(preferences) <- c("5-6 years", "7-8 years", "9-10 years")
colnames(preferences) <- c("A", "B", "C")

# Print the matrix to verify its structure
cat("Preferences Matrix:\n")
print(preferences)

# Extract the columns B and C for calculations
col_B <- preferences[, "B"]
col_C <- preferences[, "C"]

# Calculate the sample covariance between B and C
cov_bc <- cov(col_B, col_C)
cat("Sample Covariance between B and C:\n", cov_bc, "\n")

# Calculate the sample covariance matrix for the preferences
cov_matrix <- cov(preferences)
cat("Sample Covariance Matrix for Preferences:\n")
print(cov_matrix)

# Calculate the sample correlation between B and C
cor_bc <- cor(col_B, col_C)
cat("Sample Correlation between B and C:\n", cor_bc, "\n")

# Calculate the sample correlation matrix for the preferences
cor_matrix <- cor(preferences)
cat("Sample Correlation Matrix for Preferences:\n")
print(cor_matrix)
