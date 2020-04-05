# Andrey Risukhin, HW Lect 26-1

# a) Revise lecture simulation, contruct empirical sampling distribution of beta_hat, from 5000 trials.
n <- 10
n.trial <- 5000

x <- c(1:n)
y_true <- 10 + 2*x
sigma_eps <- 15

betas <- numeric(n.trial)
alphas <- numeric(n.trial)

set.seed(123)
for (i in 1:n.trial) {
  y_obs <- y_true + rnorm(n, 0, sigma_eps)
  lm.1 <- lm(y_obs ~ x)
  betas[i] <- lm.1$coefficients[2]
  alphas[i] <- lm.1$coefficients[1]
}

par(mfrow = c(1, 1))
hist(betas, breaks = 20)

# b) According to lecture, the mean of histogram is almost equal to slope. Is it?
mean(betas) # 1.969, which is almost equal to 2, the true slope.

# c) According to lecture, the sd of histogram is almost equal to sigma_eps / sqrt(Sxx). Is it?
sd(betas) # 1.643
sigma_eps / sqrt((n-1) * sd(betas)^2) # Sxx = (n-1) * Var[x], Var[x] = sd^2
  # 3.043, not really the same

# d) According to lecture, the distribution of beta_hat is normal with parameters found in a) and b).
#     Confirm this with qqnorm() and abline().

qqnorm(betas)
abline(mean(betas), sd(betas), col = 2)
# By qqnorm, the distribution of betas appears normal. 
