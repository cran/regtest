\name{binregtest}
\alias{binregtest}
\title{ Binary regression test }
\description{
  This function compares to parallel implementations of the same function for equality with respect to all (defined) parameter combinations.
}
\usage{
binregtest(FUN1, FUN2, ..., PARS = NULL, PAR1 = NULL, PAR2 = NULL, WHICH = sample(1:n), TRYALL = TRUE, COMP = is.all.equal, NAME = "UNNAMED binregtest", VERBOSE = FALSE)
}
\arguments{
  \item{FUN1}{ first function }
  \item{FUN2}{ second function }
  \item{\dots}{ common arguments, each specified as a list }
  \item{PARS}{ list of common arguments, each specified as a list, helps to use argument names that are used by \code{binregtest} itself}
  \item{PAR1}{ optional parameters only handed over to FUN1 (default NULL) }
  \item{PAR2}{ optional parameters only handed over to FUN2 (default NULL) }
  \item{WHICH}{ optional integer vector defining a subset of the possible parameter combinations }
  \item{TRYALL}{ FALSE to interrupt testing once an error has been found (default TRUE tests everything) }
  \item{COMP}{ function to compare results (default \code{\link{is.all.equal}}) }
  \item{NAME}{ character scalar describing this regression test }
  \item{VERBOSE}{ TRUE to verbose all tests (default FALSE) }
}
\value{
  TRUE if all tests were successful, FALSE otherwise
}
\author{ Jens Oehlschlägel }
\seealso{ \code{\link{try}}, \code{\link{is.all.equal}} }
\examples{
wronglog <- function(x, base=exp(1)){
  if (x>0)
    log(x, base=base)
  else
    NA
}
binregtest(wronglog, log, x=as.list(0:3), base=list(2, exp(1), 10))
}
\keyword{ debugging }
\keyword{ documentation }
