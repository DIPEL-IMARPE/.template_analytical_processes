# Functions for figures and exports.

plot_cpue_trend <- function(summary_table, output_path = "outputs/figures/cpue_trend.png") {
  dir.create(dirname(output_path), recursive = TRUE, showWarnings = FALSE)

  p <- ggplot2::ggplot(summary_table, ggplot2::aes(x = year, y = cpue)) +
    ggplot2::geom_line(linewidth = 0.7) +
    ggplot2::geom_point(size = 2) +
    ggplot2::labs(
      x = "Year",
      y = "CPUE",
      title = "Example CPUE trend"
    ) +
    ggplot2::theme_minimal(base_size = 12)

  ggplot2::ggsave(output_path, p, width = 7, height = 4, dpi = 300)
  output_path
}

export_summary_table <- function(summary_table, output_path = "outputs/tables/summary_table.csv") {
  dir.create(dirname(output_path), recursive = TRUE, showWarnings = FALSE)
  readr::write_csv(summary_table, output_path)
  output_path
}

export_diagnostics <- function(diagnostic_table, output_path = "outputs/tables/diagnostics.csv") {
  dir.create(dirname(output_path), recursive = TRUE, showWarnings = FALSE)
  readr::write_csv(diagnostic_table, output_path)
  output_path
}
