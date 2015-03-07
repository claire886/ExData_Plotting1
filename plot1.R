dataraw <- read.table("household_power_consumption.txt", sep=";", stringsAsFactors=F, header=T)   ##read in raw data
data <- subset(dataraw, dataraw$Date == "1/2/2007" | dataraw$Date == "2/2/2007")    ## subset data for 1/2/2007 - 2/2/2007
data$Global_active_power <- as.numeric(data$Global_active_power)    ##transform to be numeric

##plotting
library(datasets)
png(file = "plot1.png")   ##to make the plot to be saved in a png file
hist(data$Global_active_power, col="red", xlab = "Global Active Power(kilowatts)", main = "Global Active Power")
dev.off()
