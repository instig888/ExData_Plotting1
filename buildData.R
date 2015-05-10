setwd("c:/Users/wgates/Documents/RCode/ExploreData/ExData_Plotting1/")
rawData <- read.table(file ="household_power_consumption.txt", stringsAsFactors=FALSE, header=TRUE, sep = ";", na.strings = c("?"))
tbl <- data.table(rawData)
subTbl <- tbl[(tbl$Date=="2/2/2007") | (tbl$Date=="1/2/2007"),]
hist(subTbl$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

plot(subTbl$Global_active_power,subTbl$date,type ="l")


plot(subTbl$Sub_metering_1,subTbl$date,type ="l")