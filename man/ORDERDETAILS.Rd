\name{ORDERDETAILS}
\alias{ORDERDETAILS}
\docType{data}
\title{Order detail data}
\description{
  This data describes the details of each line of an order.
}
\usage{data("ORDERDETAILS")}
\format{
  A data frame with 2996 observations on the following 5 variables.
  \describe{
    \item{\code{ORDERNUMBER}}{a numeric vector}
    \item{\code{PRODUCTCODE}}{a character vector}
    \item{\code{QUANTITYORDERED}}{a numeric vector}
    \item{\code{PRICEEACH}}{a numeric vector}
    \item{\code{ORDERLINENUMBER}}{a numeric vector}
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
data(ORDERDETAILS)
## maybe str(ORDERDETAILS) ; plot(ORDERDETAILS) ...
}
\keyword{datasets}
