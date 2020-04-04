# Andrey Risukhin, HW Lect 19-2
# Choose a continuous (y) and categorical/discrete (x) variable,
# mu1 = true mean of y when x = (first level), mu2 = true mean
# of y when x = (second level).

# a) Compute 2-sided, 95% CI for mu1 - mu2

y1 <- c(104000.00, 102000.00, 85000.00, 75000.00, 70000.00,
        100000.00, 92000.00, 86000.00, 89000.00)
y2 <- c(53000.00, 123000.00, 77000.00, 100000.00,
        94000.00, 79000.00)
        
# mu1 - mu2 : (x_bar_1 - x_bar_2) * z * sqrt((s1)^2/n1 + (s2)^2/n2)

CIhi <- (mean(y1) - mean(y2)) + 1.96 * sqrt((sd(y1)^2)/length(y1) 
      + (sd(y2)^2)/length(y2))
CIlo <- (mean(y1) - mean(y2)) - 1.96 * sqrt((sd(y1)^2)/length(y1) 
      + (sd(y2)^2)/length(y2))

# Interval: [-18976.11, 22087.22]

# b) Is there evidence mu1 and mu2 differ?

# No, because 0 is in the interval, the difference could be zero.
# mu1 and mu2 may or may not differ