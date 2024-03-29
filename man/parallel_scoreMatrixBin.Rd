% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Parallel.R
\name{parallel_scoreMatrixBin}
\alias{parallel_scoreMatrixBin}
\title{Parallel execution of scoreMatrixBin on a huge target windows object
split into chunks}
\usage{
parallel_scoreMatrixBin(
  queryRegions,
  windowRs,
  bin_num,
  bin_op,
  weight_col,
  stranded,
  nc = 2
)
}
\arguments{
\item{queryRegions}{a RleList object or Granges object providing input for
the 'target' parameter of the scoreMatrixBin method.}

\item{windowRs}{a single GRangesList object.}

\item{bin_num}{number of bins the windows should be divided into}

\item{bin_op}{operation on the signals in a bin, a string in c("mean", "max",
"min", "median", "sum") is accepted.}

\item{weight_col}{if the queryRegions is a GRanges object, a numeric column
in meta data part can be used as weights.}

\item{stranded}{logical, indicating if the strand of the windows should be
considered to determine upstream and downstream.}

\item{nc}{an integer denoting the number of cores requested, 2 is the default
number that is allowed by CRAN but 5 gives best trade-off between speed and
space.}
}
\value{
a numeric matrix
}
\description{
Function for parallel computation of scoreMatrixBin. The
'windows' parameter of the scoreMatrixBin method is split into nc chunks,
and scoreMatrixBin is called on each chunk simultaneously to speed up the
 computation.
}
\examples{
queryFiles <- system.file("extdata", "chip_treat_chr19.bam",
    package = "GenomicPlot"
)
names(queryFiles) <- "query"

chipimportParams <- setImportParams(
    offset = 0, fix_width = 150, fix_point = "start", norm = TRUE,
    useScore = FALSE, outRle = TRUE, useSizeFactor = FALSE, genome = "hg19"
)

queryRegion <- handle_input(queryFiles, chipimportParams,
    verbose = TRUE
)[[1]]$query

windowFiles <- system.file("extdata", "test_chip_peak_chr19.narrowPeak",
    package = "GenomicPlot"
)
names(windowFiles) <- "narrowPeak"

importParams <- setImportParams(
    offset = 0, fix_width = 0, fix_point = "start", norm = FALSE,
    useScore = FALSE, outRle = FALSE, useSizeFactor = FALSE, genome = "hg19"
)

windowRegion <- handle_bed(windowFiles, importParams, verbose = TRUE)$query

out <- parallel_scoreMatrixBin(
    queryRegions = queryRegion,
    windowRs = windowRegion,
    bin_num = 50,
    bin_op = "mean",
    weight_col = "score",
    stranded = TRUE,
    nc = 2
)
#
}
\author{
Shuye Pu
}
