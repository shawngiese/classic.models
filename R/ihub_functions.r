#' Collecting information to connect to your server
#'
#' The default Information Hub connection is to http://localhost
#' with a user name of 'administrator'. If your server is different
#' use this function to collect the new information. This updates
#' a file named ihub_connect.rdata to hold this information for the
#' other methods to use.
#' @return A file containing the connection information
#' @export

set_connection_info <- function(){
  server <- readline("What is the server name; http://")
  username <- readline("What is your username?")
  password <- readline("What is your password?")

print(paste("iHub Server:", server, " - iHub user name:", username, " - iHub password:", password))
connect <- list(ihub.server=server, ihub.username=username, ihub.password=password)
save(connect,file="ihub_connect.rdata")
}

#' Upload a file to Information Hub
#'
#' Upload a file from the R workspace to a location on
#' Information Hub volume. 
#' 
#' @examples
#' upload2ihub('readme.md','/Resources/','')
#' 
#' @return Response code from the Information Hub server
#' @param filename the name and file extension
#' @param folder the path on ihub volume to store file like /Resources/
#' @param overwrite true to overwrite existing file 
#' @export

upload2ihub <- function(filename,folder,overwrite){
require(curl)
require(jsonlite)
require(httr)

#SET LOGIN information
load("ihub_connect.rdata")
login <- list(
  username = connect$ihub.user,
  password = connect$ihub.password
)

#GET AUTHTOKEN - add verbose() as last encode for debugging
url.login <- paste("http://",connect$ihub.server,":8000/api/v2/login",sep="")
req <- httr::POST(url.login,
  body = login,
  encode = "form"
);
token <- paste(content(req)$authToken)

#UPLOAD FILE with authToken to a volume directory
#mime type is guessed from extension, otherwise add the mimetype
# upload_file("test.pdf", "application/pdf"))
# overwrite and mime not yet in code
url.upload <- paste("http://",connect$ihub.server,":8000/api/v2/files/upload",sep="")
req2 <- httr::POST(url.upload,
  httr::add_headers(
    "AuthToken" = token,
    "Content-Type" = "multipart/form-data",
	"Accept-Encoding" = "gzip, deflate",
    "Accept" = "application/json"
  ),
  body=list(name=paste(folder,filename,sep=""), file=upload_file(filename))
);
print(req2)
}


#' Get data set from Information Hub
#'
#' Download a data from a data object and
#' put it into a data frame. 
#' 
#' @examples
#' get_dataset('myDataFrame', '/Resources/Data Objects/')
#' 
#' @return A dataframe created from the values in the data set
#'   
#' @param dataframe the name of the new data frame
#' @param folder the path on ihub volume to store file like /Resources/
#' @export
get_dataset <- function(dataframe,folder){
require(curl)
require(jsonlite)
require(httr)

if (folder == '') { folder = '/Resources/' } 

load("ihub_connect.rdata")
#SET LOGIN INFORMATION
login <- list(
  username = connect$ihub.user,
  password = connect$ihub.password
)

#GET AUTH TOKEN - add verbose() as last encode for debugging
url.login <- paste("http://",connect$ihub.server,":8000/api/v2/login",sep="")
req <- httr::POST(url.login,	
  body = login,
  encode = "form"
);
token <- paste(content(req)$authToken)
myfolder = 
#GET DATA FILES with authToken - http://localhost:8000/api/v2/files?search=%2FResources%2F*.data
url.dataobjects <- paste("http://",connect$ihub.server,":8000/api/v2/files?search=",URLencode(folder),"*.data",sep="")
req2 <- httr::GET(url.dataobjects, add_headers(AuthToken = token))
json <- httr::content(req2, as = "text")
mydata1 <- fromJSON(json)
datafiles = NULL

for (i in 1:length(mydata1$itemList$file$name))
	datafiles[i] <- mydata1$itemList$file$name[i]
choicefile <- menu(datafiles, title = 'Select a data object file')

#USE mydata1$itemList$file$id[choicefile]

#GET DATA SETS with authToken - http://localhost:8000/api/v2/dataobjects/15000000100
url.datasets <- paste("http://",connect$ihub.server,":8000/api/v2/dataobjects/",mydata1$itemList$file$id[choicefile],sep="")
req3 <- httr::GET(url.datasets, add_headers(AuthToken = token))
json2 <- httr::content(req3, as = "text")
mydata2 <- fromJSON(json2)
datasets = NULL

for (i in 1:length(mydata2$GetMetaDataResponse$ArrayOfResultSetSchema$ResultSetSchema$ResultSetName))
	datasets[i] <- mydata2$GetMetaDataResponse$ArrayOfResultSetSchema$ResultSetSchema$ResultSetName[i]
choicedataset <- select.list(datasets, title = 'Select a data set to download')

#USE choicedataset

#DOWNLOAD DATA SETS with authToken - http://localhost:8000/api/v2/dataobjects/15000000100/Customers
url.data <- paste("http://",connect$ihub.server,":8000/api/v2/dataobjects/",mydata1$itemList$file$id[choicefile],"/",URLencode(choicedataset),sep="")
req4 <- httr::GET(url.data, add_headers(AuthToken = token))
json3 <- httr::content(req4, as = "text")
mydata3 <- fromJSON(json3)

assign(paste(dataframe), mydata3[['data']], envir=globalenv())
}