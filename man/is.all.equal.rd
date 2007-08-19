\name{is.all.equal}
\alias{is.all.equal}
\title{ wrapper for all.equal }
\description{
  like all.equal but always returns logical
}
\usage{
is.all.equal(a, b, \dots)
}
\arguments{
  \item{a}{ expression to compare }
  \item{b}{ expression to compare }
  \item{\dots}{ further arguments to \code{\link{all.equal}} }
}
\value{ TRUE or FALSE }
\author{ Jens Oehlschlägel }
\seealso{ \code{\link{all.equal}}, \code{\link{identical}}, \code{\link{binregtest}} }
\examples{
  all.equal(1,2)
  is.all.equal(1,2)
}
\keyword{ debugging }
\keyword{ utilities }
