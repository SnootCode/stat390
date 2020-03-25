# HW Lect 5-1, Andrey Risukhin
# Consider a continuous variable and a discrete variable. 
# Make comparative boxplots for the continuous variable for each level of the discrete variable.
# I used countEmployeesLog as discrete, profitsMillions as continuous.

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

ageOfCompany <- c(2, 1, 2, 6, 1, 2, 6, 2, 1, 1, 5,
                  4, 4, 1, 1, 2, 1, 1, 1, 4, 4, 3,
                  3, 2, 3, 2, 3, 3, 4, 5, 6)

plot(profitsMillions, averageSalary)

profits1 <- c(profitsMillions[10], profitsMillions[21], profitsMillions[22], 
              profitsMillions[23])
profits2 <- c(profitsMillions[2], profitsMillions[7], profitsMillions[11], 
              profitsMillions[15], profitsMillions[16])
profits3 <- c(profitsMillions[3], profitsMillions[4], profitsMillions[6], 
              profitsMillions[8], profitsMillions[9], profitsMillions[12], 
              profitsMillions[13], profitsMillions[14], profitsMillions[17], 
              profitsMillions[18], profitsMillions[19], profitsMillions[20], 
              profitsMillions[21], profitsMillions[25], profitsMillions[26], 
              profitsMillions[27], profitsMillions[28], profitsMillions[29], 
              profitsMillions[30])
profits4 <- c(profitsMillions[1], profitsMillions[5])

# Make Boxplots
par(mfrow = c(1,2))
boxplot(profits1, profits2, profits3, profits4)
boxplot(profits1, profits2, profits3, profits4, range = 0) # Suppresses outliers
max(profits3) # The outlier, 59531

# Create counts variables
level1Count <- 4
level2Count <- 5
level3Count <- 19
level4Count <- 2

profits1 <- numeric(level1Count)
profits2 <- numeric(level2Count)
profits3 <- numeric(level3Count)
profits4 <- numeric(level4Count)

# Sort profits by level   DOES NOT WORK YET
#for (i in length(countEmployeesLog)) { # Loop once for each element of countEmployeesLog
#  countEmployeesLog[i]
#  if (countEmployeesLog[i] == 1) {
#    profits1[i] <- profitsMillions[i]
#  }
#  if (countEmployeesLog[i] == 2) {
#    profits2[i] <- profitsMillions[i]
#  }
#  if (countEmployeesLog[i] == 3) {
#    profits3[i] <- profitsMillions[i]
#  }
#  if (countEmployeesLog[i] == 4) {
#    profits4[i] <- profitsMillions[i]
#  }
#}