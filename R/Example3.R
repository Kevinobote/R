# Load lpSolve package
library(lpSolve)

# Define the objective function coefficients (minimization cost)
objective <- c(20, 30)

# Define the constraint matrix
constraints <- matrix(c(2, 1,    # Vitamin A constraint
                        1, 2),   # Vitamin B constraint
                      nrow = 2, byrow = TRUE)

# Right-hand side of constraints (minimum vitamin requirements)
rhs <- c(10, 10)

# Directions of the inequalities (greater than or equal to)
direction <- c(">=", ">=")

# Solve the linear program
solution <- lp("min", objective, constraints, direction, rhs)

# Output the results
cat("Optimal values (units to be used):\n")
cat("Alpha (units):", solution$solution[1], "\n")
cat("Beta (units):", solution$solution[2], "\n")
cat("Minimum cost:", solution$objval, "$\n")
