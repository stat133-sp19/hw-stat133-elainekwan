% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binomial.R
\name{bin_cumulative}
\alias{bin_cumulative}
\title{bin_cumulative}
\usage{
bin_cumulative(trials, prob)
}
\arguments{
\item{trials}{number of trials.}

\item{prob}{probability of success.}
}
\value{
binomial cumulative distribution data frame
}
\description{
create a data frame with the binomial cumulative distribution
}
\examples{

bin_cumulative(trials = 5, prob = 0.5)
bin_cumulative(trials = 10, prob = 0.3)

}
