# Problem 2a
# First we generate random numbers
data_a <- rnorm(10000, mean = 0, sd = 0.2);  

# Save as a picture
png("histogram_a_0.2.png")  # Fixed file name for clarity

# Plot histogram
hist(data_a, breaks = 50, xlim = c(-5, 5), col = "lightblue",
     main = "Histogram: mean=0, sigma=0.2", xlab = "Value")

# Close the plot device
dev.off();

# Problem 2b
# Random Number Generation (RNG)
data_b <- rnorm(10000, mean = 0, sd = 0.5);

# Save as a picture and plot histogram
png("histogram_b_0.5.png")  # Fixed file name for clarity
hist(data_b, breaks = 50, xlim = c(-5, 5), col = "lightgreen",
     main = "Histogram: mean=0, sigma=0.5", xlab = "Value")

# Close the plot device
dev.off()