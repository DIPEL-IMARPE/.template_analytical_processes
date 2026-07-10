# Functions for data cleaning and standardization.

clean_input_data <- function(data) {
  required <- c("year", "month", "species", "lat", "lon", "catch_tonnes", "effort_days")
  missing <- setdiff(required, names(data))

  if (length(missing) > 0) {
    stop("Missing required columns: ", paste(missing, collapse = ", "), call. = FALSE)
  }

  data |>
    dplyr::mutate(
      year = as.integer(year),
      month = as.integer(month),
      species = as.character(species),
      catch_tonnes = as.numeric(catch_tonnes),
      effort_days = as.numeric(effort_days),
      cpue = dplyr::if_else(effort_days > 0, catch_tonnes / effort_days, NA_real_)
    ) |>
    dplyr::filter(
      !is.na(year),
      !is.na(month),
      !is.na(catch_tonnes),
      !is.na(effort_days)
    )
}

make_summary_table <- function(data) {
  data |>
    dplyr::group_by(year, species) |>
    dplyr::summarise(
      catch_tonnes = sum(catch_tonnes, na.rm = TRUE),
      effort_days = sum(effort_days, na.rm = TRUE),
      cpue = catch_tonnes / effort_days,
      n_records = dplyr::n(),
      .groups = "drop"
    )
}
