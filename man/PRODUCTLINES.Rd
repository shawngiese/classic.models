\name{PRODUCTLINES}
\alias{PRODUCTLINES}
\docType{data}
\title{Product line data}
\description{
  This data summarizes the product lines for all products sold.
}
\usage{data("PRODUCTLINES")}
\format{
  A data frame with 7 observations on the following 4 variables.
  \describe{
    \item{\code{PRODUCTLINE}}{a character vector}
    \item{\code{TEXTDESCRIPTION}}{a character vector}
    \item{\code{HTMLDESCRIPTION}}{a character vector}
    \item{\code{IMAGE}}{a list vector}
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
data(PRODUCTLINES)
## maybe str(PRODUCTLINES) ; plot(PRODUCTLINES) ...
}
\keyword{datasets}
