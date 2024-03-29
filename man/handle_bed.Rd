% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ReadData.R
\name{handle_bed}
\alias{handle_bed}
\title{Handle files in bed|narrowPeak|broadPeak format}
\usage{
handle_bed(inputFile, importParams = NULL, verbose = FALSE)
}
\arguments{
\item{inputFile}{a string denoting path to the input file}

\item{importParams}{a list of parameters, refer to \code{\link{handle_input}}
for details}

\item{verbose}{logical, whether to output additional information}
}
\value{
a list object with four elements, 'query' is a list GRanges objects
or RleList objects, 'size' is the library size, 'type' is the input file
type, 'weight' is the name of the metadata column to be used as weight for
coverage calculation
}
\description{
This is a function for read peaks data in bed format, store the
input data in a list of GRanges objects or RleList objects.
}
\examples{
queryFiles <- system.file("extdata", "test_chip_peak_chr19.narrowPeak",
    package = "GenomicPlot"
)
names(queryFiles) <- "narrowPeak"

bedimportParams <- setImportParams(
    offset = 0, fix_width = 100, fix_point = "center", norm = FALSE,
    useScore = FALSE, outRle = TRUE, useSizeFactor = FALSE, genome = "hg19"
)

out <- handle_bed(queryFiles, bedimportParams, verbose = TRUE)
lapply(out$query, sum)

}
\author{
Shuye Pu
}
