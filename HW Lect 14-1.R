# Andrey Risukhin, HW Lect 14-1

# a) Read data, scatterplot.
dat <- read.table("https://www.stat.washington.edu/marzban/390/winter20/transform_dat.txt", header = T)
x <- dat[, 1]
y <- dat[, 2]
plot(x, y, cex = 0.5, main = "Raw Data")
plot(sqrt(x), sqrt(y), cex = 0.5, main = "Sqrt(both)")

# b) Perform regression on transformed data, overlay onto plot. 
lm.1 <- lm(sqrt(y) ~ sqrt(x))
abline(lm.1)

# c) What % variability in transformed y explained by 
#     transformed x? what's typical error of prediction 
#     of transformed y?
percentExplained <- summary(lm.1)$r.squared
percentExplained # 0.9922451
predictionError <- (summary(lm.1))$sigma
predictionError # 0.01911095

# d) Algebra to show sqrt(y) = alpha + beta * sqrt(x) is 
#     y = alpha + beta_1 * sqrt(x) + beta_2 * x.
# On paper

# e) Fit new model
lm.2 <- lm(y ~ I(sqrt(x)) + I(x))

# f) Make lm.1 and lm.2 scatterplot predictions.
y_hat_1 <- lm.1$fitted.values
y_hat_2 <- lm.2$fitted.values

plot(sqrt(x), y_hat_1, main = "Comparison", xlim = c(0, 0.5), ylim = c(0, 9))
points(sqrt(x), y_hat_2)