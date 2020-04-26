makeplot2 <- function(dataset){
  png(filename = "plot2.png")
  
  plot(
    dataset$Time, 
    dataset$Global_active_power,
    ylab = "Global Active Power (killowatts)",
    xlab = "",
    type = "l"
  )
  
  
  dev.off()
  
}