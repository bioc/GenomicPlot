% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ReadData.R
\name{handle_bw}
\alias{handle_bw}
\title{Handle files in bw|bigwig|bigWig|BigWig|BW|BIGWIG format}
\usage{
handle_bw(inputFile, importParams, verbose = FALSE)
}
\arguments{
\item{inputFile}{a string denoting path to the input file}

\item{importParams}{a list of parameters, refer to \code{\link{handle_input}}
for details}

\item{verbose}{logical, whether to output additional information}
}
\value{
a list object with four elements, 'query' is a list GRanges objects
or RleList objects, 'size' is the estimated library size, 'type' is the
input file type, weight' is the name of the metadata column to be used as
weight for coverage calculation
}
\description{
This is a function for read NGS coverage data in bigwig format,
store the input data in a list of GRanges objects or RleList objects. The
input bw file can be stranded or non-stranded. Library size is calculate as
the sum of all coverage.
}
\details{
For stranded files, forward and reverse strands are stored in
separate files, with '+' or 'p' in the forward strand file name and '-' or
'm' in the reverse strand  file name.
}
\examples{

queryFiles <- system.file("extdata", "test_wig_chr19_+.bw",
    package = "GenomicPlot"
)
names(queryFiles) <- "test_bw"

wigimportParams <- setImportParams(
    offset = 0, fix_width = 0, fix_point = "start", norm = FALSE,
    useScore = FALSE, outRle = TRUE, useSizeFactor = FALSE, genome = "hg19"
)

out <- handle_bw(queryFiles, wigimportParams, verbose = TRUE)

}
\author{
Shuye Pu
}
