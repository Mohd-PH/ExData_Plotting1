makeplot4 <- function(dataset){
  png(filename = "plot4.png")
  
  
  par(mfrow = c(2,2))
  
  # Top left graph
  plot(
    dataset$Time, 
    dataset$Global_active_power,
    ylab = "Global Active Power",
    xlab = "",
    type = "l"
  )
  
  
  # Top right
  
  plot(
    dataset$Time, 
    dataset$Voltage,
    ylab = "Voltage",
    xlab = "datetime",
    type = "l"
  )
  
  # Bottome left
  plot(
    dataset$Time, 
    dataset$Sub_metering_1,
    ylab = "Energy sub metering",
    xlab = "",
    type = "l"
  )
  
  lines(dataset$Time, dataset$Sub_metering_2, col="red")
  lines(dataset$Time, dataset$Sub_metering_3, col="blue")
  
  
  legend(
    "topright",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    col = c("black", "red", "blue"),
    lty = 1
  )
  
  
  # Bottom right
  
  plot(
    dataset$Time, 
    dataset$Global_reactive_power,
    ylab = "Global_reactive_power",
    xlab = "datetime",
    type = "l"
  )
  
  
  # End
  dev.off()
  
}