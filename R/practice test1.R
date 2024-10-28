library(lpSolve)

# Define the objective function coefficients
objective <- c(15, 11)

# Define the constraint coefficients matrix
constraints <- matrix(c(
  2, 1,
  9, 7
), nrow = 2, byrow = TRUE)

# Define the directions of the inequalities
directions <- c("<=", ">=")

# Define the right-hand side of the constraints
rhs <- c(22, 19)

# Solve the linear program
solution <- lp("max", objective, constraints, directions, rhs)

# Print the results
cat("Status:", solution$status, "\n") # Status 0 means optimal solution found
cat("Objective value (max z):", solution$objval, "\n")
cat("Values of x1, x2:", solution$solution, "\n")
