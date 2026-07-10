# 06_export.R ----
# Export tables, figures, and model outputs.

source("scripts/05_diagnostics.R")

summary_table_file <- export_summary_table(summary_table)
diagnostic_table_file <- export_diagnostics(diagnostic_table)
cpue_trend_file <- plot_cpue_trend(summary_table)

saveRDS(model_fit, "outputs/models/model_fit.rds")

message("Exported: ", summary_table_file)
message("Exported: ", diagnostic_table_file)
message("Exported: ", cpue_trend_file)
