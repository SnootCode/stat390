# Andrey Risukhin, 3.33

thickness <- c(220, 220, 220, 220, 370, 370, 370, 370, 440,
               440, 440, 440, 680, 680, 680, 680, 860, 860,
               860, 860)
strength <- c(24.0, 22.0, 19.1, 15.5, 26.3, 24.6, 23.1, 21.2, 
              25.2, 24.0, 21.7, 19.2, 17.0, 14.9, 13.0, 11.8, 
              12.2, 11.2, 6.6, 2.8)

# a) Possible to transform to linear? Why?
plot(strength, thickness)
# Not possible. Plot shows thickness as discrete variable.

# b) Fit quadratic, predict strength when 500. Assess fit.
model.1 <- lm(strength ~ I(thickness) + I(thickness ^ 2))
model.1$coefficients
y_hat_500 <- (1.452072e+01) + (4.323341e-02) * (500) 
              + (-6.000599e-05) * (500)^2
points(500, y_hat_500, col = "red")
y_hat_500 # 21.13593

thickness_hat <- predict(model.1)
plot(thickness, thickness_hat)
