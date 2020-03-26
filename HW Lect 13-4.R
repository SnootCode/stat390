# Andrey Risukhin, HW Lect 13-4

countEmployeesLog <- c(4, 2, 3, 3, 4, 3, 2, 3, 3, 1,
                       2, 3, 3, 3, 2, 2, 3, 3, 3, 3,
                       3, 1, 1, 1, 3, 3, 3, 3, 3, 3)

profitsMillions <- c(6670.00, 20840.00, 59531.00, 
                     4021.00, 10073.00, 11986.00, 
                     67.00, 594.00, 19370.00, 
                     1658.40, 14824.00, 3677.00, 
                     8014.00, 3134.00, 30736.00, 
                     256.00, 5024.00, 32474.00,
                     15528.00, 3110.00, 22355.00,
                     15959.00, 5595.00, 3122.00,
                     28147.00, 16571.00, 11121.00,
                     10460.00, 22393.00, 18045.00)

averageSalary <- c(53000.00, 104000.00, 123000.00,
                   61000.00, 102000.00, 77000.00,
                   84000.00, 72000.00, 85000.00,
                   75000.00, 107000.00, 89000.00,
                   83000.00, 70000.00, 100000.00,
                   74000.00, 92000.00, 86000.00,
                   89000.00, 59000.00, 91000.00,
                   92000.00, 94000.00, 79000.00,
                   78000.00, 119000.00, 68000.00,
                   86000.00, 68000.00, 91000.00)

ageOfCompany <- c(2, 1, 2, 6, 1, 2, 6, 2, 1, 1, 
                  5, 4, 4, 1, 1, 2, 1, 1, 1, 4, 
                  3, 3, 2, 3, 2, 3, 3, 4, 5, 6)

# Andrey Risukhin, HW Lect 13-4

dat <- matrix(nrow = 30, ncol = 4)
dat[,1] <- countEmployeesLog
dat[,2] <- sqrt(profitsMillions)
dat[,3] <- averageSalary
dat[,4] <- ageOfCompany

# a) Perform linear regression to estimate coefficients,
#     interpret.
x <- dat[,2]
y <- dat[,3]
model.1 <- lm(y ~ x)
model.1$coefficients # For a unit increase of sqrt(profits),
          # salary increases 163.3 units. When sqrt(profits) 
          # are 0, average salary is $68,150. 

# b) Draw regression line onto scatterplot of y vs x.
plot(x, y, main = "Profits vs Salary")
abline(model.1, col = "red")

# c) Compute R^2, interpret.
# R^2 = "Coefficient of Determination", SS_exp / SS_T
summary(model.1)$r.squared # 0.2875033, 28.8% of the 
        # variability in y is attributed by the model 
        # to x's variability. This is not a fantastic
        # predictor. 

# d) Compute s_e, interpret.
summary(model.1)$sigma # The standard deviation of the
        # residuals is about 14149. 
sd(y) # For context, the standard deviation of y is 16470.
