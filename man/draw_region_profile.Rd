% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DrawingFunctions.R
\name{draw_region_profile}
\alias{draw_region_profile}
\title{Plot signal profile in genomic regions}
\usage{
draw_region_profile(
  plot_df,
  xc = "Position",
  yc = "Intensity",
  cn = "Query",
  sn = NULL,
  Ylab = "Signal Intensity",
  vx
)
}
\arguments{
\item{plot_df}{a dataframe with column names c(xc, yc, cn, "lower", "upper")}

\item{xc}{a string denoting column name for values on x-axis}

\item{yc}{a string denoting column name for numeric data to be plotted}

\item{cn}{column name in plot_df for query samples grouping}

\item{sn}{column name in plot_df for subject name to be shown in the plot 
title}

\item{Ylab}{a string for Y-axis label}

\item{vx}{a vector on integers denoting the x coordinates of start of each 
sub-region}
}
\value{
a ggplot object
}
\description{
Plot lines with standard error as the error band
}
\note{
used by \code{\link{plot_5parts_metagene}}, \code{\link{plot_region}}
}
\examples{
library(dplyr)
Reference <- rep(rep(c("Ref1", "Ref2"), each = 100), 2)
Query <- rep(c("Query1", "Query2"), each = 200)
Position <- rep(seq_len(100), 4)
Intensity <- rlnorm(400)
se <- runif(400)
df <- data.frame(Intensity, se, Position, Query, Reference) \%>\%
    mutate(lower = Intensity - se, upper = Intensity + se) \%>\%
    mutate(Group = paste(Query, Reference, sep = ":"))
vx <- c(1, 23, 70)

p <- draw_region_profile(df, cn = "Group", vx = vx)
p

}
\author{
Shuye Pu
}
