dataraw <- read.table("household_power_consumption.txt", sep=";", stringsAsFactors=F, header=T)
data <- subset(dataraw, dataraw$Date == "1/2/2007" | dataraw$Date == "2/2/2007")
data$datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
library(datasets)
png(file = "plot2.png")
with(data, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power(kilowatts)"))
dev.off()