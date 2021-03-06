% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SimDesign.R
\docType{package}
\name{SimDesign}
\alias{SimDesign}
\alias{SimDesign-package}
\title{Structure for Organizing Monte Carlo Simulation Designs}
\description{
Structure for Organizing Monte Carlo Simulation Designs
}
\details{
Provides tools to help organize Monte Carlo simulations in R. The package
controls the structure and back-end of Monte Carlo simulations
by utilizing a general generate-analyse-summarise strategy. The functions provided control common
simulation issues such as re-simulating non-convergent results, support parallel
back-end and MPI distributed computations, save and restore temporary files,
aggregate results across independent nodes, and provide native support for debugging.
The primary function for organizing the simulations is \code{\link{runSimulation}}.
}
\author{
Phil Chalmers \email{rphilip.chalmers@gmail.com}
}
\keyword{package}

