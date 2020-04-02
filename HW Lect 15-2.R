# Andrey Risukhin, HW Lect 15-2

dat <- matrix(nrow = 14, ncol = 3)
dat[,2] <- c(8.9, 36.6, 36.8, 6.1, 6.9, 6.9, 7.3, 
           8.4, 6.5, 8.0, 4.5, 9.9, 2.9, 2.0) # Depth
dat[,3] <- c(31.5, 27.0, 25.9, 39.1, 39.2, 38.3,
             33.9, 33.8, 27.9, 33.1, 26.3, 37.0,
             34.6, 36.4) # Content
dat[,1] <- c(14.7, 48.0, 25.6, 10.0, 16.0, 
              16.8, 20.7, 38.8, 16.9, 27.0, 
              16.0, 24.9, 7.3, 12.8) # Strength
# a) Perform regression to predict strength from:
#     depth
#     content
#     depth ^ 2
#     content ^ 2
#     depth * content

y <- dat[, 1]
x1 <- dat[,2]
x2 <- dat[,3]
x3 <- x1 ^ 2
x4 <- x2 ^ 2
x5 <- x1 * x2

lm.1 <- lm(y ~ x1 + x2 + x3 + x4 + x5)
summary(lm.1)$coefficients

  # (Intercept) -140.22976413 
  # x1           -16.47520736   
  # x2            12.82710366 
  # x3             0.09555181 
  # x4            -0.24339330  
  # x5             0.49863532

# b) Interpretation is convoluted because of so 
  #   many variables. It's not useful. 

# c) Compute R^2, explain goodness-of-fit.
summary(lm.1)$r.squared # 75.61% of the variability 
  # in strength is accounted for by the model lm.1.

# d) Compute s_e, explain.
summary(lm.1)$sigma # Each observed value for 
  # strength typically differs by 7.02 from the prediction.

# f) Perform regression for x1, x2 only.
lm.2 <- lm(y ~ x1 + x2)

# g) Compute R^2, explain goodness of fit.
summary(lm.2)$r.squared # 44.70% of the variability 
  # in strength is accounted for by the model lm.2.

# h) Compare R^2 values. 
  # The coefficient of determination suggests the first
  # model explains more of the variability in strength.
  # However, I am suspicious of its complex relationship,
  # which makes me suspect it is a poor predictor.

# i) Compute s_e, compare to previous.
summary(lm.2)$sigma # The typical error for each predicted
  # data point is greater than before, 9.02. The new model
  # fits the data less well, but I suspect it describes the 
  # relationship better; it is more likely to follow the 
  # general trend of the data. 























# e) Examine residuals plot.
y_hat <- lm.1$fitted.values
plot(summary(lm.1)$residuals, y_hat, main = "Residuals Plot")


lm.1 <- lm(y ~ x1)
lm.2 <- lm(y ~ x2)
lm.3 <- lm(y ~ x3)
lm.4 <- lm(y ~ x4)
lm.5 <- lm(y ~ x5)

# b) Interpret coefficients. 

summary(lm.1)$coefficients # An increase of one unit 
  # depth results in an increase of 0.6676621 unit 
  # strength. When depth is zero, strength is 13.87.
summary(lm.2)$coefficients # An increase of one unit 
# content results in a decrease of 0.9199238 unit 
# strength. When content is zero, strength is 51.59.
summary(lm.3)$coefficients # An increase of one unit 
# depth^2 results in an increase of 0.0145 unit 
# strength. When depth^2 is zero, strength is 17.71.
summary(lm.4)$coefficients # An increase of one unit 
# content^2 results in a decrease of 0.0143 unit 
# strength. When content^2 is zero, strength is 37.16.
summary(lm.5)$coefficients # This is an interaction term.
# Interpretation is meaningless. For an increase of one
# unit depth * content, strength increases 0.0273 units. 
# When depth * content = 0, strength is 12.077.

