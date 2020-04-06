# Andrey Risukhin, HW Lect 28-2 Garbage Predictors

set.seed(123)     # Use this line to make sure we all get the same answes. 
n <- 20 
y <- 1 + rnorm(n,0,1)

# a) Write code to make data on 10 useless predictors (and no useful predictors) each from unif(-1, +1) 
predictCount <- 10
predictors <- matrix(nrow = predictCount, ncol = n)
for (i in 1:predictCount) {
  predictors[i,] <- runif(n, min = -1, max = 1) # Fill a new row each loop
}
x1 <- predictors[1,] # Clearer to use x1 than predictors[1,] in model
x2 <- predictors[2,]
x3 <- predictors[3,]
x4 <- predictors[4,]
x5 <- predictors[5,]
x6 <- predictors[6,]
x7 <- predictors[7,]
x8 <- predictors[8,]
x9 <- predictors[9,]
x10 <- predictors[10,]

# fit the model y = alpha + beta1 x1 + ... + beta10 x10, 
lm.1 <- lm(y ~ x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10) 
betas <- lm.1$coefficients[2:11]

# perform the test of model utility, t-tests on each of 10 coefficients to see if they are zero.
summary(lm.1) # F-obs: 1.477 on 10, 9 df; p-value: 0.2846
# Pr(>|t|)  
tx1 <- 0.0594 
tx2 <- 0.9184  
tx3 <- 0.6216  
tx4 <- 0.0766 
tx5 <- 0.4254  
tx6 <- 0.6315  
tx7 <- 0.0982 
tx8 <- 0.1719  
tx9 <- 0.8110  
tx10 <- 0.7725
txs <- c(tx1, tx2, tx3, tx4, tx5, tx6, tx7, tx8, tx9, tx10)

# b) According to the F-test of model utility, are any of the predictors useful at alpha = 0.1?
# No. 0.28 > 0.10, we fail to conclude that any of factors are useful.

# c) According to the t-tests, are any of the predictors useful at alpha = 0.1? See the solns to make sure you 
# understand the moral of this exercise.
length(txs[txs < 0.1]) # 3 of the predictors had a p-value larger than 0.10 when tested individually. 