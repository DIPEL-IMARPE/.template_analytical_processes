# Functions for model fitting.
# Replace this demo model with the real model for each analytical process.

fit_demo_model <- function(summary_table) {
  if (!all(c("year", "cpue") %in% names(summary_table))) {
    stop("summary_table must contain year and cpue columns", call. = FALSE)
  }

  stats::lm(cpue ~ year, data = summary_table)
}

make_diagnostics <- function(model_fit) {
  stats <- summary(model_fit)

  tibble::tibble(
    metric = c("r_squared", "adj_r_squared", "sigma", "n_obs"),
    value = c(
      unname(stats$r.squared),
      unname(stats$adj.r.squared),
      unname(stats$sigma),
      stats$df[1] + stats$df[2]
    )
  )
}
