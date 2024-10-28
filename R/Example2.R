# Load lpSolve package
library(lpSolve)

# Define the objective function coefficients
objective <- c(7400, 8320, 7500)

# Define the constraint matrix
constraints <- matrix(c(1, 1, 1,       # Land constraint
                        10, 12, 10),   # Labor constraint
                      nrow = 2, byrow = TRUE)

# Right-hand side of constraints
rhs <- c(200, 20000)

# Directions of the inequalities
direction <- c("<=", "<=")

# Solve the linear program
solution <- lp("max", objective, constraints, direction, rhs)

# Output the results
cat("Optimal values (acres allocated):\n")
cat("X (acres for product X):", solution$solution[1], "\n")
cat("Y (acres for product Y):", solution$solution[2], "\n")
cat("Z (acres for product Z):", solution$solution[3], "\n")
cat("Maximum profit:", solution$objval, "Rs\n")
