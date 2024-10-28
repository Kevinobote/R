# Objective function coefficients
objective <- c(0.3, 0.4, 0.5)

# Coefficints for constraints
constraints <- matrix(c(1, 2, 3,  # Time contraint
                        1, 2, 0,  # Combined time contraint for A and B
                        1, 1, 1), # Bottle capacity contraint
                      nrow = 3, byrow = TRUE)
# Right-hand side of the contraints
rhs <- c(150, 90, 120)

# Direction of the inequalities
direction <- c("<=", "<=", "<=")

# Solve the linear program
solution <- lp(direction = "min",
               objective.in = objective,
               const.mat = constraints,
               const.dir = direction,
               const.rhs = rhs,
               all.int = TRUE) # Set all.int = TRUE if integer values are required for the variables

# Check the solution
solution

# Optimal values of decision variables (number of bottles to deliver in areas A, B, C)
cat("Number of bottles to deliver in each area:\n")
cat("Area A:", solution$solution[1], "\n")
cat("Area B:", solution$solution[2], "\n")
cat("Area C:", solution$solution[3], "\n")

# Minimum cost
cat("Minimum delivery cost:", solution$objval, "paisa\n")
