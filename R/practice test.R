# Load the lpSolve package
install.packages("lpSolve")
library(lpSolve)

# Define the objective function coefficients
objective <- c(40, 16, 240)

# Define the constraint coefficients matrix
constraints <- matrix(c(
  2, 18, 24,
  4, 18, 12
), nrow = 2, byrow = TRUE)

# Define the directions of the inequalities
directions <- c(">=", ">=")

# Define the right-hand side of the constraints
rhs <- c(160, 200)

# Solve the linear program
solution <- lp("min", objective, constraints, directions, rhs)

# Print the results
cat("Status:", solution$status, "\n") # Status 0 means optimal solution found
cat("Objective value (min w):", solution$objval, "\n")
cat("Values of y1, y2, y3:", solution$solution, "\n")
