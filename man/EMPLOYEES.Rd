\name{EMPLOYEES}
\alias{EMPLOYEES}
\docType{data}
\title{Employee data}
\description{
  This data includes the information of the sales employee and their position.
}
\usage{data("EMPLOYEES")}
\format{
  A data frame with 23 observations on the following 8 variables.
  \describe{
    \item{\code{EMPLOYEENUMBER}}{a numeric vector}
    \item{\code{LASTNAME}}{a character vector}
    \item{\code{FIRSTNAME}}{a character vector}
    \item{\code{EXTENSION}}{a character vector}
    \item{\code{EMAIL}}{a character vector}
    \item{\code{OFFICECODE}}{a character vector}
    \item{\code{REPORTSTO}}{a numeric vector}
    \item{\code{JOBTITLE}}{a character vector}
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
data(EMPLOYEES)
## maybe str(EMPLOYEES) ; plot(EMPLOYEES) ...
}
\keyword{datasets}
