

# === Fix duplicated column names for all data frames ===
Psi_bplot1 <- data.frame(
  ECME_1 = pad_to_100(ecme1$theta_error), MCMC_1 = mcmc1$theta_error,
  ECME_2 = pad_to_100(ecme2$theta_error), MCMC_2 = mcmc2$theta_error,
  ECME_3 = pad_to_100(ecme3$theta_error), MCMC_3 = mcmc3$theta_error
)

Psi_bplot2 <- data.frame(
  ECME_1 = pad_to_100(ecme4$theta_error), MCMC_1 = mcmc4$theta_error,
  ECME_2 = pad_to_100(ecme5$theta_error), MCMC_2 = mcmc5$theta_error,
  ECME_3 = pad_to_100(ecme6$theta_error), MCMC_3 = mcmc6$theta_error
)

Psi_bplot3 <- data.frame(
  ECME_1 = pad_to_100(ecme7$theta_error), MCMC_1 = mcmc7$theta_error,
  ECME_2 = pad_to_100(ecme8$theta_error), MCMC_2 = mcmc8$theta_error,
  ECME_3 = pad_to_100(ecme9$theta_error), MCMC_3 = mcmc9$theta_error
)

Psi_bplot4 <- data.frame(
  ECME_1 = pad_to_100(ecme10$theta_error), MCMC_1 = mcmc10$theta_error,
  ECME_2 = pad_to_100(ecme11$theta_error), MCMC_2 = mcmc11$theta_error,
  ECME_3 = pad_to_100(ecme12$theta_error), MCMC_3 = mcmc12$theta_error
)

Psi_bplot5 <- data.frame(
  ECME_1 = pad_to_100(ecme13$theta_error), MCMC_1 = mcmc13$theta_error,
  ECME_2 = pad_to_100(ecme14$theta_error), MCMC_2 = mcmc14$theta_error,
  ECME_3 = pad_to_100(ecme15$theta_error), MCMC_3 = mcmc15$theta_error
)

Psi_bplot6 <- data.frame(
  ECME_1 = pad_to_100(ecme16$theta_error), MCMC_1 = mcmc16$theta_error,
  ECME_2 = pad_to_100(ecme17$theta_error), MCMC_2 = mcmc17$theta_error,
  ECME_3 = pad_to_100(ecme18$theta_error), MCMC_3 = mcmc18$theta_error
)

Psi_bplot7 <- data.frame(
  ECME_1 = pad_to_100(ecme19$theta_error), MCMC_1 = mcmc19$theta_error,
  ECME_2 = pad_to_100(ecme20$theta_error), MCMC_2 = mcmc20$theta_error,
  ECME_3 = pad_to_100(ecme21$theta_error), MCMC_3 = mcmc21$theta_error
)

Psi_bplot8 <- data.frame(
  ECME_1 = pad_to_100(ecme22$theta_error), MCMC_1 = mcmc22$theta_error,
  ECME_2 = pad_to_100(ecme23$theta_error), MCMC_2 = mcmc23$theta_error,
  ECME_3 = pad_to_100(ecme24$theta_error), MCMC_3 = mcmc24$theta_error
)

Psi_bplot9 <- data.frame(
  ECME_1 = pad_to_100(ecme25$theta_error), MCMC_1 = mcmc25$theta_error,
  ECME_2 = pad_to_100(ecme26$theta_error), MCMC_2 = mcmc26$theta_error,
  ECME_3 = pad_to_100(ecme27$theta_error), MCMC_3 = mcmc27$theta_error
)

# === Save PDF ===
pdf("Theta_Boxplots_3x3_Landscape10.pdf", width = 14, height = 8)

# === List of dataframes ===
psi_list <- list(Psi_bplot1, Psi_bplot2, Psi_bplot3,
                 Psi_bplot4, Psi_bplot5, Psi_bplot6,
                 Psi_bplot7, Psi_bplot8, Psi_bplot9)

# === Plot layout ===
par(mfrow = c(3, 3), mar = c(4, 4, 2, 1),
    cex.main = 0.8, cex.lab = 0.8, cex.axis = 0.7)

# === Color shades for ECME and MCMC ===
method_colors <- rep(c("gray50", "gray70"), 3)

# === Panel titles ===
panel_titles <- c(
  "(a) d=2 and n=200", "(b) d=2 and n=500", "(c) d=2 and n=1000",
  "(a) d=3 and n=200", "(b) d=3 and n=500", "(c) d=3 and n=1000",
  "(a) d=5 and n=200", "(b) d=5 and n=500", "(c) d=5 and n=1000"
)

# === Loop through plots ===
for (i in 1:9) {
  data <- psi_list[[i]]
  
  # Define group names for each method and run
  full_labels <- c("ECME 0.7", "MCMC 0.7",
                   "ECME 0.8", "MCMC 0.8",
                   "ECME 0.9", "MCMC 0.9")
  
  theta_values <- unlist(data)
  group_factor <- factor(rep(full_labels, each = nrow(data)), levels = full_labels)
  
  boxplot(theta_values ~ group_factor,
          col = method_colors,
          las = 2,
          main = panel_titles[i],
          xlab = "",
          ylab = expression("|" * theta - hat(theta) * "|"))
}

dev.off()
