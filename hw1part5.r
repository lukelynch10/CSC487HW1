diabetes <- read.csv("diabetes_train.csv", header = TRUE); #read
#use quantile to get percentiles
percentiles <- quantile(diabetes$skin, probs = c(0.10, 0.30, 0.50, 0.60), na.rm = TRUE);
# Print the percentiles
print(percentiles)

