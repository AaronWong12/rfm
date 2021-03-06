#' \code{rfm} package
#'
#' Tools for customer segmentation analysis
#'
#' @docType package
#' @name rfm
NULL

## quiets concerns of R CMD check re: the .'s that appear in pipelines
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c(
    ".", "amount", "score",
    "date_most_recent", "frequency_bins", "frequency_score", "monetary",
    "monetary_score", "recency_bins", "recency_days", "recency_score",
    "rfm", "rfm_score", "transaction_count", "n"
  ))
}
