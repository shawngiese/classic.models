# R script to load data from iHub
# SG 5/2017

#Load libraries
require(curl)
require(jsonlite)
require(httr)
load("ihub_connect.rdata")

#Set login information
login <- list(
  username = connect$ihub.user,
  password = connect$ihub.password
)
readline("press any key to continue")

#Get authToken - add verbose() as last encode for debugging
url.login <- paste("http://",connect$ihub.server,":8000/api/v2/login",sep="")
req <- httr::POST(url.login,	
  body = login,
  encode = "form"
);
token <- paste(content(req)$authToken)


#Get data with authToken
url.dataobjects <- paste("http://",connect$ihub.server,":8000/api/v2/dataobjects/15000000100/Customers",sep="")
req2 <- httr::GET(url.dataobjects, add_headers(AuthToken = token))
json <- httr::content(req2, as = "text")
mydata <- fromJSON(json)

customer_data_frame = mydata[['data']]
readline("press any key to continue")

head(customer_data_frame)
readline("press any key to continue")

str(customer_data_frame)