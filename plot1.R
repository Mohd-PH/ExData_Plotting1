makeplot1 <- function(dataset){
  png(filename = "plot1.png")
  
  hist(
    dataset$Global_active_power, 
    col ="red", 
    xlab = "Global Active Power (killowatts)", 
    main = "Global Active Power"
    )
  
  
  dev.off()
  
}