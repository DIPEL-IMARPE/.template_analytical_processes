# 05_diagnostics.R ----
# Model diagnostics and validation.

source("scripts/04_model.R")
diagnostic_table <- make_diagnostics(model_fit)

print(diagnostic_table)
