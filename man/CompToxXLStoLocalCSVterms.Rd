% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MetFragConfigR.R
\name{CompToxXLStoLocalCSVterms}
\alias{CompToxXLStoLocalCSVterms}
\title{Prepare CompTox Dashboard MetFrag Export XLS files for MetFragCL}
\usage{
CompToxXLStoLocalCSVterms(xls_file, start_index=15, csv_file= "")
}
\arguments{
\item{xls_file}{Full path and file name to the Dashboard Export file to process}

\item{start_index}{The column number where the metadata columns start (default \code{15} is appropriate
for CompTox Dashboard MetFragBeta Export file format released March 2018)}

\item{csv_file}{If empty, the CSV file will have the same name as \code{xls_file} except the file ending.
Enter a file name here if you wish to have a different named file. If a CSV file
with the same name exists in the directory it is overwritten.}
}
\value{
Returns a list containing the CSV file name, a list of scoring terms to add to
the MetFrag config file and a corresponding score weights entry.
}
\description{
This function prepares CompTox XLS Export files for use in MetFragCL. It converts the
XLS to a CSV and extracts numeric metadata field names for inclusion as scoring terms.
}
\examples{
CompToxXLS <- system.file("extdata","CompToxBatchSearch_MetFrag_MSready_C10H14N2.xls",package="ReSOLUTION")
LocalCSVterms <- CompToxXLStoLocalCSVterms(CompToxXLS)

}
\author{
Emma Schymanski <emma.schymanski@uni.lu> in partnership with Christoph Ruttkies (MetFragCL),
Antony J. Williams and team (CompTox Dashboard)
}
\seealso{
\code{\link{MetFragConfig}}, \code{\link{runMetFrag}}
}

