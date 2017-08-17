\name{PAYMENTS}
\alias{PAYMENTS}
\docType{data}
\title{Payment data
}
\description{
  This data describes the payments made by each client.
}
\usage{data("PAYMENTS")}
\format{
  A data frame with 273 observations on the following 4 variables.
  \describe{
    \item{\code{CUSTOMERNUMBER}}{a numeric vector}
    \item{\code{CHECKNUMBER}}{a character vector}
    \item{\code{PAYMENTDATE}}{date the payment was processed}
    \item{\code{AMOUNT}}{a numeric vector}
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
data(PAYMENTS)
## maybe str(PAYMENTS) ; plot(PAYMENTS) ...
}
\keyword{datasets}
