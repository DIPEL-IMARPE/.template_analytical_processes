test_that("clean_input_data computes cpue", {
  source("R/fn_clean_data.R")

  x <- data.frame(
    year = 2025,
    month = 1,
    species = "example",
    lat = -10,
    lon = -78,
    catch_tonnes = 100,
    effort_days = 10
  )

  y <- clean_input_data(x)
  expect_equal(y$cpue, 10)
})
