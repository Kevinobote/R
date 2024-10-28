# Simplex Method for Linear Programming in R

## Overview

This README introduces the Simplex Method, a popular algorithm for solving linear programming problems in **R**. Linear programming optimizes an objective function, such as maximizing or minimizing a specific outcome, within a set of linear constraints. This technique is broadly applicable in fields like operations research, economics, engineering, and logistics.

## Objective

The Simplex Method is designed to find values for decision variables that yield the optimal solution for an objective function while meeting linear constraints. The algorithm systematically examines the feasible region defined by these constraints, iteratively improving toward the optimal solution.

## Approach

1. **Convert to Standard Form**: First, convert the inequalities to equalities by adding slack variables, transforming the problem to standard form.

2. **Set Up the Initial Tableau**: Use the coefficients of the objective function and constraints to construct an initial tableau, which will facilitate applying the Simplex algorithm.

3. **Iterate with Pivot Operations**: Through a series of pivot steps, the tableau is updated to progressively optimize the objective function, with each iteration aiming to improve the outcome.

4. **Identify the Optimal Solution**: The algorithm continues until no further improvements can be made. The final tableau will reveal the optimal values of the decision variables and the maximum (or minimum) objective function value.

## Packages Required

To implement the Simplex Method in R, the following packages are useful:

- **`lpSolve`**: Provides functions for linear programming, including the Simplex Method for optimization problems.
- **`tidyverse`**: A collection of packages (such as `dplyr` and `tidyr`) that help manipulate and analyze data in R.
- **`matrixcalc`**: Useful for matrix manipulations, which are integral to setting up and updating the Simplex tableau.
- **`pracma`**: A numerical analysis package with functions for matrix operations and other mathematical computations.
- **`ROI`** and **`ROI.plugin.glpk`**: The R Optimization Infrastructure (ROI) package and its GLPK plugin support a range of optimization tasks, including linear programming with Simplex.

To install these packages, use:

```R
install.packages(c("lpSolve", "tidyverse", "matrixcalc", "pracma", "ROI", "ROI.plugin.glpk"))
```

## Implementing the Simplex Method in R

After setting up the environment with these packages, follow these general steps in R:

1. **Define the Objective and Constraints**: Use the relevant packages to define the coefficients of the objective function and constraints.

2. **Set Up the Tableau**: Prepare the initial tableau, incorporating slack variables as needed.

3. **Run the Simplex Algorithm**: Use pivot operations in a loop to update the tableau until the optimal solution is reached.

4. **Interpret the Solution**: Extract and interpret the values of decision variables and the objective function from the final tableau.

This approach provides a structured and efficient framework for solving linear programming problems in R using the Simplex Method.