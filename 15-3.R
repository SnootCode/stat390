# Andrey Risukhin, HW LEct 15-3

dat1 <- read.table("https://www.stat.washington.edu/marzban/390/winter20/hw_3_dat1.txt", header = T)
dat2 <- read.table("https://www.stat.washington.edu/marzban/390/winter20/hw_3_dat2.txt", header = T)

plot(dat1, main = "Data Set 1")
cor(dat1) # All correlations are relatively low, none >40%. x1 ~ x2 is a cloud, y with x1, x2 is much more linear. 

plot(dat2, main = "Data Set 2")
cor(dat2) # x1 and x2 are highly correlated. y is nonmonotonic with x1, x2, correlation is meaningless.

# Collinearity, nonlinearity, and interaction of both:
  # Data 1
    # x1 and x2 are independent. y is constant (and monotonic) with x1 and x2, seems identically shaped and correlated with both.
      # Thus, y is likely independed of x1 and x2. 
  # No colinearity.

  # Data 2
    # x1 and x2 seem to measure the same data, they are highly related (collinear)
    # y behaves identically (nonmonotonically) with x1 and x2
      # Thus, y might depend on x1 and x2, which are same variable quantity.
    # x1 and x2 are collinear. 

lm1.1 <- lm(dat1$y ~ dat1$x1 + dat1$x2)
summary(lm1.1)$r.squared
lm1.2 <- lm(dat1$y ~ dat1$x1 + dat1$x2 + dat1$x1 * dat2$x2)
summary(lm1.1)$r.squared
# Coefficient of Determination unchanged with interaction pair.

lm2.1 <- lm(dat2$y ~ dat2$x1 + dat2$x2)
summary(lm2.1)$r.squared
lm2.2 <- lm(dat2$y ~ dat2$x1 + dat2$x2 + dat2$x2 * dat2$x2)
summary(lm2.2)$r.squared
# Coefficient of Determination unchanged with interaction pair.
