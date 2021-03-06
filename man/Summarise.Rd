% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{Summarise}
\alias{Summarise}
\title{Summarise simulated data using various population comparison statistics}
\usage{
Summarise(condition, results, fixed_objects = NULL)
}
\arguments{
\item{condition}{a single row from the \code{design} input from \code{\link{runSimulation}}
(as a \code{data.frame}), indicating the simulation conditions}

\item{results}{a \code{data.frame} (if \code{Analyse} returned a numeric vector) or a \code{list}
(if \code{Analyse} returned a list or multi-rowed data.frame) containing the analysis
results from \code{\link{Analyse}},
where each cell is stored in a unique row/list element}

\item{fixed_objects}{object passed down from \code{\link{runSimulation}}}
}
\value{
must return a named \code{numeric} vector or \code{data.frame}
  with the desired meta-simulation results
}
\description{
This collapses the simulation results within each condition to composite
estimates such as RMSE, bias, Type I error rates, coverage rates, etc.
}
\examples{
\dontrun{

mysummarise <- function(condition, results, fixed_objects = NULL){

    #find results of interest here (alpha < .1, .05, .01)
    lessthan.05 <- EDR(results, alpha = .05)

    # return the results that will be appended to the design input
    ret <- c(lessthan.05=lessthan.05)
    ret
}

}

}
\seealso{
\code{\link{bias}}, \code{\link{RMSE}}, \code{\link{RE}}, \code{\link{EDR}},
  \code{\link{ECR}}, \code{\link{MAE}}
}

