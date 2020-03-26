# Andrey Risukhin, 3.31

Cycfail <- c(1326, 1593, 4414, 5673, 29516, 26, 843, 1016, 3410, 7101,
             7356, 7904, 79, 4175, 34676, 114789, 2672, 7532, 30220)
Strampl <- c(.01495, .01470, .01100, .01190, .00873, .01819, .00810, 
             .00801, .00600, .00575, .00576, .00580, .01212, .00782, 
             .00596, .00600, .00880, .00883, .00676)
# a) Scatterplot: y/x, y/ln(x), ln(y)/ln(x), (1/y)/(1/x)
plot(Cycfail, Strampl, main = "y vs x")
plot(log(Cycfail), Strampl, main = "y vs ln(x)")
plot(log(Cycfail), log(Strampl), main = "ln(y) vs ln(x)")
plot(1 / Cycfail, 1 / Strampl, main = "1/y vs 1/x")

# b) Which of above is best?
# ln(y) vs ln(x) is best

# c) Use it to predict amplitude when cycles to failure = 5000
lm.1 <- lm(log(Strampl) ~ log(Cycfail))
lm.1$coefficients
y_hat_5000 <- (-3.7372190) + (-0.1239489) * (log(5000))
points(log(5000), y_hat_5000, col = "red")
y_hat_5000 # -4.792916