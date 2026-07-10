# 02_clean.R ----
# Clean and standardize data.

source("scripts/01_import.R")
clean_data <- clean_input_data(raw_data)

glimpse(clean_data)
