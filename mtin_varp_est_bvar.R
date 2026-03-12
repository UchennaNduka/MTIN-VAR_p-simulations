mtin_varp_using_BVAR <- function(Data, p) {
  if (!requireNamespace("BVAR", quietly = TRUE)) stop("Package 'BVAR' is required.")
  library(BVAR)

  # Prepare data
  Data_df <- as.data.frame(Data)
  colnames(Data_df) <- paste0("Y", 1:ncol(Data_df))

  # Fit Bayesian VAR model
  bvar_model <- bvar(Data_df, lags = p, n_draw = 5000, n_burn = 1000, verbose = FALSE)

  # === Extract coefficient draws ===
  coef_array <- bvar_model$beta  # shape: (draws, k, m), where
                                 # k = number of coefficients per equation (including intercept)
                                 # m = number of dependent variables

  # Compute posterior mean across draws
  coef_mean <- apply(coef_array, c(2, 3), mean)  # matrix of size k x m
  Psi_hat_raw <- t(coef_mean)  # d x (d*p + 1), intercept is last column

  d <- ncol(Data)

  # Reorder: move intercept column to front
  Psi_hat <- cbind(Psi_hat_raw[, ncol(Psi_hat_raw)],  # intercept
                   Psi_hat_raw[, -ncol(Psi_hat_raw)]) # AR coefficients

  # Residual covariance (posterior mean)
  Omega_hat <- apply(bvar_model$sigma, c(2, 3), mean)  # dim = (m x m)

  # === True parameters ===
  set.seed(123)
  intercept <- matrix(runif(d, -0.5, 0.5), nrow = d)
  AR_coefs <- array(runif(d * d * p, -0.5, 0.5), dim = c(d, d * p))
  true_Psi <- cbind(intercept, AR_coefs)

  true_Omega <- diag(d)
  true_Omega[lower.tri(true_Omega)] <- 0.3
  true_Omega <- true_Omega + t(true_Omega) - diag(diag(true_Omega))

  # === Frobenius norm errors ===
  frob_Psi_errors <- norm(Psi_hat - true_Psi, type = "F")
  frob_Omega_errors <- norm(Omega_hat - true_Omega, type = "F")

  results <- cbind(
    Psi_norm = frob_Psi_errors,
    Omega_norm = frob_Omega_errors
    )

  return(results)
}

#result_bvar <- mtin_varp_using_BVAR(simulated_data$data[,,1], p = 2)
#print(result_bvar)
