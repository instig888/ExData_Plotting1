rawData <- read.table(file ="household_power_consumption.txt", stringsAsFactors=FALSE, header=TRUE, sep = ";", na.strings = c("?"))
tbl <- data.table(rawData)
subTbl <- tbl[(tbl$Date=="2/2/2007") | (tbl$Date=="1/2/2007"),]
png("plot3.png",width=480,height=480)
plot(subTbl$Sub_metering_1,subTbl$date,type ="l",xlab="Energy Sub Metering")
lines(subTbl$Sub_metering_2,subTbl$date,type="l",col="red")
lines(subTbl$Sub_metering_3,subTbl$date,type="l",col="blue")
legend(1000,40,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),inset = 0,
       lty=c(1,1,1), lwd=c(2,2,2), col=c("black","red","blue"))


dev.off()