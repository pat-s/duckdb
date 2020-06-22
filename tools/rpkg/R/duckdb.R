#' duckdb Package
#'
#' FIXME
#' @docType package
#' @name duckdb-package
NULL

check_flag <- function(x) {
  if (is.null(x) || length(x) != 1 || is.na(x) || !is.logical(x)) {
    stop("flags need to be scalar logicals")
  }
}

#' @useDynLib duckdb , .registration = TRUE
