# load the data
source("loadData.R")

# plot the submetring values to plot3.png in different colors
png("plot3.png")
with(hpc, {
            plot(DateTime, Sub_metering_1, 
                 col="black", 
                 type="l", 
                 ylab="energy sub metering", 
                 xlab="")
            lines(DateTime, Sub_metering_2, 
                  col="red", 
                  type="l")
            lines(DateTime, Sub_metering_3, 
                  col="blue", 
                  type="l")
            legend("topright", 
                   lwd=2,
                   col=c("black", "red", "blue"), 
                   legend=c("Sub_metering_1", 
                            "Sub_metering_2", 
                            "Sub_metering_3"))
            dev.off()
          }
)