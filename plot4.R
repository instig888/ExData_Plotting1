#rawData <- read.table(file ="household_power_consumption.txt", stringsAsFactors=FALSE, header=TRUE, sep = ";", na.strings = c("?"))
#tbl <- data.table(rawData)
#subTbl <- tbl[(tbl$Date=="2/2/2007") | (tbl$Date=="1/2/2007"),]
png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(subTbl$Global_active_power,subTbl$date,type ="l")

plot(subTbl$Sub_metering_1,subTbl$date,type ="l",xlab="Energy Sub Metering")

plot (subTbl$Voltage,subTbl$date,type="l",ylab="Voltage", xlab="datetime")
lines(subTbl$Sub_metering_2,subTbl$date,type="l",col="red")
lines(subTbl$Sub_metering_3,subTbl$date,type="l",col="blue")
legend(1000,40,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),inset = 0,
       lty=c(1,1,1), lwd=c(2,2,2), col=c("black","red","blue"))
plot (subTbl$Global_reactive_power,subTbl$date,type="l",ylab="Voltage", xlab="datetime")


dev.off()