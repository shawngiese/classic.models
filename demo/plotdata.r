# Create a bar plot
# This demo merges two data sets and aggregates the data.

mydata <- merge(ORDERDETAILS, ORDERS, "ORDERNUMBER")
shipping = aggregate(PRICEEACH*QUANTITYORDERED ~ STATUS, mydata, sum)
colnames(shipping) <- c("Status", "Value")
readline("press any key to continue")

#Display table
print(shipping)

# Set scipen to disable scientific notation in axis.
# Not needed in this example because we create our own axis.
# options(scipen=999)

# Create the bar plot and attach the axis with labels.
myplot = barplot(shipping$Value, names.arg=shipping$Status, ylim = c( 0 , 10000000 ), xlab="Status", yaxt="n")
my.axis <- paste("$",prettyNum(axTicks(2)/1000, big.mark = ","),"K",sep=" ")
axis(2,at=axTicks(2), labels=my.axis, las=1)
my.bars <-paste("$",prettyNum(round(shipping$Value/1000), big.mark = ","),"K",sep=" ")
text(myplot, shipping$Value, labels=my.bars, pos=3, offset=.1)

