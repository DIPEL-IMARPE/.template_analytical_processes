# 03_explore.R ----
# Exploratory summaries and data checks.

source("scripts/02_clean.R")
summary_table <- make_summary_table(clean_data)

print(summary_table)
