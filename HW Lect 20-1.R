# Andrey Risukhin, HW Lect 20-1

x1 <- c(-0.27, -0.14,  1.61,  0.09,  0.00,  2.07,  0.56, -1.67, -0.51, -0.54)
x2 <- c(-0.32,  0.20,  1.93,  0.54,  0.75,  1.77,  0.84, -0.29, -0.33,  0.17)

meanx1 <- mean(x1)
meanx2 <- mean(x2)
sdx1 <- sd(x1)
sdx2 <- sd(x2)
plot(x1, x2)

d <- x1 - x2
meand <- mean(d)
sdd <- sd(d)

y1 = c(-0.27, -0.14,  1.61,  0.09,  0.00,  2.07,  0.56, -1.67, -0.51, -0.54)
y2 = c( 0.20 , 0.54, -0.33,  1.93, -0.32,  1.77,  0.75,  0.17, -0.29,  0.84)

d2 <- y1 - y2
meandd2 <- mean(d2)
sdd2 <- sd(d2)
