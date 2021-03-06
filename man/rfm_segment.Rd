% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rfm-segment.R
\name{rfm_segment}
\alias{rfm_segment}
\title{Segmentation}
\usage{
rfm_segment(data, segment_names = NULL, recency_lower = NULL,
  recency_upper = NULL, frequency_lower = NULL,
  frequency_upper = NULL, monetary_lower = NULL,
  monetary_upper = NULL)
}
\arguments{
\item{data}{An object of class \code{rfm_table}.}

\item{segment_names}{Names of the segments.}

\item{recency_lower}{Lower boundary for recency score.}

\item{recency_upper}{Upper boundary for recency score.}

\item{frequency_lower}{Lower boundary for frequency score.}

\item{frequency_upper}{Upper boundary for frequency score.}

\item{monetary_lower}{Lower boundary for monetary score.}

\item{monetary_upper}{Upper boundary for monetary score.}
}
\description{
Create segments based on recency, frequency and monetary scores.
}
\examples{
analysis_date <- lubridate::as_date('2006-12-31', tz = 'UTC')
rfm_result <- rfm_table_order(rfm_data_orders, customer_id, order_date,
revenue, analysis_date)

segment_names <- c("Champions", "Loyal Customers", "Potential Loyalist",
  "New Customers", "Promising", "Need Attention", "About To Sleep",
  "At Risk", "Can't Lose Them", "Lost")

recency_lower <- c(4, 2, 3, 4, 3, 2, 2, 1, 1, 1)
recency_upper <- c(5, 5, 5, 5, 4, 3, 3, 2, 1, 2)
frequency_lower <- c(4, 3, 1, 1, 1, 2, 1, 2, 4, 1)
frequency_upper <- c(5, 5, 3, 1, 1, 3, 2, 5, 5, 2)
monetary_lower <- c(4, 3, 1, 1, 1, 2, 1, 2, 4, 1)
monetary_upper <- c(5, 5, 3, 1, 1, 3, 2, 5, 5, 2)

rfm_segment(rfm_result, segment_names, recency_lower, recency_upper,
frequency_lower, frequency_upper, monetary_lower, monetary_upper)

}
