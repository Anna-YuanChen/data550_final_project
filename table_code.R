# table_code.R

# Load necessary libraries
library(kableExtra)
library(here)

# Load data using `here()` for path management
data_path <- here("data", "clean_oasis_longitudinal.csv")
clean_data <- read.csv(data_path)

# Generate summary statistics
summary_stats <- summary(clean_data)

# Create a table using kable
summary_table <- kable(summary_stats, caption = "Summary of Key Demographic and Cognitive Variables") %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"))