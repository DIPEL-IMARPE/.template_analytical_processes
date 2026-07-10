# 04_model.R ----
# Fit model or run core analysis.

source("scripts/03_explore.R")
model_fit <- fit_demo_model(summary_table)

print(summary(model_fit))
