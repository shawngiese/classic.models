\name{CUSTOMERS}
\alias{CUSTOMERS}
\docType{data}
\title{Customer data}
\description{
  This data includes the customer contact information, the customer credit limit and the sales representative assigned to the customer.
}
\usage{data("CUSTOMERS")}
\format{
  A data frame with 122 observations on the following 13 variables.
  \describe{
    \item{\code{CUSTOMERNUMBER}}{a numeric vector}
    \item{\code{CUSTOMERNAME}}{a character vector}
    \item{\code{CONTACTLASTNAME}}{a character vector}
    \item{\code{CONTACTFIRSTNAME}}{a character vector}
    \item{\code{PHONE}}{a character vector}
    \item{\code{ADDRESSLINE1}}{a character vector}
    \item{\code{ADDRESSLINE2}}{a character vector}
    \item{\code{CITY}}{a character vector}
    \item{\code{STATE}}{a character vector}
    \item{\code{POSTALCODE}}{a character vector}
    \item{\code{COUNTRY}}{a character vector}
    \item{\code{SALESREPEMPLOYEENUMBER}}{a numeric vector}
    \item{\code{CREDITLIMIT}}{a numeric vector}
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
data(CUSTOMERS)
str(CUSTOMERS)
names(CUSTOMERS)
summary(CUSTOMERS)
head(CUSTOMERS)
quantile(CUSTOMERS$CREDITLIMIT)
## group and extract values
unique(CUSTOMERS$COUNTRY)
aggregate(CUSTOMERS$CREDITLIMIT, by=list(CUSTOMERS$COUNTRY), FUN=mean)

##use with the other classic.models data sets. For example make an inner join with:
##     newtable <- merge(CUSTOMERS,ORDERS)
}
\keyword{datasets}
