\name{ORDERS}
\alias{ORDERS}
\docType{data}
\title{Order data}
\description{
 This data describes the information about each order, the order status, comments by sales, and the dates of order events such as the order date.
}
\usage{data("ORDERS")}
\format{
  A data frame with 326 observations on the following 7 variables.
  \describe{
    \item{\code{ORDERNUMBER}}{a numeric vector}
    \item{\code{ORDERDATE}}{date the order was created}
    \item{\code{REQUIREDDATE}}{date the order is required}
    \item{\code{SHIPPEDDATE}}{date the order shipped}
    \item{\code{STATUS}}{a character vector}
    \item{\code{COMMENTS}}{a character vector}
    \item{\code{CUSTOMERNUMBER}}{a numeric vector}
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
data(ORDERS)
## maybe str(ORDERS) ; plot(ORDERS) ...
ORDERS$ORDERDATE[2]
}
\keyword{datasets}
