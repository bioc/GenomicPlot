% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DrawingFunctions.R
\name{draw_quantile_plot}
\alias{draw_quantile_plot}
\title{Plot quantile over value}
\usage{
draw_quantile_plot(
  stat_df,
  xc = "Feature",
  yc = "Intensity",
  Ylab = yc,
  fc = xc
)
}
\arguments{
\item{stat_df}{a dataframe with column names c(xc, yc)}

\item{xc}{a string denoting column name for grouping}

\item{yc}{a string denoting column name for numeric data to be plotted}

\item{Ylab}{a string for y-axis label}

\item{fc}{a string denoting column name for sub-grouping based on an 
additional factor}
}
\value{
a ggplot object
}
\description{
Plot quantiles as y-axis, and values as x-axis. Same as 
`geom_ecdf`, but allows sub-grouping by a second factor.
}
\note{
used by \code{\link{plot_locus}}, \code{\link{plot_locus_with_random}}
}
\examples{
stat_df <- data.frame(
    Feature = rep(c("A", "B"), c(20, 30)),
    Intensity = c(rnorm(20, 2, 5), rnorm(30, 3, 5)),
    Height = c(rnorm(20, 5, 5), rnorm(30, 1, 5))
)
stat_df_long <- tidyr::pivot_longer(stat_df,
    cols = c(Intensity, Height), names_to = "type",
    values_to = "value"
)

print(draw_quantile_plot(stat_df, xc = "Feature", yc = "Intensity"))
print(draw_quantile_plot(stat_df, xc = "Feature", yc = "Height"))
print(draw_quantile_plot(stat_df_long,
    xc = "Feature", yc = "value",
    fc = "type", Ylab = "value"
))

}
\author{
Shuye Pu
}
