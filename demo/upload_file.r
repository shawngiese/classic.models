# R script to load file to iHub
# SG 5/2017

#Load libraries
require(ggplot2)
require(curl)
require(jsonlite)
require(httr)
load("ihub_connect.rdata")

readline("press any key to continue")

#Make a PDF file
data("mtcars")
pdf("test.pdf")
myplot <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
print(myplot)
dev.off()
readline("press any key to continue")

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
readline("press any key to continue")

#Upload file with authToken to volume root directory
#mime type is guessed from extension, otherwise add the mimetype
# upload_file("test.pdf", "application/pdf"))
url.upload <- paste("http://",connect$ihub.server,":8000/api/v2/files/upload",sep="")
req2 <- httr::POST(url.upload,
  httr::add_headers(
    "AuthToken" = token,
    "Content-Type" = "multipart/form-data",
	"Accept-Encoding" = "gzip, deflate",
    "Accept" = "application/json"
  ),
  body=list(name="test3.pdf", file=upload_file("test.pdf"))
);
print(req2)