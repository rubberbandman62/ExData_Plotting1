# load the data
source("loadData.R")

# plot the submetring values to plot3.png in different colors
png("plot4.png")

par(mfrow=c(2, 2))

with(hpc, {
    plot(DateTime, Global_active_power, 
         type="l", 
         ylab="Global Active Power", 
         xlab="")
    
    plot(DateTime, Voltage, 
         type="l", 
         ylab="Voltage", 
         xlab="datetime")
    
    plot(DateTime, Sub_metering_1, 
         col="black", 
         type="l", 
         ylab="Energy sub metering", 
         xlab="")
    lines(DateTime, Sub_metering_2, 
          col="red", 
          type="l")
    lines(DateTime, Sub_metering_3, 
          col="blue", 
          type="l")
    legend("topright", 
           lwd=1,
           bty="n",
           col=c("black", "red", "blue"), 
           legend=c("Sub_metering_1", 
                    "Sub_metering_2", 
                    "Sub_metering_3"))
    
    plot(DateTime, Global_reactive_power, 
         type="l", 
         xlab="datetime")
    
    dev.off()
}
)