% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ihub_functions.r
\name{get_dataset}
\alias{get_dataset}
\title{Get data set from Information Hub}
\usage{
get_dataset(dataframe, folder)
}
\arguments{
\item{dataframe}{the name of the new data frame}

\item{folder}{the path on ihub volume to store file like /Resources/}
}
\value{
A dataframe created from the values in the data set
}
\description{
Download a data from a data object and
put it into a data frame.
}
\examples{
get_dataset('myDataFrame', '/Resources/Data Objects/')

}
