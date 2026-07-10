# Functions for input reading.

read_input_data <- function(path) {
  if (!file.exists(path)) {
    stop("Input file not found: ", path, call. = FALSE)
  }

  readr::read_csv(path, show_col_types = FALSE)
}
