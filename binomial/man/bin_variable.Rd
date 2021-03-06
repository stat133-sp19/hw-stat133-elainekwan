% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binomial.R
\name{bin_variable}
\alias{bin_variable}
\title{bin_variable}
\usage{
bin_variable(trials, prob)
}
\arguments{
\item{trials}{number of trials.}

\item{prob}{probability of success.}
}
\value{
a binvar list object
}
\description{
create a list of class binomial random variable (binvar) with named elements trials and prob
}
\examples{

bin_variable(trials = 5, prob = 0.5)
bin_variable(trials = 10, prob = 0.3)

}
