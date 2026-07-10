# 01_import.R ----
# Import input data.

source("scripts/00_init.R")
raw_data <- read_input_data(params$paths$example_data)

glimpse(raw_data)
