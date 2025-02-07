library(ggplot2)
#3a
dat <- data.frame(cond = factor(rep(c("A","B"), each=200)),
                  rating = c(rnorm(200), rnorm(200, mean=.8)));

#3b
# Overlaid histograms
ggplot(dat, aes(x=rating, fill=cond)) +
geom_histogram(binwidth=.5, alpha=.5, position="identity");

#3c
# Interleaved histograms
ggplot(dat, aes(x=rating, fill=cond)) + geom_histogram(binwidth=.5, position="dodge");

#3d
# Density plots
ggplot(dat, aes(x=rating, color=cond)) + geom_density();

#3e
# Density plots with semitransparent fill
ggplot(dat, aes(x=rating, fill=cond)) + geom_density(alpha=.3);

#3f

#trying to fix an error
str(diabetes)
names(diabetes)
# Read into var
diabetes <- read.csv("diabetes_train.csv", header = TRUE)

# Overlaid histograms
ggplot(diabetes, aes(x=plas, fill=class)) +
  geom_histogram(binwidth=.5, alpha=.5, position="identity")
ggsave("overlaid_histograms.png")  # Save the plot as a PNG file

# Interleaved histograms
ggplot(diabetes, aes(x=plas, fill=class)) + 
  geom_histogram(binwidth=.5, position="dodge")
ggsave("interleaved_histograms.png")  # Save the plot as a PNG file

# Density plots
ggplot(diabetes, aes(x=plas, color=class)) + 
  geom_density()
ggsave("density_plots.png")  # Save the plot as a PNG file

# Density plots with semitransparent fill
ggplot(diabetes, aes(x=plas, fill=class)) + 
  geom_density(alpha=.3)
ggsave("density_plots_fill.png")  # Save the plot as a PNG file

