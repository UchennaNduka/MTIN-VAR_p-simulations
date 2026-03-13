This is a collection of R scripts that provides a framework for parameter estimation in vector autoregressive models driven by Multivariate Tail Inflated Normal 
(MTIN) innovations. These scripts are used for experiments involving the MTIN-VAR(p) model. The ECME algorithm and Bayesian MCMC procedure are proposed for parameter
estimation in the model. These two methods were compared with standard parameter estimation procedures for VAR(p) that can be implemented in R. The standard procedures are captured in R
packages called VAR and BVAR.

**Overview**

The scripts performs the following functions:

1. **Data simulation:** Generates datasets based on a specified MTIN-VAR(p) structure.

2. **Parameter estimation:** Estimates the parameters of the MTIN-VAR(p) model based on each of the simulated samples using ECME algorithm, Bayesian MCMC, VAR, and BVAR.

3. **Boxplot visualization:** Plots the box plot of the Frobenius norm of estimation errors for each method across experimental settings.

4. **Data export:** Filters successful estimations and saves the aggregated results to a CSV file.

**The scripts**
   
   **_rtmin.R:_** Generates MTIN random variables. 

