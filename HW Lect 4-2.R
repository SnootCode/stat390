# HW Lect 4-2 c), Andrey Risukhin
# Purpose: Use R to plot f(x) = {
#   3/14 * (-x^3 + x^2 + x + 2) if 0 < x < 2.
#   0                           else.

# Plot x versus f(x), restricting the domain from 0 to 2.
#   Type = "l" connects all the points with lines, to show the function
plot(x, 3/14 * (-x^3 + x^2 + x + 2),xlim = c(0,2), type = "l")