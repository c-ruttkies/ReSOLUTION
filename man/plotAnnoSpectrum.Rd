% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotMSMS.R
\name{plotAnnoSpectrum}
\alias{plotAnnoSpectrum}
\title{Plot Single Annotated MS/MS Spectrum}
\usage{
plotAnnoSpectrum(mz, int, main, smiles="", labels=NULL,mz_a=NA,int_a=NA, formatFormula=TRUE,
absInt=FALSE,ylim_factor=2.5,max_xlim=0,kekulise=TRUE,legend=c("spec1","spec2"))
}
\arguments{
\item{mz}{Vector containing mz values (x) to plot.}

\item{int}{Vector containing intensity values (y) to plot.}

\item{main}{Title for the plot.}

\item{smiles}{SMILES code of the structure to plot. Leave empty for no structure.}

\item{labels}{Vector containing labels for selected peaks. If \code{NULL}, no labels
are plotted.}

\item{formatFormula}{If \code{TRUE}, uses \code{chemistry2expression} to create subscript numbers.
Any \code{+} or \code{-} are removed to avoid errors. If \code{FALSE}, \code{labels} are printed as is.
This is passed to \code{chem2express} in \code{\link{plotSpectra}}.}

\item{mz_a}{Vector containing mz values for second spectrum.}

\item{int_a}{Vector containing intensity values for second spectrum.}

\item{absInt}{If \code{TRUE}, absolute intensity values are used. If \code{FALSE}, relative intensities
are calculated on individual spectra, scaled to 1000.}

\item{ylim_factor}{Scaling factor for y-axis. Default \code{2.5} leaves ample space for structure,
annotations and legend. Reduce for peaks only. Passed to \code{yfactor} in \code{\link{plotSpectra}}.}

\item{max_xlim}{Option to control the maximum value on the x axis. Passed to \code{xlim} in
\code{\link{plotSpectra}} as \code{c(0,max_xlim)}}

\item{kekulise}{Controls aromaticity detection of \code{smiles}. Default \code{TRUE}
should work best with rcdk>3.4.1. Try \code{FALSE} if rings and double bonds appear together
in aromatic rings.}

\item{legend}{Vector containing legend entries for the two spectra.}
}
\value{
Returns a plot in the current plotting device.
}
\description{
This is a wrapper function for \code{\link{plotSpectra}} for backwards
compatability with previous workflows/scripts. \code{\link{plotSpectra}} offers
much more functionality.
}
\examples{
mz_1 <- c(58.0287, 111.0441, 168.0655, 210.1125)
int_1 <- c(23.0000, 999.0000, 843.5855, 999.0000)
labels_1 <- c("C2H4NO", "C6H7O2", "C8H10NO3", "C11H16NO3")
smiles_1 <- "O=C(Oc1ccccc1OC(C)C)NC"
plotAnnoSpectrum(mz_1, int_1, main="test spec",labels=labels_1, smiles=smiles_1, mz_a = mz_1,
int_a = int_1)

}
\author{
Emma Schymanski <emma.schymanski@uni.lu>
}
\seealso{
\code{\link{plotSpectra}}, \code{\link{renderSMILES.rcdk}}, \code{\link{chemistry2expression}},
\code{\link{trimAnnotation}}.
}

