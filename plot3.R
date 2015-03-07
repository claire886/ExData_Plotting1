dataraw <- read.table("household_power_consumption.txt", sep=";", stringsAsFactors=F, header=T)
data <- subset(dataraw, dataraw$Date == "1/2/2007" | dataraw$Date == "2/2/2007")
data$datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
library(datasets)

png(file = "plot3.png")

with(data, plot(data$datetime, data$Sub_metering_1, type="l", col = "black", xlab = "", ylab = "Energy sub metering"))
lines(data$datetime, data$Sub_metering_2, col = "red")
lines(data$datetime, data$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)

dev.off()
