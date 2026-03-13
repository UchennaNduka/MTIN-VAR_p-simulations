bvar1 <- read.csv("bvar_mtin_var_p=2_d=2_n=200_theta=07.csv", header=T)
ecme1 <- read.csv("ecme_s1_detailed.csv", header=T)
mcmc1 <- read.csv("bayesian_s1_detailed.csv", header=T)
olls1 <- read.csv("ols_mtin_var_p=2_d=2_n=200_theta=07.csv", header=T)

bvar2 <- read.csv("bvar_mtin_var_p=2_d=2_n=200_theta=08.csv", header=T)
ecme2 <- read.csv("ecme_s4_detailed.csv", header=T)
mcmc2 <- read.csv("bayesian_s4_detailed.csv", header=T)
olls2 <- read.csv("ols_mtin_var_p=2_d=2_n=200_theta=08.csv", header=T)

bvar3 <- read.csv("bvar_mtin_var_p=2_d=2_n=200_theta=09.csv", header=T)
ecme3 <- read.csv("ecme_s7_detailed.csv", header=T)
mcmc3 <- read.csv("bayesian_s7_detailed.csv", header=T)
olls3 <- read.csv("ols_mtin_var_p=2_d=2_n=200_theta=09.csv", header=T)


bvar4 <- read.csv("bvar_mtin_var_p=2_d=2_n=500_theta=07.csv", header=T)
ecme4 <- read.csv("ecme_s10_detailed.csv", header=T)
mcmc4 <- read.csv("bayesian_s10_detailed.csv", header=T)
olls4 <- read.csv("ols_mtin_var_p=2_d=2_n=500_theta=07.csv", header=T)

bvar5 <- read.csv("bvar_mtin_var_p=2_d=2_n=500_theta=08.csv", header=T)
ecme5 <- read.csv("ecme_s13_detailed.csv", header=T)
mcmc5 <- read.csv("bayesian_s13_detailed.csv", header=T)
olls5 <- read.csv("ols_mtin_var_p=2_d=2_n=500_theta=08.csv", header=T)

bvar6 <- read.csv("bvar_mtin_var_p=2_d=2_n=500_theta=09.csv", header=T)
ecme6 <- read.csv("ecme_s16_detailed.csv", header=T)
mcmc6 <- read.csv("bayesian_s16_detailed.csv", header=T)
olls6 <- read.csv("ols_mtin_var_p=2_d=2_n=500_theta=09.csv", header=T)

bvar7 <- read.csv("bvar_mtin_var_p=2_d=2_n=1000_theta=07.csv", header=T)
ecme7 <- read.csv("ecme_s19_detailed.csv", header=T)
mcmc7 <- read.csv("bayesian_s19_detailed.csv", header=T)
olls7 <- read.csv("ols_mtin_var_p=2_d=2_n=1000_theta=07.csv", header=T)

bvar8 <- read.csv("bvar_mtin_var_p=2_d=2_n=1000_theta=08.csv", header=T)
ecme8 <- read.csv("ecme_s22_detailed.csv", header=T)
mcmc8 <- read.csv("bayesian_s22_detailed.csv", header=T)
olls8 <- read.csv("ols_mtin_var_p=2_d=2_n=1000_theta=08.csv", header=T)

bvar9 <- read.csv("bvar_mtin_var_p=2_d=2_n=1000_theta=09.csv", header=T)
ecme9 <- read.csv("ecme_s25_detailed.csv", header=T)
mcmc9 <- read.csv("bayesian_s25_detailed.csv", header=T)
olls9 <- read.csv("ols_mtin_var_p=2_d=2_n=1000_theta=09.csv", header=T)


pad_to_100 <- function(x) {
  if (length(x) >= 100) {
    return(x[1:100])
  } else {
    return(c(x, rep(NA, 100 - length(x))))
  }
}

Omega_bplot1 <- data.frame(BVAR=bvar1$Omega_norm, 
				 ECME=pad_to_100(ecme1$Omega_norm), 
				 MCMC=mcmc1$Omega_norm, 
				 OLS=olls1$Omega_norm,
				 BVAR=bvar2$Omega_norm, 
				 ECME=pad_to_100(ecme2$Omega_norm), 
				 MCMC=mcmc2$Omega_norm, 
				 OLS=olls2$Omega_norm,
				 BVAR=bvar3$Omega_norm, 
				 ECME=pad_to_100(ecme3$Omega_norm), 
				 MCMC=mcmc3$Omega_norm, 
				 OLS=olls3$Omega_norm
				) 

Omega_bplot2 <- data.frame(BVAR=bvar4$Omega_norm, 
				 ECME=pad_to_100(ecme4$Omega_norm), 
				 MCMC=mcmc4$Omega_norm, 
				 OLS=olls4$Omega_norm,
				 BVAR=bvar5$Omega_norm, 
				 ECME=pad_to_100(ecme5$Omega_norm), 
				 MCMC=mcmc5$Omega_norm, 
				 OLS=olls5$Omega_norm,
				 BVAR=bvar6$Omega_norm, 
				 ECME=pad_to_100(ecme6$Omega_norm), 
				 MCMC=mcmc6$Omega_norm, 
				 OLS=olls6$Omega_norm
				) 

Omega_bplot3 <- data.frame(BVAR=bvar7$Omega_norm, 
				 ECME=pad_to_100(ecme7$Omega_norm), 
				 MCMC=mcmc7$Omega_norm, 
				 OLS=olls7$Omega_norm,
				 BVAR=bvar8$Omega_norm, 
				 ECME=pad_to_100(ecme8$Omega_norm), 
				 MCMC=mcmc8$Omega_norm, 
				 OLS=olls8$Omega_norm,
				 BVAR=bvar9$Omega_norm, 
				 ECME=pad_to_100(ecme9$Omega_norm), 
				 MCMC=mcmc9$Omega_norm, 
				 OLS=olls9$Omega_norm
				) 

bvar10 <- read.csv("bvar_mtin_var_p=2_d=3_n=200_theta=07.csv", header=T)
ecme10 <- read.csv("ecme_s2_detailed.csv", header=T)
mcmc10 <- read.csv("bayesian_s2_detailed.csv", header=T)
olls10 <- read.csv("ols_mtin_var_p=2_d=3_n=200_theta=07.csv", header=T)

bvar11 <- read.csv("bvar_mtin_var_p=2_d=3_n=200_theta=08.csv", header=T)
ecme11 <- read.csv("ecme_s5_detailed.csv", header=T)
mcmc11 <- read.csv("bayesian_s5_detailed.csv", header=T)
olls11 <- read.csv("ols_mtin_var_p=2_d=3_n=200_theta=08.csv", header=T)

bvar12 <- read.csv("bvar_mtin_var_p=2_d=3_n=200_theta=09.csv", header=T)
ecme12 <- read.csv("ecme_s8_detailed.csv", header=T)
mcmc12 <- read.csv("bayesian_s8_detailed.csv", header=T)
olls12 <- read.csv("ols_mtin_var_p=2_d=3_n=200_theta=09.csv", header=T)


bvar13 <- read.csv("bvar_mtin_var_p=2_d=3_n=500_theta=07.csv", header=T)
ecme13 <- read.csv("ecme_s11_detailed.csv", header=T)
mcmc13 <- read.csv("bayesian_s11_detailed.csv", header=T)
olls13 <- read.csv("ols_mtin_var_p=2_d=3_n=500_theta=07.csv", header=T)

bvar14 <- read.csv("bvar_mtin_var_p=2_d=3_n=500_theta=08.csv", header=T)
ecme14 <- read.csv("ecme_s14_detailed.csv", header=T)
mcmc14 <- read.csv("bayesian_s14_detailed.csv", header=T)
olls14 <- read.csv("ols_mtin_var_p=2_d=3_n=500_theta=08.csv", header=T)

bvar15 <- read.csv("bvar_mtin_var_p=2_d=3_n=500_theta=09.csv", header=T)
ecme15 <- read.csv("ecme_s17_detailed.csv", header=T)
mcmc15 <- read.csv("bayesian_s17_detailed.csv", header=T)
olls15 <- read.csv("ols_mtin_var_p=2_d=3_n=500_theta=09.csv", header=T)

bvar16 <- read.csv("bvar_mtin_var_p=2_d=3_n=1000_theta=07.csv", header=T)
ecme16 <- read.csv("ecme_s20_detailed.csv", header=T)
mcmc16 <- read.csv("bayesian_s20_detailed.csv", header=T)
olls16 <- read.csv("ols_mtin_var_p=2_d=3_n=1000_theta=07.csv", header=T)

bvar17 <- read.csv("bvar_mtin_var_p=2_d=3_n=1000_theta=08.csv", header=T)
ecme17 <- read.csv("ecme_s23_detailed.csv", header=T)
mcmc17 <- read.csv("bayesian_s23_detailed.csv", header=T)
olls17 <- read.csv("ols_mtin_var_p=2_d=3_n=1000_theta=08.csv", header=T)

bvar18 <- read.csv("bvar_mtin_var_p=2_d=3_n=1000_theta=09.csv", header=T)
ecme18 <- read.csv("ecme_s26_detailed.csv", header=T)
mcmc18 <- read.csv("bayesian_s26_detailed.csv", header=T)
olls18 <- read.csv("ols_mtin_var_p=2_d=3_n=1000_theta=09.csv", header=T)



Omega_bplot4 <- data.frame(BVAR=bvar10$Omega_norm, 
				 ECME=pad_to_100(ecme10$Omega_norm), 
				 MCMC=mcmc10$Omega_norm, 
				 OLS=olls10$Omega_norm,
				 BVAR=bvar11$Omega_norm, 
				 ECME=pad_to_100(ecme11$Omega_norm), 
				 MCMC=mcmc11$Omega_norm, 
				 OLS=olls11$Omega_norm,
				 BVAR=bvar12$Omega_norm, 
				 ECME=pad_to_100(ecme12$Omega_norm), 
				 MCMC=mcmc12$Omega_norm, 
				 OLS=olls12$Omega_norm
				) 

Omega_bplot5 <- data.frame(BVAR=bvar13$Omega_norm, 
				 ECME=pad_to_100(ecme13$Omega_norm), 
				 MCMC=mcmc13$Omega_norm, 
				 OLS=olls13$Omega_norm,
				 BVAR=bvar14$Omega_norm, 
				 ECME=pad_to_100(ecme14$Omega_norm), 
				 MCMC=mcmc14$Omega_norm, 
				 OLS=olls14$Omega_norm,
				 BVAR=bvar15$Omega_norm, 
				 ECME=pad_to_100(ecme15$Omega_norm), 
				 MCMC=mcmc15$Omega_norm, 
				 OLS=olls15$Omega_norm
				) 

Omega_bplot6 <- data.frame(BVAR=bvar16$Omega_norm, 
				 ECME=pad_to_100(ecme16$Omega_norm), 
				 MCMC=mcmc16$Omega_norm, 
				 OLS=olls16$Omega_norm,
				 BVAR=bvar17$Omega_norm, 
				 ECME=pad_to_100(ecme17$Omega_norm), 
				 MCMC=mcmc17$Omega_norm, 
				 OLS=olls17$Omega_norm,
				 BVAR=bvar18$Omega_norm, 
				 ECME=pad_to_100(ecme18$Omega_norm), 
				 MCMC=mcmc18$Omega_norm, 
				 OLS=olls18$Omega_norm
				) 

bvar19 <- read.csv("bvar_mtin_var_p=2_d=5_n=200_theta=07.csv", header=T)
ecme19 <- read.csv("ecme_s3_detailed.csv", header=T)
mcmc19 <- read.csv("bayesian_s3_detailed.csv", header=T)
olls19 <- read.csv("ols_mtin_var_p=2_d=5_n=200_theta=07.csv", header=T)

bvar20 <- read.csv("bvar_mtin_var_p=2_d=5_n=200_theta=08.csv", header=T)
ecme20 <- read.csv("ecme_s6_detailed.csv", header=T)
mcmc20 <- read.csv("bayesian_s6_detailed.csv", header=T)
olls20 <- read.csv("ols_mtin_var_p=2_d=5_n=200_theta=08.csv", header=T)

bvar21 <- read.csv("bvar_mtin_var_p=2_d=5_n=200_theta=09.csv", header=T)
ecme21 <- read.csv("ecme_s9_detailed.csv", header=T)
mcmc21 <- read.csv("bayesian_s9_detailed.csv", header=T)
olls21 <- read.csv("ols_mtin_var_p=2_d=5_n=200_theta=09.csv", header=T)


bvar22 <- read.csv("bvar_mtin_var_p=2_d=5_n=500_theta=07.csv", header=T)
ecme22 <- read.csv("ecme_s12_detailed.csv", header=T)
mcmc22 <- read.csv("bayesian_s12_detailed.csv", header=T)
olls22 <- read.csv("ols_mtin_var_p=2_d=5_n=500_theta=07.csv", header=T)

bvar23 <- read.csv("bvar_mtin_var_p=2_d=5_n=500_theta=08.csv", header=T)
ecme23 <- read.csv("ecme_s15_detailed.csv", header=T)
mcmc23 <- read.csv("bayesian_s15_detailed.csv", header=T)
olls23 <- read.csv("ols_mtin_var_p=2_d=5_n=500_theta=08.csv", header=T)

bvar24 <- read.csv("bvar_mtin_var_p=2_d=5_n=500_theta=09.csv", header=T)
ecme24 <- read.csv("ecme_s18_detailed.csv", header=T)
mcmc24 <- read.csv("bayesian_s18_detailed.csv", header=T)
olls24 <- read.csv("ols_mtin_var_p=2_d=5_n=500_theta=09.csv", header=T)

bvar25 <- read.csv("bvar_mtin_var_p=2_d=5_n=1000_theta=07.csv", header=T)
ecme25 <- read.csv("ecme_s21_detailed.csv", header=T)
mcmc25 <- read.csv("bayesian_s21_detailed.csv", header=T)
olls25 <- read.csv("ols_mtin_var_p=2_d=5_n=1000_theta=07.csv", header=T)

bvar26 <- read.csv("bvar_mtin_var_p=2_d=5_n=1000_theta=08.csv", header=T)
ecme26 <- read.csv("ecme_s24_detailed.csv", header=T)
mcmc26 <- read.csv("bayesian_s24_detailed.csv", header=T)
olls26 <- read.csv("ols_mtin_var_p=2_d=5_n=1000_theta=08.csv", header=T)

bvar27 <- read.csv("bvar_mtin_var_p=2_d=5_n=1000_theta=09.csv", header=T)
ecme27 <- read.csv("ecme_s27_detailed.csv", header=T)
mcmc27 <- read.csv("bayesian_s27_detailed.csv", header=T)
olls27 <- read.csv("ols_mtin_var_p=2_d=5_n=1000_theta=09.csv", header=T)



Omega_bplot7 <- data.frame(BVAR=bvar19$Omega_norm, 
				 ECME=pad_to_100(ecme19$Omega_norm), 
				 MCMC=mcmc19$Omega_norm, 
				 OLS=olls19$Omega_norm,
				 BVAR=bvar20$Omega_norm, 
				 ECME=pad_to_100(ecme20$Omega_norm), 
				 MCMC=mcmc20$Omega_norm, 
				 OLS=olls20$Omega_norm,
				 BVAR=bvar21$Omega_norm, 
				 ECME=pad_to_100(ecme21$Omega_norm), 
				 MCMC=mcmc21$Omega_norm, 
				 OLS=olls21$Omega_norm
				) 

Omega_bplot8 <- data.frame(BVAR=bvar22$Omega_norm, 
				 ECME=pad_to_100(ecme22$Omega_norm), 
				 MCMC=mcmc22$Omega_norm, 
				 OLS=olls22$Omega_norm,
				 BVAR=bvar23$Omega_norm, 
				 ECME=pad_to_100(ecme23$Omega_norm), 
				 MCMC=mcmc23$Omega_norm, 
				 OLS=olls23$Omega_norm,
				 BVAR=bvar24$Omega_norm, 
				 ECME=pad_to_100(ecme24$Omega_norm), 
				 MCMC=mcmc24$Omega_norm, 
				 OLS=olls24$Omega_norm
				) 

Omega_bplot9 <- data.frame(BVAR=bvar25$Omega_norm, 
				 ECME=pad_to_100(ecme25$Omega_norm), 
				 MCMC=mcmc25$Omega_norm, 
				 OLS=olls25$Omega_norm,
				 BVAR=bvar26$Omega_norm, 
				 ECME=pad_to_100(ecme26$Omega_norm), 
				 MCMC=mcmc26$Omega_norm, 
				 OLS=olls26$Omega_norm,
				 BVAR=bvar27$Omega_norm, 
				 ECME=pad_to_100(ecme27$Omega_norm), 
				 MCMC=mcmc27$Omega_norm, 
				 OLS=olls27$Omega_norm
				) 


pdf("Omega_Boxplots_3x3_Landscape10.pdf", width = 14, height = 8)
# paste the plotting block here

# === Step 1: Store all 9 data frames in a list ===
psi_list <- list(Omega_bplot1, Omega_bplot2, Omega_bplot3,
                 Omega_bplot4, Omega_bplot5, Omega_bplot6,
                 Omega_bplot7, Omega_bplot8, Omega_bplot9)

# === Step 2: Set up landscape layout (3 rows x 3 columns) ===
par(mfrow = c(3, 3),              # 3 rows × 3 columns
    mar = c(4, 4, 2, 1),          # margins: bottom, left, top, right
    cex.main = 0.8,              # title font size
    cex.lab = 0.8,               # axis label font size
    cex.axis = 0.7)              # tick label font size

# === Step 3: Define method colors (white and black shades) ===
method_colors <- rep(c("white", "gray35", "gray35", "gray75"), times = 3)

# === Step 4: Define custom panel titles ===
panel_titles <- c(
  "(a) d=2 and n=200",
  "(b) d=2 and n=500",
  "(c) d=2 and n=1000",
  "(a) d=3 and n=200",
  "(b) d=3 and n=500",
  "(c) d=3 and n=1000",
  "(a) d=5 and n=200",
  "(b) d=5 and n=500",
  "(c) d=5 and n=1000"
)

# === Step 5: Loop to generate each subplot ===
for (i in 1:9) {
  data <- psi_list[[i]]
  
  # Define group labels (method × scenario)
  method_labels <- rep(c("BVAR", "ECME", "MCMC", "OLS"), 3)
  run_labels <- rep(c("0.7", "0.8", "0.9"), each = 4)
  full_labels <- paste(method_labels, run_labels)
  
  # Flatten all Omega values and assign groups
  psi_values <- unlist(data)
  group_factor <- factor(rep(full_labels, each = nrow(data)), levels = full_labels)
  
  # Draw boxplot
  boxplot(psi_values ~ group_factor,
          col = method_colors,
          las = 2,                     # Rotate x-axis text 90°
          main = panel_titles[i],     # Custom subplot title
          xlab = "",                  # No x-axis label
          ylab = expression("||" * bold(Omega) - hat(bold(Omega)) * "||"[F]))
}

dev.off()
