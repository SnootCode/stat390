# Andrey Risukhin, 16-1

# a) Produce sampling distribution of the sample max, samples size 50, 
#     taken from standard Normal, 5000 trials.

par(mfrow = c(1,1))
dat_max <- numeric(5000)
dat_min <- numeric(5000) # Just in case, do this instead of assigning arrays to each other
for (i in 1:length(dat_a)) {
  dat_max[i] <- max(rnorm(50, mean = 0, sd = 1))
  dat_min[i] <- min(rnorm(50, mean = 0, sd = 1))
}
hist(dat_max)
hist(dat_min)

# b) Repeat for sample min. (Above)

# For fun
library(ggplot2)