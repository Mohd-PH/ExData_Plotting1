makeplot3 <- function(dataset){
  png(filename = "plot3.png")
  
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
  
  dev.off()
  
}