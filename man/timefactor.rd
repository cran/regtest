\name{timefactor}
\alias{timefactor}
\title{ compare timing of two expressions }
\description{
  Compare timings of two expressions, expressions that do not take enough time to be measured can be repeated often enough to be measured.
}
\usage{
timefactor(nom, denom, repnom = 1, repdenom = 1)
}
\arguments{
  \item{nom}{ nominator expression }
  \item{denom}{ denominator expression }
  \item{repnom}{ no. of repetitions of nominator }
  \item{repdenom}{ no. of repetitions of denominator }
}
\value{
  matrix with absolzute and relative timings
}
\author{ Jens Oehlschlägel }
\seealso{ \code{\link{system.time}}, \code{\link{Sys.sleep}} }
\examples{
  timefactor(Sys.sleep(0.1), Sys.sleep(1), 10, 1)
}
\keyword{ misc }
