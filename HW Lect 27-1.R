# Andrey Risukhin, HW Lect 27-1

x <- c(89, 177, 189, 354, 362, 442, 965) # fluid flow velocity for a 5% soluble oil (cm/sec)
y <- c(.40, .60, .48, .66, .61, .69, .99) # the extent of mist droplets having diameters smaller than some value

# a. Make a scatterplot of the data. By R.
plot(x, y, main = "X versus Y")
     
# b. What is the point estimate of the beta coefficient? (By R.) Interpret it.
lm.1 <- lm(y ~ x)
lm.1$coefficients[2] # 0.0006210758. For an increase of 1 cm/sec fluid flow viscosity, droplets increase by 0.06%

# c. What is s_e? (By R) Interpret it.
summary(lm.1) # Residual standard error: 0.05405. Typical estimation error of our model is 5.405% (y units)
s_e <- 0.05405
anova(lm.1)

# d. Estimate the true average change in mist associated with a 1 cm/sec increase in velocity, in a way that conveys 
#   information about precision and reliability. Hint: This question is asking for a CI for beta. 
#   Compute it AND interpret it. By hand; i.e. you must use the basic formulas for the CI. 
#   E.g. for beta: beta_hat +- t* s_e/sqrt(S_xx) , but you may use R to compute the various terms in the formula. 
#   Use 95% confidence level.
beta_hat <- lm.1$coefficients[2]
t_crit <- qt(0.975, lm.1$df.residual) # 95% 2-sided, df = n-2 = 5
lcb.1 <- beta_hat - (t_crit * 7.579e-05) # s_e / sqrt(Sxx) = s_b
ucb.2 <- beta_hat + (t_crit * 7.579e-05)
  # We're 95% confident the true value for beta lies within the interval (0.000426, 0.000816).

# e. Suppose the fluid velocity is 250 cm/sec. Compute an interval estimate of the corresponding mean y value. 
#   Use 95% confidence level. Interpret the resulting interval. By hand, as in part d.
x_8 <- 250
y_8 <- lm.1$coefficients[1] + lm.1$coefficients[2] * (x_8)
Sxx <- sd(x) * 6 # Standard deviation of x * df-1

lcb.2 <- y_8 - (t_crit * s_e * sqrt(1/7 + (x_8 - mean(x))^2 / (Sxx))) # Same 95% t, df = n-2 = 5
ucb.2 <- y_8 + (t_crit * s_e * sqrt(1/7 + (x_8 - mean(x))^2 / (Sxx)))
  # We're 95% confident the Interval (0.1626657, 0.9561197) contains the mean y value for x = 250.

# f. Suppose the fluid velocity for a specific fluid is 250 cm/sec. Predict the y for that specific fluid in a way 
# that conveys information about precision and reliability.  Use 95% prediction level. Interpret the resulting 
# interval. By hand, as in part d.
lpb.2 <- y_8 - (t_crit * s_e * sqrt(1 + 1/7 + (x_8 - mean(x))^2 / (Sxx))) # Same 95% t, df = n-2 = 5
upb.2 <- y_8 + (t_crit * s_e * sqrt(1 + 1/7 + (x_8 - mean(x))^2 / (Sxx)))
  # We're 95% confident the interval (0.1390398, 0.9797457) contains the specific y-value for x=250. 