# Andrey Risukhin, HW Lect 16-2

# a) Take 5000 samples, size n = 100, from exponential distribution (l = 2)
#     Plot qqplot of their 5000 means.
library(lattice)
dat <- numeric(5000)
for (i in 1:length(dat)) {
  dat[i] <- mean(rexp(100, rate = 2))
}
qqmath(dat, dist = qnorm, cex = 0.5)

# b) Discuss
# Line travels 2 x for 0.1 y increase, = slope of 0.05.
# Line appears to be at 0.5 when qnorm = 0
# Expected parameters: mean(exp) = 1 / 2 = 0.5 (intercept)
    # sigma(exp)/n = [1 / (2^2)] / sqrt(100) = [0.25] / 10 = 0.25
# Mean is exactly my estimate, sigma is half as much as my estimate