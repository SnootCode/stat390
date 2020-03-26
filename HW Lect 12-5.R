# Andrey Risukhin, HW Lect 12-5
# Data stored in Excel file
setwd("C:/Users/Andre/OneDrive/UW 1st Year/2020 Winter/STAT 390/HW Lect 12-5")
dat <- read.csv("HW Lect 12-5.csv", header = TRUE)
Strength <- dat[, 2]
MoE <- dat[, 1]

# a) Scatterplot of Strength vs MoE
plot(MoE, Strength)
  
# b) Boxplot of MoE, Boxplot of Strength
par(mfrow = c(1,1))
boxplot(MoE)
boxplot(Strength)
#boxplot(dat[,1:2])

# c) qqplot of MoE, qqplot of Strength
qqnorm(MoE)
qqnorm(Strength)

# d) Correlation Coefficient (r) between MoE and Strength (by hand)
MoEmean <- mean(MoE)
MoEmean
Strengthmean <- mean(Strength)
Strengthmean
MoEsd <- sd(MoE)
MoEsd
Strengthsd <- sd(Strength)
Strengthsd
standardMoE <- (MoE - MoEmean)/MoEsd
standardStrength <- (Strength - Strengthmean)/Strengthsd
standardSum <- sum((standardMoE)*(standardStrength))
standardSum
byHandR <- 1/(27-1) * standardSum
byHandR # 0.8592721

# e) Compare calculate r with the one given by cor() in R
byRR <- cor(MoE, Strength)
byRR # 0.8592721

# f) Compute OLS fit (by hand), compute sample means by R
meanBoth <- mean(MoE * Strength)
meanBoth
MoEsquaredMean <- mean(MoE ^ 2)
MoEsquaredMean
MoEmeanSquared <- MoEmean ^ 2
MoEmeanSquared

# g) Interpret the Slope

# h) Predict Strength when MoE = 39.0 by hand

# i) Compute Sum Squared Error (SSE/SSResid) (by hand), compute sample means by R
SSE <- 27 * sum((Strength - 69.96 + 1.25 * MoE) ^ 2)
SSE
