# plot_code.R

# Load necessary libraries
library(ggplot2)
library(corrplot)
library(GGally)
library(here)

# Load data using `here()` for path management
data_path <- here("data", "clean_oasis_longitudinal.csv")
clean_data <- read.csv(data_path)

# Plot 1: Scatter plot for Age vs CDR
scatter_plot <- ggplot(clean_data, aes(x = Age, y = CDR, color = Gender)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "dashed") +
  labs(title = "Age vs Cognitive Decline (CDR)", x = "Age", y = "CDR", color = "Gender") +
  theme_minimal()

# Plot 2: Correlation matrix
cor_matrix <- cor(clean_data[, c("Age", "Education", "BrainVolume", "CDR")], use = "complete.obs")
correlation_plot <- function() {
  corrplot(cor_matrix, method = "circle", type = "lower", 
           tl.cex = 0.8, title = "Correlation Matrix", mar = c(0, 0, 1, 0))
}

# Plot 3: Pair plot
pair_plot <- ggpairs(clean_data[, c("Age", "Education", "BrainVolume", "CDR")])