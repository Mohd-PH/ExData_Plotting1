source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

dataset <- read.table("household_power_consumption.txt", sep =";", skip = 66637, nrow=2880)
names(dataset) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

## Set data types
dataset$Date <- as.POSIXct(dataset$Date, format="%e/%m/%Y")
dataset$Time <- as.POSIXct(paste(dataset$Date, dataset$Time))
dataset$Global_active_power <- as.numeric(dataset$Global_active_power)
dataset$Global_reactive_power <- as.numeric(dataset$Global_reactive_power)
dataset$Voltage <- as.numeric(dataset$Voltage)
dataset$Global_intensity <- as.numeric(dataset$Global_intensity)
dataset$Sub_metering_1 <- as.numeric(dataset$Sub_metering_1)
dataset$Sub_metering_2 <- as.numeric(dataset$Sub_metering_2)
dataset$Sub_metering_3 <- as.numeric(dataset$Sub_metering_3)




makeplot1(dataset)
makeplot2(dataset)
makeplot3(dataset)
makeplot4(dataset)