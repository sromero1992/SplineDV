% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{DV_splinefit}
\alias{DV_splinefit}
\title{Spline-DV}
\usage{
DV_splinefit(X = x, Y = y, ncounts = 500, ncells = 15, mt.perc = 15)
}
\arguments{
\item{X}{Count matrix or SingleCellExperiment (Test sample)}

\item{Y}{Count matrix or SingleCellExperiment (Control sample)}

\item{ncounts}{An integer value. Defines the minimum reads required for a cell to be included in the analysis.}

\item{ncells}{An integer value. Defines the minimum cells required for a gene to be included in the analysis.}

\item{mt.perc}{A double value. Defines the minimum percent mitochondrial genes expression required for a cell to be excluded from the analysis.}
}
\value{
A DataFrame with DV Statistics
}
\description{
Differential Variability analysis
}
\examples{
# example code
# Load Data
load(system.file("extdata", "WT_count.rda", package = "SplineDV")) # WT Sample
load(system.file("extdata", "KO_count.rda", package = "SplineDV")) # KO Sample
DV_res <- DV_splinefit(X = KO_count, Y = WT_count)
}
\author{
Shreyan Gupta <xenon8778@tamu.edu>
}
