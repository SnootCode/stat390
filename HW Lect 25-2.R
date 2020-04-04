# Andrey Risukhin, HW Lect 25-2

# Call one continuous variable y, call the categorical with 3+
# levels x. 

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

x <- ageOfCompany
y <- averageSalary

# a) Do a 1-way ANOVA to test if any of k populations have differnt
#     means. Report p.value, conclusion.
aov.1 <- aov(y ~ as.factor(x))
summary(aov.1)
# P-Value: 0.835
# Conclusion: There is not enough evidence to suggest companies
#   of different ages have different average salaries. 

# b) qq-plot each y.
for (i in 1:6) {  
  filter <- ageOfCompany == i
  yi <- y * filter
  xi <- x * filter
  yi <- yi[yi != 0]
  xi <- xi[xi != 0]
  qqnorm(yi, main = c("Salaries for Age Group", i))
  qqline(yi) # adds line to a qqplot through 1 and 3 quartiles.
}

# Age groups 1 and 6 have the most different slope from the rest,
#   equal variance (homoskedasticity) may not be valid.
filter <- ageOfCompany == 1 | ageOfCompany == 6
x2 <- ageOfCompany * filter
y2 <- averageSalary * filter
x2 <- x2[x2 != 0]
y2 <- y2[y2 != 0]

aov.2 <- aov(y2 ~ as.factor(x2))
summary(aov.2)
# With a P-Value of 0.239, we lack enough evidence to conclude
#   the oldest and youngest companies have different average salaries.