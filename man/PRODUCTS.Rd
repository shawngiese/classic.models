\name{PRODUCTS}
\alias{PRODUCTS}
\docType{data}
\title{Product data}
\description{
  This data describes each product.
}
\usage{data("PRODUCTS")}
\format{
  A data frame with 110 observations on the following 9 variables.
  \describe{
    \item{\code{PRODUCTCODE}}{a character vector}
    \item{\code{PRODUCTNAME}}{a character vector}
    \item{\code{PRODUCTLINE}}{a character vector}
    \item{\code{PRODUCTSCALE}}{a character vector}
    \item{\code{PRODUCTVENDOR}}{a character vector}
    \item{\code{PRODUCTDESCRIPTION}}{a character vector}
    \item{\code{QUANTITYINSTOCK}}{a numeric vector}
    \item{\code{BUYPRICE}}{a numeric vector}
    \item{\code{MSRP}}{a numeric vector}
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
data(PRODUCTS)
## maybe str(PRODUCTS) ; plot(PRODUCTS) ...
}
\keyword{datasets}
