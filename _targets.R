# Reproducible analytical pipeline for DIPEL-IMARPE.
# Run with: targets::tar_make()

library(targets)
library(tarchetypes)

source("R/00_packages.R")
source("R/fn_read_data.R")
source("R/fn_clean_data.R")
source("R/fn_fit_model.R")
source("R/fn_plot_results.R")
source("R/fn_utils.R")

load_packages()

tar_option_set(
  packages = c("tidyverse", "readr", "dplyr", "ggplot2", "yaml", "tibble"),
  format = "rds"
)

list(
  tar_target(params, read_yaml_safe("config/params.yml")),
  tar_target(input_path, params$paths$example_data),
  tar_target(raw_data, read_input_data(input_path)),
  tar_target(clean_data, clean_input_data(raw_data)),
  tar_target(summary_table, make_summary_table(clean_data)),
  tar_target(model_fit, fit_demo_model(summary_table)),
  tar_target(diagnostic_table, make_diagnostics(model_fit)),
  tar_target(summary_table_file, export_summary_table(summary_table), format = "file"),
  tar_target(diagnostic_table_file, export_diagnostics(diagnostic_table), format = "file"),
  tar_target(cpue_trend_file, plot_cpue_trend(summary_table), format = "file")
)
