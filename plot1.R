rawData <- read.table(file ="household_power_consumption.txt", stringsAsFactors=FALSE, header=TRUE, sep = ";", na.strings = c("?"))
tbl <- data.table(rawData)
subTbl <- tbl[(tbl$Date=="2/2/2007") | (tbl$Date=="1/2/2007"),]

png("plot1.png",width=480,height=480)

hist(subTbl$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.off()