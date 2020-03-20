# 1.16, Andrey Risukhin

# Vector storing the IDT data.
IDTData <- c(28.1, 28.0, 18.6, 30.6, 19.1, 
             31.2, 17.9, 21.4, 55.6, 38.4,
             13.7, 19.5, 26.6, 25.5, 72.8,
             46.0, 21.1, 26.2, 52.1, 48.9,
             25.8, 31.9, 32.0, 21.0, 21.4,
             16.8, 28.9, 43.5, 22.3, 20.7,
             34.8, 60.1, 17.4, 15.5, 57.3,
             62.3, 23.7, 38.8, 36.3, 40.9)

# Create space for the two histograms.
par(mfrow = c(2,1))

# Maximum value is 72.8, so break until 80.
hist(IDTData, breaks = seq(10, 80, by = 10))

# Vectorized functions let take log10 of all 
#   values at once.
IDTDataLog = log(IDTData, 10)
# Maximum value is 1.862131, so break until 1.9.
hist(IDTDataLog, breaks = seq(1.1, 1.9, 0.1))

# Two histograms, one with reexpressed data, 
#   are created.