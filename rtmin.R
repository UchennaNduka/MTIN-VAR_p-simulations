library(mvtnorm)

# Function to generate MTIN-distributed errors (fixed)
rmtin <- function(n, mu, Omega, theta) {
  d <- length(mu)
  w <- runif(n, 1 - theta, 1)
  t(sapply(w, function(wi) rmvnorm(1, mu, Omega/wi)))  # Transpose to get row vectors
}

# Modified data generation with MTIN errors
set.seed(123)

# System dimensions
d <- 2  # Number of time series components
p <- 1  # VAR order
n <- 500  # Number of observations

# True parameters (VAR(1) example)
true_Psi <- cbind(
  c(0.5, -0.2),    # Intercept μ (d × 1)
  c(0.1, 0.3),     # Φ₁ (first column of coefficient matrix)
  c(-0.05, 0.08)   # Φ₁ (second column of coefficient matrix)
)  # Dimensions: d × (d*p + 1) = 2 × 3

true_Omega <- matrix(c(1, 0.5, 0.5, 1), ncol = d)
true_theta <- 0.7

# Initialize time series matrix
Y <- matrix(0, n, d)
Y[1, ] <- rnorm(d)  # Starting values

# Generate VAR(p) data with MTIN innovations
for (t in 2:n) {
  # Construct lagged vector x_{t-1} = [1, y_{t-1}^T]^T
  x_prev <- c(1, Y[t - 1, ])  # Length = 1 + d*p = 3
  
  # Compute mean term (transposed to row vector)
  mean_term <- t(true_Psi %*% matrix(x_prev, ncol = 1))  # 1 × d
  
  # Generate MTIN error term (row vector)
  error_term <- rmtin(1, mu = rep(0, d), Omega = true_Omega, theta = true_theta)  # 1 × d
  
  # Update observation (both terms now 1 × d)
  Y[t, ] <- mean_term + error_term
}
