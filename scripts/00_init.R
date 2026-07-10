# 00_init.R ----
# Load packages, functions, parameters, and paths.

source("R/00_packages.R")
source("R/fn_read_data.R")
source("R/fn_clean_data.R")
source("R/fn_fit_model.R")
source("R/fn_plot_results.R")
source("R/fn_utils.R")

load_packages()
params <- read_yaml_safe("config/params.yml")
