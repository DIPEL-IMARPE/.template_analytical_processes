# Load packages required by the workflow.
# Keep package loading centralized to reduce hidden dependencies.

load_packages <- function() {
  required <- c(
    "targets",
    "tarchetypes",
    "tidyverse",
    "readr",
    "dplyr",
    "ggplot2",
    "yaml",
    "here",
    "fs",
    "cli"
  )

  missing <- required[!vapply(required, requireNamespace, logical(1), quietly = TRUE)]

  if (length(missing) > 0) {
    stop(
      "Missing required packages: ",
      paste(missing, collapse = ", "),
      call. = FALSE
    )
  }

  invisible(lapply(required, library, character.only = TRUE))
}
