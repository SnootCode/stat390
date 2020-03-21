# HW Lecture 3-3, Andrey Risukhin

# Set working directory where file is stored. 
setwd("C:/Users/Andre/OneDrive/PigDrive/UW 1st Year/
      2020 Winter/STAT 390/HW Lect 3-3")

# Read in data file.
dat <- read.table('hw_lect3_dat.txt', header = F)
col1 <- dat[, 1] # Save first column as a data set.
col2 <- dat[, 2] # Save second column as a data set.

par(mfrow = c(2,2)) # Build the plotting area.

# Plot col1 as raw and reexpressed data.
H1 = hist(col1, breaks = seq(0, 400, by = 20))
  plot(H1$mids, H1$density)
  plot(H1$mids, log(H1$density)) # Check for Exponential
  plot(log(H1$mids), log(H1$density)) # Check for Power Law
    # ^ Most Linear, Column 1 likely Power Law.

# Plot col2 as raw and reexpressed data.
H2 = hist(col2, breaks = seq(0, 12, by = 2))
  plot(H2$mids, H2$density)
  plot(H2$mids, log(H2$density)) # Check for Exponential
    # ^ Most Linear, Column 2 likely Exponential. 
  plot(log(H2$mids), log(H2$density)) # Check for Power Law