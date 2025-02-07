# problem 1a
su <- read.delim("Su_raw_matrix.txt", header = TRUE, sep = "\t");
#problem 1b
#mean function
mean_Liver2 <- mean(su$Liver_2.CEL, na.rm = TRUE);
#standard deviation function
sd_Liver2 <- sd(su$Liver_2.CEL, na.rm = TRUE);
# na.rm = TRUE so I can only see columns that aren't blank
# print whats going on
print(paste("Mean of Liver_2.CEL:", mean_Liver2));
print(paste("Standard deviation of Liver_2.CEL:", sd_Liver2))
# problem 1c
# Column wise mean and sum
column_means <- colMeans(su, na.rm = TRUE);
column_sums <- colSums(su, na.rm = TRUE);
# lemme see what's happening
print("Column-wise Means:");
print(column_means);
print("Column-wise Sums:");
print(column_sums)