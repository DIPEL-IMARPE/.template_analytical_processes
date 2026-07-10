# 99_render.R ----
# Render analytical and audit reports.

if (!requireNamespace("quarto", quietly = TRUE)) {
  stop("Package 'quarto' is required. Install it with install.packages('quarto').", call. = FALSE)
}

quarto::quarto_render("index.qmd")
quarto::quarto_render("audit.qmd")
