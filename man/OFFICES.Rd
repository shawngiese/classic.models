\name{OFFICES}
\alias{OFFICES}
\docType{data}
\title{Office location data}
\description{
  This data describes the company offices, the assigned territory of each office and the office code.
}
\usage{data("OFFICES")}
\format{
  A data frame with 7 observations on the following 9 variables.
  \describe{
    \item{\code{OFFICECODE}}{a character vector}
    \item{\code{CITY}}{a character vector}
    \item{\code{PHONE}}{a character vector}
    \item{\code{ADDRESSLINE1}}{a character vector}
    \item{\code{ADDRESSLINE2}}{a character vector}
    \item{\code{STATE}}{a character vector}
    \item{\code{COUNTRY}}{a character vector}
    \item{\code{POSTALCODE}}{a character vector}
    \item{\code{TERRITORY}}{a character vector}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
http://www.eclipse.org/birt/documentation/sample-database.php
}
\references{
http://www.eclipse.org/legal/epl/notice.php
}
\examples{
data(OFFICES)
## maybe str(OFFICES) ; plot(OFFICES) ...
}
\keyword{datasets}
