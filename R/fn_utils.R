# General utilities.

read_yaml_safe <- function(path) {
  if (!file.exists(path)) {
    stop("YAML file not found: ", path, call. = FALSE)
  }
  yaml::read_yaml(path)
}

get_git_commit <- function() {
  commit <- tryCatch(
    system2("git", c("rev-parse", "HEAD"), stdout = TRUE, stderr = TRUE),
    error = function(e) NA_character_
  )
  commit[1]
}
