## ---- eval=FALSE---------------------------------------------------------
#  ORDERS$ORDERDATE <- as.Date(ORDERS$ORDERDATE, format= "%Y-%m-%d")
#  ORDERS$REQUIREDDATE <- as.Date(ORDERS$REQUIREDDATE, format= "%Y-%m-%d")
#  ORDERS$SHIPPEDDATE <- as.Date(ORDERS$SHIPPEDDATE, format= "%Y-%m-%d")
#  PAYMENTS$PAYMENTDATE <- as.Date(PAYMENTS$PAYMENTDATE, format= "%Y-%m-%d")

## ---- eval=FALSE---------------------------------------------------------
#  data <- merge(ORDERDETAILS, ORDERS, "ORDERNUMBER")

## ---- eval=FALSE---------------------------------------------------------
#  plot(data$ORDERDATE, data$PRICEEACH)

## ---- eval=FALSE---------------------------------------------------------
#  shipping = aggregate(PRICEEACH*QUANTITYORDERED ~ STATUS, data, sum)
#  colnames(shipping) <- c("Status", "Value")
#  # options(scipen=999)
#  myplot = barplot(shipping$Value, names.arg=shipping$Status, ylim = c( 0 , 10000000 ), xlab="Status", yaxt="n")
#  my.axis <- paste("$",prettyNum(axTicks(2)/1000, big.mark = ","),"K",sep=" ")
#  axis(2,at=axTicks(2), labels=my.axis, las=1)
#  my.bars <-paste("$",prettyNum(round(shipping$Value/1000), big.mark = ","),"K",sep=" ")
#  text(myplot, shipping$Value, labels=my.bars, pos=3, offset=.1)

